module FlightPhysics

include("gravitational_acceleration.jl")
export gravitational_acceleration

include("international_standard_atmosphere.jl")
export isa_state
public ISAState

end
