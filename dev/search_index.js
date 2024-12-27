var documenterSearchIndex = {"docs":
[{"location":"api/#API","page":"API","title":"API","text":"","category":"section"},{"location":"api/","page":"API","title":"API","text":"Modules = [FlightPhysics]","category":"page"},{"location":"api/#FlightPhysics.ISAState","page":"API","title":"FlightPhysics.ISAState","text":"ISAState{Scalar<:AbstractFloat}\n\nA structure representing Earth's atmospheric state according to the International Standard Atmosphere (ISA) model.\n\nFields\n\ntemperature: Air temperature [K].\npressure: Air pressure [Pa].\ndensity: Air density [kg/m^3].\nspeed_of_sound: Speed of sound in the air [m/s].\ndynamic_viscosity: Dynamic viscosity of the air [Pa s].\n\nExamples\n\njulia> using FlightPhysics; state = FlightPhysics.ISAState{Float64}(288.15, 101325.0, 1.225, 340.294, 1.81206e-5)\nFlightPhysics.ISAState{Float64}(288.15, 101325.0, 1.225, 340.294, 1.81206e-5)\n\n\n\n\n\n","category":"type"},{"location":"api/#FlightPhysics.geometric_to_geopotential_altitude-Tuple{Scalar} where Scalar<:AbstractFloat","page":"API","title":"FlightPhysics.geometric_to_geopotential_altitude","text":"geometric_to_geopotential_altitude(geometric_altitude::Scalar) where {Scalar<:AbstractFloat}\n\nConvert a geometric altitude to a geopotential altitude.\n\nArguments\n\ngeometric_altitude: The geometric altitude in meters.\n\nReturns\n\nThe corresponding geopotential altitude in meters.\n\nExamples\n\njulia> using FlightPhysics; geometric_to_geopotential_altitude(86000.0)\n84854.57642868205\n\n\n\n\n\n","category":"method"},{"location":"api/#FlightPhysics.geopotential_to_geometric_altitude-Tuple{Scalar} where Scalar<:AbstractFloat","page":"API","title":"FlightPhysics.geopotential_to_geometric_altitude","text":"geopotential_to_geometric_altitude(geopotential_altitude::Scalar) where {Scalar<:AbstractFloat}\n\nConvert a geopotential altitude to a geometric altitude.\n\nArguments\n\ngeopotential_altitude: The geopotential altitude in meters.\n\nReturns\n\nThe corresponding geometric altitude in meters.\n\nExamples\n\njulia> using FlightPhysics; geopotential_to_geometric_altitude(86000.0)\n87176.77008750994\n\n\n\n\n\n","category":"method"},{"location":"api/#FlightPhysics.gravitational_acceleration-Tuple{Scalar} where Scalar<:AbstractFloat","page":"API","title":"FlightPhysics.gravitational_acceleration","text":"gravitational_acceleration(altitude::Scalar) where {Scalar<:AbstractFloat}\n\nCalculate the gravitational acceleration at a given altitude.\n\nArguments\n\naltitude: The altitude above the Earth's surface.\n\nReturns\n\nThe gravitational acceleration at the specified altitude.\n\nExamples\n\njulia> using FlightPhysics; gravitational_acceleration(0.0)\n9.80665\n\n\n\n\n\n","category":"method"},{"location":"api/#FlightPhysics.isa_state-Tuple{Scalar} where Scalar<:AbstractFloat","page":"API","title":"FlightPhysics.isa_state","text":"isa_state(altitude::Scalar; temperature_offset::Scalar=0.0) -> ISAState\n\nCalculate the atmospheric state at a given altitude according to the International Standard Atmosphere (ISA) model.\n\nArguments\n\naltitude: The altitude in meters for which the ISA state is to be calculated.\ntemperature_offset: An optional temperature offset in Kelvin to be added to the calculated temperature. Default is 0.0.\n\nReturns\n\nISAState: A structure containing the temperature, pressure, and density at the given altitude.\n\nThrows\n\nDomainError: If the altitude is out of the range covered by the ISA model (0 to 86000 meters).\n\nExamples\n\njulia> using FlightPhysics; state = isa_state(10000.0)\nFlightPhysics.ISAState{Float64}(223.14999999999998, 26436.233930953953, 0.4127061186074048, 299.46312836140606, 1.468844333610595e-5)\n\n\n\n\n\n","category":"method"},{"location":"","page":"Home","title":"Home","text":"CurrentModule = FlightPhysics","category":"page"},{"location":"#FlightPhysics","page":"Home","title":"FlightPhysics","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"Documentation for FlightPhysics.","category":"page"},{"location":"","page":"Home","title":"Home","text":"","category":"page"}]
}