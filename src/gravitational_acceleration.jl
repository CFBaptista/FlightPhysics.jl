function gravitational_acceleration(altitude::Scalar) where {Scalar<:AbstractFloat}
    standard_gravity = Scalar(MEAN_SEA_LEVEL.gravity)
    earth_mean_radius = Scalar(EARTH.mean_radius)

    gravity = standard_gravity * (earth_mean_radius / (earth_mean_radius + altitude))^2

    return gravity
end
