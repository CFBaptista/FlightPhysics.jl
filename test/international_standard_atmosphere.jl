using TestItemRunner

@testitem "ISA state at 0 meters altitude (Troposphere)" begin
    # Given

    altitude = 0.0

    expected_temperature = 288.15
    expected_pressure = 101325.0
    expected_density = 1.225
    expected_speed_of_sound = 340.294
    expected_dynamic_viscosity = 1.81206e-5

    tolerance = 1e-5

    # When

    state = isa_state(altitude)
    actual_temperature = state.temperature
    actual_pressure = state.pressure
    actual_density = state.density
    actual_speed_of_sound = state.speed_of_sound
    actual_dynamic_viscosity = state.dynamic_viscosity

    # Then

    @test actual_temperature ≈ expected_temperature rtol = tolerance
    @test actual_pressure ≈ expected_pressure rtol = tolerance
    @test actual_density ≈ expected_density rtol = tolerance
    @test actual_speed_of_sound ≈ expected_speed_of_sound rtol = tolerance
    @test actual_dynamic_viscosity ≈ expected_dynamic_viscosity rtol = tolerance
end

@testitem "ISA state at 5500 meters altitude (Troposphere)" begin
    # Given

    altitude = 5500.0

    expected_temperature = 252.4
    expected_pressure = 50506.8
    expected_density = 0.697106
    expected_speed_of_sound = 318.486
    expected_dynamic_viscosity = 1.62813e-5

    tolerance = 1e-5

    # When

    state = isa_state(altitude)
    actual_temperature = state.temperature
    actual_pressure = state.pressure
    actual_density = state.density
    actual_speed_of_sound = state.speed_of_sound
    actual_dynamic_viscosity = state.dynamic_viscosity

    # Then

    @test actual_temperature ≈ expected_temperature rtol = tolerance
    @test actual_pressure ≈ expected_pressure rtol = tolerance
    @test actual_density ≈ expected_density rtol = tolerance
    @test actual_speed_of_sound ≈ expected_speed_of_sound rtol = tolerance
    @test actual_dynamic_viscosity ≈ expected_dynamic_viscosity rtol = tolerance
end

@testitem "ISA state at 11000 meters altitude (Tropopause)" begin
    # Given

    altitude = 11000.0

    expected_temperature = 216.65
    expected_pressure = 22632.1
    expected_density = 0.363918
    expected_speed_of_sound = 295.07
    expected_dynamic_viscosity = 1.43226e-5

    tolerance = 1e-5

    # When

    state = isa_state(altitude)
    actual_temperature = state.temperature
    actual_pressure = state.pressure
    actual_density = state.density
    actual_speed_of_sound = state.speed_of_sound
    actual_dynamic_viscosity = state.dynamic_viscosity

    # Then

    @test actual_temperature ≈ expected_temperature rtol = tolerance
    @test actual_pressure ≈ expected_pressure rtol = tolerance
    @test actual_density ≈ expected_density rtol = tolerance
    @test actual_speed_of_sound ≈ expected_speed_of_sound rtol = tolerance
    @test actual_dynamic_viscosity ≈ expected_dynamic_viscosity rtol = tolerance
end

@testitem "ISA state at 15500 meters altitude (Tropopause)" begin
    # Given

    altitude = 15500.0

    expected_temperature = 216.65
    expected_pressure = 11131.4
    expected_density = 0.17899
    expected_speed_of_sound = 295.07
    expected_dynamic_viscosity = 1.43226e-5

    tolerance = 1e-5

    # When

    state = isa_state(altitude)
    actual_temperature = state.temperature
    actual_pressure = state.pressure
    actual_density = state.density
    actual_speed_of_sound = state.speed_of_sound
    actual_dynamic_viscosity = state.dynamic_viscosity

    # Then

    @test actual_temperature ≈ expected_temperature rtol = tolerance
    @test actual_pressure ≈ expected_pressure rtol = tolerance
    @test actual_density ≈ expected_density rtol = tolerance
    @test actual_speed_of_sound ≈ expected_speed_of_sound rtol = tolerance
    @test actual_dynamic_viscosity ≈ expected_dynamic_viscosity rtol = tolerance
end

@testitem "ISA state at 20000 meters altitude (Stratosphere lower)" begin
    # Given

    altitude = 20000.0

    expected_temperature = 216.65
    expected_pressure = 5474.89
    expected_density = 0.0880349
    expected_speed_of_sound = 295.07
    expected_dynamic_viscosity = 1.43226e-5

    tolerance = 1e-5

    # When

    state = isa_state(altitude)
    actual_temperature = state.temperature
    actual_pressure = state.pressure
    actual_density = state.density
    actual_speed_of_sound = state.speed_of_sound
    actual_dynamic_viscosity = state.dynamic_viscosity

    # Then

    @test actual_temperature ≈ expected_temperature rtol = tolerance
    @test actual_pressure ≈ expected_pressure rtol = tolerance
    @test actual_density ≈ expected_density rtol = tolerance
    @test actual_speed_of_sound ≈ expected_speed_of_sound rtol = tolerance
    @test actual_dynamic_viscosity ≈ expected_dynamic_viscosity rtol = tolerance
end

@testitem "ISA state at 26000 meters altitude (Stratosphere lower)" begin
    # Given

    altitude = 26000.0

    expected_temperature = 222.65
    expected_pressure = 2153.09
    expected_density = 0.0336882
    expected_speed_of_sound = 299.128
    expected_dynamic_viscosity = 1.46604e-5

    tolerance = 1e-5

    # When

    state = isa_state(altitude)
    actual_temperature = state.temperature
    actual_pressure = state.pressure
    actual_density = state.density
    actual_speed_of_sound = state.speed_of_sound
    actual_dynamic_viscosity = state.dynamic_viscosity

    # Then

    @test actual_temperature ≈ expected_temperature rtol = tolerance
    @test actual_pressure ≈ expected_pressure rtol = tolerance
    @test actual_density ≈ expected_density rtol = tolerance
    @test actual_speed_of_sound ≈ expected_speed_of_sound rtol = tolerance
    @test actual_dynamic_viscosity ≈ expected_dynamic_viscosity rtol = tolerance
end

@testitem "ISA state at 32000 meters altitude (Stratosphere upper)" begin
    # Given

    altitude = 32000.0

    expected_temperature = 228.65
    expected_pressure = 868.019
    expected_density = 0.0132250
    expected_speed_of_sound = 303.131
    expected_dynamic_viscosity = 1.49945e-5

    tolerance = 1e-5

    # When

    state = isa_state(altitude)
    actual_temperature = state.temperature
    actual_pressure = state.pressure
    actual_density = state.density
    actual_speed_of_sound = state.speed_of_sound
    actual_dynamic_viscosity = state.dynamic_viscosity

    # Then

    @test actual_temperature ≈ expected_temperature rtol = tolerance
    @test actual_pressure ≈ expected_pressure rtol = tolerance
    @test actual_density ≈ expected_density rtol = tolerance
    @test actual_speed_of_sound ≈ expected_speed_of_sound rtol = tolerance
    @test actual_dynamic_viscosity ≈ expected_dynamic_viscosity rtol = tolerance
end

@testitem "ISA state at 39500 meters altitude (Stratosphere upper)" begin
    # Given

    altitude = 39500.0

    expected_temperature = 249.65
    expected_pressure = 297.118
    expected_density = 0.00414606
    expected_speed_of_sound = 316.746
    expected_dynamic_viscosity = 1.6135e-5

    tolerance = 1e-5

    # When

    state = isa_state(altitude)
    actual_temperature = state.temperature
    actual_pressure = state.pressure
    actual_density = state.density
    actual_speed_of_sound = state.speed_of_sound
    actual_dynamic_viscosity = state.dynamic_viscosity

    # Then

    @test actual_temperature ≈ expected_temperature rtol = tolerance
    @test actual_pressure ≈ expected_pressure rtol = tolerance
    @test actual_density ≈ expected_density rtol = tolerance
    @test actual_speed_of_sound ≈ expected_speed_of_sound rtol = tolerance
    @test actual_dynamic_viscosity ≈ expected_dynamic_viscosity rtol = tolerance
end

@testitem "ISA state at 47000 meters altitude (Stratopause)" begin
    # Given

    altitude = 47000.0

    expected_temperature = 270.65
    expected_pressure = 110.906
    expected_density = 0.00142753
    expected_speed_of_sound = 329.799
    expected_dynamic_viscosity = 1.72341e-5

    tolerance = 1e-5

    # When

    state = isa_state(altitude)
    actual_temperature = state.temperature
    actual_pressure = state.pressure
    actual_density = state.density
    actual_speed_of_sound = state.speed_of_sound
    actual_dynamic_viscosity = state.dynamic_viscosity

    # Then

    @test actual_temperature ≈ expected_temperature rtol = tolerance
    @test actual_pressure ≈ expected_pressure rtol = tolerance
    @test actual_density ≈ expected_density rtol = tolerance
    @test actual_speed_of_sound ≈ expected_speed_of_sound rtol = tolerance
    @test actual_dynamic_viscosity ≈ expected_dynamic_viscosity rtol = tolerance
end

@testitem "ISA state at 49000 meters altitude (Stratopause)" begin
    # Given

    altitude = 49000.0

    expected_temperature = 270.65
    expected_pressure = 86.1623
    expected_density = 0.00110904
    expected_speed_of_sound = 329.799
    expected_dynamic_viscosity = 1.72341e-5

    tolerance = 1e-5

    # When

    state = isa_state(altitude)
    actual_temperature = state.temperature
    actual_pressure = state.pressure
    actual_density = state.density
    actual_speed_of_sound = state.speed_of_sound
    actual_dynamic_viscosity = state.dynamic_viscosity

    # Then

    @test actual_temperature ≈ expected_temperature rtol = tolerance
    @test actual_pressure ≈ expected_pressure rtol = tolerance
    @test actual_density ≈ expected_density rtol = tolerance
    @test actual_speed_of_sound ≈ expected_speed_of_sound rtol = tolerance
    @test actual_dynamic_viscosity ≈ expected_dynamic_viscosity rtol = tolerance
end

@testitem "ISA state at 51000 meters altitude (Mesosphere lower)" begin
    # Given

    altitude = 51000.0

    expected_temperature = 270.65
    expected_pressure = 66.9389
    expected_density = 0.000861606
    expected_speed_of_sound = 329.799
    expected_dynamic_viscosity = 1.72341e-5

    tolerance = 1e-5

    # When

    state = isa_state(altitude)
    actual_temperature = state.temperature
    actual_pressure = state.pressure
    actual_density = state.density
    actual_speed_of_sound = state.speed_of_sound
    actual_dynamic_viscosity = state.dynamic_viscosity

    # Then

    @test actual_temperature ≈ expected_temperature rtol = tolerance
    @test actual_pressure ≈ expected_pressure rtol = tolerance
    @test actual_density ≈ expected_density rtol = tolerance
    @test actual_speed_of_sound ≈ expected_speed_of_sound rtol = tolerance
    @test actual_dynamic_viscosity ≈ expected_dynamic_viscosity rtol = tolerance
end

@testitem "ISA state at 61000 meters altitude (Mesosphere lower)" begin
    # Given

    altitude = 61000.0

    expected_temperature = 242.65
    expected_pressure = 17.6606
    expected_density = 0.000253550
    expected_speed_of_sound = 312.274
    expected_dynamic_viscosity = 1.57596e-5

    tolerance = 1e-5

    # When

    state = isa_state(altitude)
    actual_temperature = state.temperature
    actual_pressure = state.pressure
    actual_density = state.density
    actual_speed_of_sound = state.speed_of_sound
    actual_dynamic_viscosity = state.dynamic_viscosity

    # Then

    @test actual_temperature ≈ expected_temperature rtol = tolerance
    @test actual_pressure ≈ expected_pressure rtol = tolerance
    @test actual_density ≈ expected_density rtol = tolerance
    @test actual_speed_of_sound ≈ expected_speed_of_sound rtol = tolerance
    @test actual_dynamic_viscosity ≈ expected_dynamic_viscosity rtol = tolerance
end

@testitem "ISA state at 71000 meters altitude (Mesosphere upper)" begin
    # Given

    altitude = 71000.0

    expected_temperature = 214.65
    expected_pressure = 3.95642
    expected_density = 0.000064211
    expected_speed_of_sound = 293.704
    expected_dynamic_viscosity = 1.42092e-5

    tolerance = 1e-5

    # When

    state = isa_state(altitude)
    actual_temperature = state.temperature
    actual_pressure = state.pressure
    actual_density = state.density
    actual_speed_of_sound = state.speed_of_sound
    actual_dynamic_viscosity = state.dynamic_viscosity

    # Then

    @test actual_temperature ≈ expected_temperature rtol = tolerance
    @test actual_pressure ≈ expected_pressure rtol = tolerance
    @test actual_density ≈ expected_density rtol = tolerance
    @test actual_speed_of_sound ≈ expected_speed_of_sound rtol = tolerance
    @test actual_dynamic_viscosity ≈ expected_dynamic_viscosity rtol = tolerance
end

@testitem "ISA state at 78500 meters altitude (Mesosphere upper)" begin
    # Given

    altitude = 78500.0

    expected_temperature = 199.65
    expected_pressure = 1.14786
    expected_density = 0.0000200289
    expected_speed_of_sound = 283.256
    expected_dynamic_viscosity = 1.33442e-5

    tolerance = 1e-5

    # When

    state = isa_state(altitude)
    actual_temperature = state.temperature
    actual_pressure = state.pressure
    actual_density = state.density
    actual_speed_of_sound = state.speed_of_sound
    actual_dynamic_viscosity = state.dynamic_viscosity

    # Then

    @test actual_temperature ≈ expected_temperature rtol = tolerance
    @test actual_pressure ≈ expected_pressure rtol = tolerance
    @test actual_density ≈ expected_density rtol = tolerance
    @test actual_speed_of_sound ≈ expected_speed_of_sound rtol = tolerance
    @test actual_dynamic_viscosity ≈ expected_dynamic_viscosity rtol = tolerance
end

@testitem "ISA state in a non-isothermal layer with a 25 degrees temperature offset" begin
    # Given

    altitude = 35000.0
    temperature_offset = 25.0

    expected_temperature = 262.05
    expected_pressure = 558.924
    expected_density = 0.0074303
    expected_speed_of_sound = 324.517
    expected_dynamic_viscosity = 1.67888e-5

    tolerance = 1e-5

    # When

    state = isa_state(altitude; temperature_offset=temperature_offset)
    actual_temperature = state.temperature
    actual_pressure = state.pressure
    actual_density = state.density
    actual_speed_of_sound = state.speed_of_sound
    actual_dynamic_viscosity = state.dynamic_viscosity

    # Then

    @test actual_temperature ≈ expected_temperature rtol = tolerance
    @test actual_pressure ≈ expected_pressure rtol = tolerance
    @test actual_density ≈ expected_density rtol = tolerance
    @test actual_speed_of_sound ≈ expected_speed_of_sound rtol = tolerance
    @test actual_dynamic_viscosity ≈ expected_dynamic_viscosity rtol = tolerance
end

@testitem "ISA state in an isothermal layer with a 25 degrees temperature offset" begin
    # Given

    altitude = 50000.0
    temperature_offset = 25.0

    expected_temperature = 295.65
    expected_pressure = 75.9448
    expected_density = 0.000894866
    expected_speed_of_sound = 344.694
    expected_dynamic_viscosity = 1.84928e-5

    tolerance = 1e-5

    # When

    state = isa_state(altitude; temperature_offset=temperature_offset)
    actual_temperature = state.temperature
    actual_pressure = state.pressure
    actual_density = state.density
    actual_speed_of_sound = state.speed_of_sound
    actual_dynamic_viscosity = state.dynamic_viscosity

    # Then

    @test actual_temperature ≈ expected_temperature rtol = tolerance
    @test actual_pressure ≈ expected_pressure rtol = tolerance
    @test actual_density ≈ expected_density rtol = tolerance
    @test actual_speed_of_sound ≈ expected_speed_of_sound rtol = tolerance
    @test actual_dynamic_viscosity ≈ expected_dynamic_viscosity rtol = tolerance
end
