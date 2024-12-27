using Aqua
using Documenter
using FlightPhysics
using JET
using Test
using TestItemRunner

@testset "Coding standards" begin
    @testset "Code quality (Aqua.jl)" begin
        Aqua.test_all(FlightPhysics)
    end

    @testset "Code linting (JET.jl)" begin
        JET.test_package(FlightPhysics; target_defined_modules=true)
    end

    @testset "Documentation (Documenter.jl)" begin
        doctest(FlightPhysics)
    end
end

include("international_standard_atmosphere.jl")
include("gravitational_acceleration.jl")
include("altitude.jl")

@run_package_tests
