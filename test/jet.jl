using MyPkg83
using JET
using Test

@testset "JET.jl" begin
    JET.test_package(MyPkg83; target_modules = (MyPkg83,))
end
