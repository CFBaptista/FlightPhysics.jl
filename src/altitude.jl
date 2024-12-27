function geopotential_to_geometric_altitude(geopotential_altitude::Scalar) where {Scalar<:AbstractFloat}
    earth_mean_radius = Scalar(EARTH.mean_radius)
    geometric_altitude = earth_mean_radius * geopotential_altitude / (earth_mean_radius - geopotential_altitude)
    return geometric_altitude
end
