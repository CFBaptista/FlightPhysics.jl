using FlightPhysics
using Test
using Aqua
using JET

@testset "FlightPhysics.jl" begin
    @testset "Code quality (Aqua.jl)" begin
        Aqua.test_all(FlightPhysics)
    end
    @testset "Code linting (JET.jl)" begin
        JET.test_package(FlightPhysics; target_defined_modules = true)
    end
    # Write your tests here.
end
