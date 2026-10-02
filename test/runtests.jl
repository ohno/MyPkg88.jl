using MyPkg88
using Test

include("aqua.jl")
include("explicit_imports.jl")

@static if get(ENV, "JET_TEST", "true") == "true"
    include("jet.jl")
end

@testset "MyPkg88.hello" begin
    @test MyPkg88.hello() == "Hello, World!"
end
