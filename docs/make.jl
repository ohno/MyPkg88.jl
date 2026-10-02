using MyPkg88
using Documenter

include("citation.jl")
citation_path = joinpath(@__DIR__, "src", "assets", "citation.bib")
mkpath(dirname(citation_path))
write(citation_path, citation_bibtex(joinpath(@__DIR__, "..", "CITATION.cff")))

DocMeta.setdocmeta!(MyPkg88, :DocTestSetup, :(using MyPkg88); recursive = true)

makedocs(;
    checkdocs = :public,
    modules = [MyPkg88],
    authors = "Shuhei Ohno",
    sitename = "MyPkg88.jl",
    format = Documenter.HTML(;
        prettyurls = get(ENV, "CI", "false") == "true",
        canonical = "https://ohno.github.io/MyPkg88.jl",
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
    repo = "github.com/ohno/MyPkg88.jl",
    devbranch = "main",
)
