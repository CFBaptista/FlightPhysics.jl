using TestItemRunner

@testitem "Troposphere lapse rate" begin
    # Given

    heigth = 0.0
    expected_lapse_rate = -0.0065

    # When

    actual_lapse_rate = isa_lapse_rate(heigth)

    # Then

    @test actual_lapse_rate ≈ expected_lapse_rate
end

@testitem "Tropopause lapse rate" begin
    # Given

    heigth = 11000.0
    expected_lapse_rate = 0.0

    # When

    actual_lapse_rate = isa_lapse_rate(heigth)

    # Then

    @test actual_lapse_rate ≈ expected_lapse_rate
end

@testitem "Stratosphere lapse rate 1" begin
    # Given

    heigth = 20000.0
    expected_lapse_rate = 0.001

    # When

    actual_lapse_rate = isa_lapse_rate(heigth)

    # Then

    @test actual_lapse_rate ≈ expected_lapse_rate
end

@testitem "Stratosphere lapse rate 2" begin
    # Given

    heigth = 32000.0
    expected_lapse_rate = 0.0028

    # When

    actual_lapse_rate = isa_lapse_rate(heigth)

    # Then

    @test actual_lapse_rate ≈ expected_lapse_rate
end

@testitem "Stratopause lapse rate" begin
    # Given

    heigth = 47000.0
    expected_lapse_rate = 0.0

    # When

    actual_lapse_rate = isa_lapse_rate(heigth)

    # Then

    @test actual_lapse_rate ≈ expected_lapse_rate
end

@testitem "Mesosphere lapse rate 1" begin
    # Given

    heigth = 51000.0
    expected_lapse_rate = -0.0028

    # When

    actual_lapse_rate = isa_lapse_rate(heigth)

    # Then

    @test actual_lapse_rate ≈ expected_lapse_rate
end

@testitem "Mesosphere lapse rate 2" begin
    # Given

    heigth = 71000.0
    expected_lapse_rate = -0.002

    # When

    actual_lapse_rate = isa_lapse_rate(heigth)

    # Then

    @test actual_lapse_rate ≈ expected_lapse_rate
end

@testitem "Mesopause lapse rate" begin
    # Given

    heigth = 86000.0
    expected_lapse_rate = 0.0

    # When

    actual_lapse_rate = isa_lapse_rate(heigth)

    # Then

    @test actual_lapse_rate ≈ expected_lapse_rate
end
