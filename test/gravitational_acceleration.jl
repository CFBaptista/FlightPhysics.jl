using TestItemRunner

@testitem "Gravitational acceleration at sea level" begin
    # Given

    altitude = 0.0
    expected_gravitational_acceleration = 9.80665

    tolerance = 1e-5

    # When

    actual_gravitational_acceleration = gravitational_acceleration(altitude)

    # Then

    @test actual_gravitational_acceleration ≈ expected_gravitational_acceleration rtol =
        tolerance
end

@testitem "Gravitational acceleration at altitude = Earth's mean radius" begin
    # Given

    altitude = 6371000.0
    expected_gravitational_acceleration = 0.25 * gravitational_acceleration(0.0)

    tolerance = 1e-5

    # When

    actual_gravitational_acceleration = gravitational_acceleration(altitude)

    # Then

    @test actual_gravitational_acceleration ≈ expected_gravitational_acceleration rtol =
        tolerance
end
