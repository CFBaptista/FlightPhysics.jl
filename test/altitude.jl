using TestItemRunner

@testitem "0 meters geopotential altitude to geometric altitude" begin
    # Given

    geopotential_altitude = 0.0
    expected_geometric_altitude = 0.0

    tolerance = 1e-5

    # When

    actual_geometric_altitude = geopotential_to_geometric_altitude(geopotential_altitude)

    # Then

    @test actual_geometric_altitude ≈ expected_geometric_altitude rtol = tolerance
end

@testitem "86000 meters geopotential altitude to geometric altitude" begin
    # Given

    geopotential_altitude = 86000.0
    expected_geometric_altitude = 87176.77008750994

    tolerance = 1e-5

    # When

    actual_geometric_altitude = geopotential_to_geometric_altitude(geopotential_altitude)

    # Then

    @test actual_geometric_altitude ≈ expected_geometric_altitude rtol = tolerance
end
