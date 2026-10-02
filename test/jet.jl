using MyPkg88
using JET
using Test

@testset "JET.jl" begin
    JET.test_package(MyPkg88; target_modules = (MyPkg88,))
end
