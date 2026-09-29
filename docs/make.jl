using MyPkg83
using Documenter

include("citation.jl")
citation_path = joinpath(@__DIR__, "src", "assets", "citation.bib")
mkpath(dirname(citation_path))
write(citation_path, citation_bibtex(joinpath(@__DIR__, "..", "CITATION.cff")))

DocMeta.setdocmeta!(MyPkg83, :DocTestSetup, :(using MyPkg83); recursive = true)

makedocs(;
    checkdocs = :public,
    modules = [MyPkg83],
    authors = "Shuhei Ohno",
    sitename = "MyPkg83.jl",
    format = Documenter.HTML(;
        prettyurls = get(ENV, "CI", "false") == "true",
        canonical = "https://ohno.github.io/MyPkg83.jl",
        edit_link = "main",
        assets = ["assets/custom.css"],
    ),
    pages = [
        "Home" => "index.md",
        "User Guide" => "user.md",
        "Developer Guide" => "developer.md",
        "API Reference" => "api.md",
    ],
)

deploydocs(;
    repo = "github.com/ohno/MyPkg83.jl",
    devbranch = "main",
)
