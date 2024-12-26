const AIR = (
    gas_constant=8.3144621,
    specific_gas_constant=287.0528,
    specific_heat_ratio=1.4,
    sutherland_constant=120.0,
)

const EARTH = (mean_radius=6371000.0,)

const MEAN_SEA_LEVEL = (
    density=1.225,
    dynamic_viscosity=1.81206e-5,
    gravity=9.80665,
    pressure=101325.0,
    temperature=288.15,
)

"""
    ISAState{Scalar<:AbstractFloat}

A structure representing Earth's atmospheric state according to the International Standard Atmosphere (ISA) model.

# Fields
- `temperature`: Air temperature [K].
- `pressure`: Air pressure [Pa].
- `density`: Air density [kg/m^3].
- `speed_of_sound`: Speed of sound in the air [m/s].
- `dynamic_viscosity`: Dynamic viscosity of the air [Pa s].

# Examples
```jldoctest
julia> using FlightPhysics; state = FlightPhysics.ISAState{Float64}(288.15, 101325.0, 1.225, 340.294, 1.81206e-5)
FlightPhysics.ISAState{Float64}(288.15, 101325.0, 1.225, 340.294, 1.81206e-5)
```
"""
struct ISAState{Scalar<:AbstractFloat}
    temperature::Scalar
    pressure::Scalar
    density::Scalar
    speed_of_sound::Scalar
    dynamic_viscosity::Scalar
end

struct ISALayerBaseState{Scalar<:AbstractFloat}
    altitude::Scalar
    lapse_rate::Scalar
    temperature::Scalar
    pressure::Scalar
    density::Scalar
end

function isa_layer_base_state(altitude::AbstractFloat)
    scalar = typeof(altitude)

    if 0 <= altitude < 11000
        return ISALayerBaseState{scalar}(0.0, -0.0065, 288.15, 101325.0, 1.225)
    elseif 11000 <= altitude < 20000
        return ISALayerBaseState{scalar}(11000.0, 0.0, 216.65, 22632.1, 0.363918)
    elseif 20000 <= altitude < 32000
        return ISALayerBaseState{scalar}(20000.0, 0.001, 216.65, 5474.89, 0.0880349)
    elseif 32000 <= altitude < 47000
        return ISALayerBaseState{scalar}(32000.0, 0.0028, 228.65, 868.019, 0.0132250)
    elseif 47000 <= altitude < 51000
        return ISALayerBaseState{scalar}(47000.0, 0.0, 270.65, 110.906, 0.00142753)
    elseif 51000 <= altitude < 71000
        return ISALayerBaseState{scalar}(51000.0, -0.0028, 270.65, 66.9389, 0.000861606)
    elseif 71000 <= altitude < 86000
        return ISALayerBaseState{scalar}(71000.0, -0.002, 214.65, 3.95642, 0.000064211)
    else
        throw(
            DomainError(
                altitude,
                "altitude out of range. The International Standard Atmosphere model only covers altitudes from 0 to 86000 meters.",
            ),
        )
    end
end

"""
    isa_state(altitude::Scalar; temperature_offset::Scalar=0.0) -> ISAState

Calculate the atmospheric state at a given altitude according to the International Standard Atmosphere (ISA) model.

# Arguments
- `altitude::Scalar`: The altitude in meters for which the ISA state is to be calculated.
- `temperature_offset::Scalar`: An optional temperature offset in Kelvin to be added to the calculated temperature. Default is 0.0.

# Returns
- `ISAState`: A structure containing the temperature, pressure, and density at the given altitude.

# Throws
- `DomainError`: If the altitude is out of the range covered by the ISA model (0 to 86000 meters).

# Examples
```jldoctest
julia> using FlightPhysics; state = isa_state(10000.0)
FlightPhysics.ISAState{Float64}(223.14999999999998, 26436.233930953953, 0.4127061186074048, 299.46312836140606, 1.468844333610595e-5)
```
"""
function isa_state(
    altitude::Scalar; temperature_offset::Scalar=0.0
) where {Scalar<:AbstractFloat}
    layer_base_state = isa_layer_base_state(altitude)
    altitude_state = isa_altitude_state(altitude, temperature_offset, layer_base_state)
    return altitude_state
end

function isa_altitude_state(
    altitude::Scalar, temperature_offset::Scalar, layer_base::ISALayerBaseState{Scalar}
) where {Scalar<:AbstractFloat}
    gravity = Scalar(MEAN_SEA_LEVEL.gravity)
    specific_gas_constant = Scalar(AIR.specific_gas_constant)
    specific_heat_ratio = Scalar(AIR.specific_heat_ratio)
    sutherland_constant = Scalar(AIR.sutherland_constant)
    reference_temperature = Scalar(MEAN_SEA_LEVEL.temperature)
    reference_dynamic_viscosity = Scalar(MEAN_SEA_LEVEL.dynamic_viscosity)

    temperature = isa_temperature(altitude, layer_base)
    offsetted_temperature = temperature + temperature_offset
    pressure = isa_pressure(
        altitude, temperature, layer_base, gravity, specific_gas_constant
    )
    density = isa_density(offsetted_temperature, pressure, specific_gas_constant)
    speed_of_sound = isa_speed_of_sound(
        offsetted_temperature, specific_heat_ratio, specific_gas_constant
    )
    dynamic_viscosity = isa_dynamic_viscosity(
        offsetted_temperature,
        sutherland_constant,
        reference_temperature,
        reference_dynamic_viscosity,
    )

    return ISAState(
        offsetted_temperature, pressure, density, speed_of_sound, dynamic_viscosity
    )
end

function isa_temperature(
    altitude::Scalar, layer_base::ISALayerBaseState{Scalar}
) where {Scalar<:AbstractFloat}
    return layer_base.temperature + layer_base.lapse_rate * (altitude - layer_base.altitude)
end

function isa_pressure(
    altitude::Scalar,
    temperature::Scalar,
    layer_base::ISALayerBaseState{Scalar},
    gravity::Scalar,
    specific_gas_constant::Scalar,
) where {Scalar<:AbstractFloat}
    if layer_base.lapse_rate == 0.0
        pressure =
            layer_base.pressure * exp(
                -gravity * (altitude - layer_base.altitude) /
                (specific_gas_constant * layer_base.temperature),
            )
    else
        pressure =
            layer_base.pressure *
            (
                temperature / layer_base.temperature
            )^(-gravity / (specific_gas_constant * layer_base.lapse_rate))
    end

    return pressure
end

function isa_density(
    temperature::Scalar, pressure::Scalar, specific_gas_constant::Scalar
) where {Scalar<:AbstractFloat}
    return pressure / (specific_gas_constant * temperature)
end

function isa_speed_of_sound(
    temperature::Scalar, specific_heat_ratio::Scalar, specific_gas_constant::Scalar
) where {Scalar<:AbstractFloat}
    return sqrt(specific_heat_ratio * specific_gas_constant * temperature)
end

function isa_dynamic_viscosity(
    temperature::Scalar,
    sutherland_constant::Scalar,
    reference_temperature::Scalar,
    reference_dynamic_viscosity::Scalar,
) where {Scalar<:AbstractFloat}
    return reference_dynamic_viscosity *
           (temperature / reference_temperature)^Scalar(1.5) *
           (
               (reference_temperature + sutherland_constant) /
               (temperature + sutherland_constant)
           )
end
