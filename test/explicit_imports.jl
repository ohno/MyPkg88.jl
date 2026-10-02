using MyPkg88
using ExplicitImports
using Test

@testset "ExplicitImports.jl" begin
    @test check_no_implicit_imports(MyPkg88) === nothing
    @test check_no_stale_explicit_imports(MyPkg88) === nothing
end
