using MyPkg83
using Aqua
using Test

@testset "Aqua.jl" begin
    Aqua.test_all(MyPkg83)
end
