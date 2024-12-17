const AIR = (
    gas_constant = 8.3144621,
    specific_gas_constant = 287.0528
)

const MEAN_SEA_LEVEL = (
    density = 1.225,
    gravity = 9.80665,
    pressure = 101325.0,
    temperature = 288.15
)

struct ISAState{Scalar<:AbstractFloat}
    temperature::Scalar
    pressure::Scalar
    density::Scalar
end

struct ISALayerBaseState{Scalar<:AbstractFloat}
    altitude::Scalar
    lapse_rate::Scalar
    temperature::Scalar
    pressure::Scalar
    density::Scalar
end

function isa_layer_base_state(height::AbstractFloat)
    scalar = typeof(height)

    if 0 <= height < 11000
        return ISALayerBaseState{scalar}(0.0, -0.0065, 288.15, 101325.0, 1.225)
    elseif 11000 <= height < 20000
        return ISALayerBaseState{scalar}(11000.0, 0.0, 216.65, 22632.1, 0.363918)
    elseif 20000 <= height < 32000
        return ISALayerBaseState{scalar}(20000.0, 0.001, 216.65, 5474.89, 0.0880349)
    elseif 32000 <= height < 47000
        return ISALayerBaseState{scalar}(32000.0, 0.0028, 228.65, 868.019, 0.0132250)
    elseif 47000 <= height < 51000
        return ISALayerBaseState{scalar}(47000.0, 0.0, 270.65, 110.906, 0.00142753)
    elseif 51000 <= height < 71000
        return ISALayerBaseState{scalar}(51000.0, -0.0028, 270.65, 66.9389, 0.000861606)
    elseif 71000 <= height < 86000
        return ISALayerBaseState{scalar}(71000.0, -0.002, 214.65, 3.95642, 0.000064211)
    else
        throw(DomainError(height, "Height out of range. The International Standard Atmosphere model only covers heights from 0 to 86000 meters."))
    end
end

function isa_state(height::AbstractFloat)
    base_state = isa_layer_base_state(height)

    if base_state.lapse_rate == 0.0
        temperature, pressure, density = isa_isothermal_state(
            height,
            base_state.altitude,
            base_state.temperature,
            base_state.pressure,
            base_state.density
        )
    else
        temperature, pressure, density = isa_non_isothermal_state(
            height,
            base_state.altitude,
            base_state.lapse_rate,
            base_state.temperature,
            base_state.pressure,
            base_state.density
        )
    end

    return ISAState(temperature, pressure, density)
end

function isa_isothermal_state(
    height::AbstractFloat,
    base_altitude::AbstractFloat,
    base_temperature::AbstractFloat,
    base_pressure::AbstractFloat,
    base_density::AbstractFloat
)

    gravity = typeof(height)(MEAN_SEA_LEVEL.gravity)
    specific_gas_constant = typeof(height)(AIR.specific_gas_constant)

    temperature = base_temperature
    pressure = base_pressure * exp(-gravity * (height - base_altitude) / (specific_gas_constant * base_temperature))
    density = base_density * exp(-gravity * (height - base_altitude) / (specific_gas_constant * base_temperature))

    return temperature, pressure, density
end

function isa_non_isothermal_state(
    height::AbstractFloat,
    base_altitude::AbstractFloat,
    lapse_rate::AbstractFloat,
    base_temperature::AbstractFloat,
    base_pressure::AbstractFloat,
    base_density::AbstractFloat
)

    gravity = typeof(height)(MEAN_SEA_LEVEL.gravity)
    specific_gas_constant = typeof(height)(AIR.specific_gas_constant)

    temperature = base_temperature + lapse_rate * (height - base_altitude)
    pressure = base_pressure * (temperature / base_temperature) ^ (-gravity / (specific_gas_constant * lapse_rate))
    density = base_density * (temperature / base_temperature) ^ (-gravity / (specific_gas_constant * lapse_rate) - 1)

    return temperature, pressure, density
end
