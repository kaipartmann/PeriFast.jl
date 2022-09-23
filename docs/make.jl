using PeriFast
using Documenter

DocMeta.setdocmeta!(PeriFast, :DocTestSetup, :(using PeriFast); recursive=true)

makedocs(;
    modules=[PeriFast],
    authors="Kai Friebertshäuser",
    repo="https://github.com/kfrb/PeriFast.jl/blob/{commit}{path}#{line}",
    sitename="PeriFast.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://kfrb.github.io/PeriFast.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/kfrb/PeriFast.jl",
    devbranch="main",
)
