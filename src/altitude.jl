"""
    geometric_to_geopotential_altitude(geometric_altitude::Scalar) where {Scalar<:AbstractFloat}

Convert a geometric altitude to a geopotential altitude.

# Arguments
- `geometric_altitude`: The geometric altitude in meters.

# Returns
- The corresponding geopotential altitude in meters.

# Examples
```jldoctest
julia> using FlightPhysics; geometric_to_geopotential_altitude(86000.0)
84854.57642868205
```
"""
function geometric_to_geopotential_altitude(geometric_altitude::Scalar) where {Scalar<:AbstractFloat}
    earth_mean_radius = Scalar(EARTH.mean_radius)
    geopotential_altitude = earth_mean_radius * geometric_altitude / (earth_mean_radius + geometric_altitude)
    return geopotential_altitude
end

"""
    geopotential_to_geometric_altitude(geopotential_altitude::Scalar) where {Scalar<:AbstractFloat}

Convert a geopotential altitude to a geometric altitude.

# Arguments
- `geopotential_altitude`: The geopotential altitude in meters.

# Returns
- The corresponding geometric altitude in meters.

# Examples
```jldoctest
julia> using FlightPhysics; geopotential_to_geometric_altitude(86000.0)
87176.77008750994
```
"""
function geopotential_to_geometric_altitude(geopotential_altitude::Scalar) where {Scalar<:AbstractFloat}
    earth_mean_radius = Scalar(EARTH.mean_radius)
    geometric_altitude = earth_mean_radius * geopotential_altitude / (earth_mean_radius - geopotential_altitude)
    return geometric_altitude
end
