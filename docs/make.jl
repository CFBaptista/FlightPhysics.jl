using FlightPhysics
using Documenter

DocMeta.setdocmeta!(FlightPhysics, :DocTestSetup, :(using FlightPhysics); recursive=true)

makedocs(;
    modules=[FlightPhysics],
    authors="Carlos Fernando Baptista <cfd.baptista@gmail.com>",
    sitename="FlightPhysics.jl",
    format=Documenter.HTML(;
        canonical="https://CFBaptista.github.io/FlightPhysics.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=["Home" => "index.md", "API" => "api.md"],
)

deploydocs(; repo="github.com/CFBaptista/FlightPhysics.jl", devbranch="master")
