using VPLGraphAPI
using Documenter

DocMeta.setdocmeta!(VPLGraphAPI, :DocTestSetup, :(using VPLGraphAPI); recursive = true)

makedocs(;
         modules = [VPLGraphAPI],
         authors = "Alejandro Morales Sierra <alejandro.moralessierra@wur.nl> and contributors",
         repo = "https://github.com/AleMorales/VPLGraphAPI.jl/blob/{commit}{path}#{line}",
         sitename = "VPLGraphAPI.jl",
         format = Documenter.HTML(;
                                  prettyurls = get(ENV, "CI", "false") == "true",
                                  edit_link = "master",
                                  assets = String[]),
         pages = [
             "Home" => "index.md",
         ])
