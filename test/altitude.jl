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

@testitem "Half Earth's mean radius geopotential altitude to geometric altitude" begin
    # Given

    geopotential_altitude = 3185500.0
    expected_geometric_altitude = 6371000.0

    tolerance = 1e-5

    # When

    actual_geometric_altitude = geopotential_to_geometric_altitude(geopotential_altitude)

    # Then

    @test actual_geometric_altitude ≈ expected_geometric_altitude rtol = tolerance
end

@testitem "0 meters geometric altitude to geopotential altitude" begin
    # Given

    geometric_altitude = 0.0
    expected_geopotential_altitude = 0.0

    tolerance = 1e-5

    # When

    actual_geopotential_altitude = geometric_to_geopotential_altitude(geometric_altitude)

    # Then

    @test actual_geopotential_altitude ≈ expected_geopotential_altitude rtol = tolerance
end

@testitem "86000 meters geometric altitude to geopotential altitude" begin
    # Given

    geometric_altitude = 86000.0
    expected_geopotential_altitude = 84854.57642868205

    tolerance = 1e-5

    # When

    actual_geopotential_altitude = geometric_to_geopotential_altitude(geometric_altitude)

    # Then

    @test actual_geopotential_altitude ≈ expected_geopotential_altitude rtol = tolerance
end

@testitem "Half Earth's mean radius geometric altitude to geopotential altitude" begin
    # Given

    geometric_altitude = 3185500.0
    expected_geopotential_altitude = 2123666.667

    tolerance =  1e-5

    # When

    actual_geopotential_altitude = geometric_to_geopotential_altitude(geometric_altitude)

    # Then

    @test actual_geopotential_altitude ≈ expected_geopotential_altitude rtol = tolerance
end
