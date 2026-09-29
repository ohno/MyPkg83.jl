using MyPkg83
using ExplicitImports
using Test

@testset "ExplicitImports.jl" begin
    @test check_no_implicit_imports(MyPkg83) === nothing
    @test check_no_stale_explicit_imports(MyPkg83) === nothing
end
