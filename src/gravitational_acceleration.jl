"""
    gravitational_acceleration(altitude::Scalar) where {Scalar<:AbstractFloat}

Calculate the gravitational acceleration at a given altitude.

# Arguments
- `altitude`: The altitude above the Earth's surface.

# Returns
- The gravitational acceleration at the specified altitude.

# Examples
```jldoctest
julia> using FlightPhysics; gravitational_acceleration(0.0)
9.80665
```
"""
function gravitational_acceleration(altitude::Scalar) where {Scalar<:AbstractFloat}
    standard_gravity = Scalar(MEAN_SEA_LEVEL.gravity)
    earth_mean_radius = Scalar(EARTH.mean_radius)

    gravity = standard_gravity * (earth_mean_radius / (earth_mean_radius + altitude))^2

    return gravity
end
