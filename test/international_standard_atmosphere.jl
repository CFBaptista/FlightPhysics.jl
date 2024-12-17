using TestItemRunner

@testitem "ISA state at 0 meters altitude (Troposphere)" begin
    # Given

    height = 0.0

    expected_temperature = 288.15
    expected_pressure = 101325.0
    expected_density = 1.225

    tolerance = 1e-5

    # When

    state = isa_state(height)
    actual_temperature = state.temperature
    actual_pressure = state.pressure
    actual_density = state.density

    # Then

    @test actual_temperature ≈ expected_temperature  rtol=tolerance
    @test actual_pressure ≈ expected_pressure rtol=tolerance
    @test actual_density ≈ expected_density rtol=tolerance
end

@testitem "ISA state at 5500 meters altitude (Troposphere)" begin
    # Given

    height = 5500.0

    expected_temperature = 252.4
    expected_pressure = 50506.8
    expected_density = 0.697106

    tolerance = 1e-5

    # When

    state = isa_state(height)
    actual_temperature = state.temperature
    actual_pressure = state.pressure
    actual_density = state.density

    # Then

    @test actual_temperature ≈ expected_temperature rtol=tolerance
    @test actual_pressure ≈ expected_pressure rtol=tolerance
    @test actual_density ≈ expected_density rtol=tolerance
end

@testitem "ISA state at 11000 meters altitude (Tropopause)" begin
    # Given

    height = 11000.0

    expected_temperature = 216.65
    expected_pressure = 22632.1
    expected_density = 0.363918

    tolerance = 1e-5

    # When

    state = isa_state(height)
    actual_temperature = state.temperature
    actual_pressure = state.pressure
    actual_density = state.density

    # Then

    @test actual_temperature ≈ expected_temperature rtol=tolerance
    @test actual_pressure ≈ expected_pressure rtol=tolerance
    @test actual_density ≈ expected_density rtol=tolerance
end

@testitem "ISA state at 15500 meters altitude (Tropopause)" begin
    # Given

    height = 15500.0

    expected_temperature = 216.65
    expected_pressure = 11131.4
    expected_density = 0.17899

    tolerance = 1e-5

    # When

    state = isa_state(height)
    actual_temperature = state.temperature
    actual_pressure = state.pressure
    actual_density = state.density

    # Then

    @test actual_temperature ≈ expected_temperature rtol=tolerance
    @test actual_pressure ≈ expected_pressure rtol=tolerance
    @test actual_density ≈ expected_density rtol=tolerance
end

@testitem "ISA state at 20000 meters altitude (Stratosphere lower)" begin
    # Given

    height = 20000.0

    expected_temperature = 216.65
    expected_pressure = 5474.89
    expected_density = 0.0880349

    tolerance = 1e-5

    # When

    state = isa_state(height)
    actual_temperature = state.temperature
    actual_pressure = state.pressure
    actual_density = state.density

    # Then

    @test actual_temperature ≈ expected_temperature rtol=tolerance
    @test actual_pressure ≈ expected_pressure rtol=tolerance
    @test actual_density ≈ expected_density rtol=tolerance
end

@testitem "ISA state at 26000 meters altitude (Stratosphere lower)" begin
    # Given

    height = 26000.0

    expected_temperature = 222.65
    expected_pressure = 2153.09
    expected_density = 0.0336882

    tolerance = 1e-5

    # When

    state = isa_state(height)
    actual_temperature = state.temperature
    actual_pressure = state.pressure
    actual_density = state.density

    # Then

    @test actual_temperature ≈ expected_temperature rtol=tolerance
    @test actual_pressure ≈ expected_pressure rtol=tolerance
    @test actual_density ≈ expected_density rtol=tolerance
end

@testitem "ISA state at 32000 meters altitude (Stratosphere upper)" begin
    # Given

    height = 32000.0

    expected_temperature = 228.65
    expected_pressure = 868.019
    expected_density = 0.0132250

    tolerance = 1e-5

    # When

    state = isa_state(height)
    actual_temperature = state.temperature
    actual_pressure = state.pressure
    actual_density = state.density

    # Then

    @test actual_temperature ≈ expected_temperature rtol=tolerance
    @test actual_pressure ≈ expected_pressure rtol=tolerance
    @test actual_density ≈ expected_density rtol=tolerance
end

@testitem "ISA state at 39500 meters altitude (Stratosphere upper)" begin
    # Given

    height = 39500.0

    expected_temperature = 249.65
    expected_pressure = 297.118
    expected_density = 0.00414606

    tolerance = 1e-5

    # When

    state = isa_state(height)
    actual_temperature = state.temperature
    actual_pressure = state.pressure
    actual_density = state.density

    # Then

    @test actual_temperature ≈ expected_temperature rtol=tolerance
    @test actual_pressure ≈ expected_pressure rtol=tolerance
    @test actual_density ≈ expected_density rtol=tolerance
end

@testitem "ISA state at 47000 meters altitude (Stratopause)" begin
    # Given

    height = 47000.0

    expected_temperature = 270.65
    expected_pressure = 110.906
    expected_density = 0.00142753

    tolerance = 1e-5

    # When

    state = isa_state(height)
    actual_temperature = state.temperature
    actual_pressure = state.pressure
    actual_density = state.density

    # Then

    @test actual_temperature ≈ expected_temperature rtol=tolerance
    @test actual_pressure ≈ expected_pressure rtol=tolerance
    @test actual_density ≈ expected_density rtol=tolerance
end

@testitem "ISA state at 49000 meters altitude (Stratopause)" begin
    # Given

    height = 49000.0

    expected_temperature = 270.65
    expected_pressure = 86.1623
    expected_density = 0.00110904

    tolerance = 1e-5

    # When

    state = isa_state(height)
    actual_temperature = state.temperature
    actual_pressure = state.pressure
    actual_density = state.density

    # Then

    @test actual_temperature ≈ expected_temperature rtol=tolerance
    @test actual_pressure ≈ expected_pressure rtol=tolerance
    @test actual_density ≈ expected_density rtol=tolerance
end

@testitem "ISA state at 51000 meters altitude (Mesosphere lower)" begin
    # Given

    height = 51000.0

    expected_temperature = 270.65
    expected_pressure = 66.9389
    expected_density = 0.000861606

    tolerance = 1e-5

    # When

    state = isa_state(height)
    actual_temperature = state.temperature
    actual_pressure = state.pressure
    actual_density = state.density

    # Then

    @test actual_temperature ≈ expected_temperature rtol=tolerance
    @test actual_pressure ≈ expected_pressure rtol=tolerance
    @test actual_density ≈ expected_density rtol=tolerance
end

@testitem "ISA state at 61000 meters altitude (Mesosphere lower)" begin
    # Given

    height = 61000.0

    expected_temperature = 242.65
    expected_pressure = 17.6606
    expected_density = 0.000253550

    tolerance = 1e-5

    # When

    state = isa_state(height)
    actual_temperature = state.temperature
    actual_pressure = state.pressure
    actual_density = state.density

    # Then

    @test actual_temperature ≈ expected_temperature rtol=tolerance
    @test actual_pressure ≈ expected_pressure rtol=tolerance
    @test actual_density ≈ expected_density rtol=tolerance
end

@testitem "ISA state at 71000 meters altitude (Mesosphere upper)" begin
    # Given

    height = 71000.0

    expected_temperature = 214.65
    expected_pressure = 3.95642
    expected_density = 0.000064211

    tolerance = 1e-5

    # When

    state = isa_state(height)
    actual_temperature = state.temperature
    actual_pressure = state.pressure
    actual_density = state.density

    # Then

    @test actual_temperature ≈ expected_temperature rtol=tolerance
    @test actual_pressure ≈ expected_pressure rtol=tolerance
    @test actual_density ≈ expected_density rtol=tolerance
end

@testitem "ISA state at 78500 meters altitude (Mesosphere upper)" begin
    # Given

    height = 78500.0

    expected_temperature = 199.65
    expected_pressure = 1.14786
    expected_density = 0.0000200289

    tolerance = 1e-5

    # When

    state = isa_state(height)
    actual_temperature = state.temperature
    actual_pressure = state.pressure
    actual_density = state.density

    # Then

    @test actual_temperature ≈ expected_temperature rtol=tolerance
    @test actual_pressure ≈ expected_pressure rtol=tolerance
    @test actual_density ≈ expected_density rtol=tolerance
end
