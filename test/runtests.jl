using MyPkg83
using Test

include("aqua.jl")
include("explicit_imports.jl")

@static if get(ENV, "JET_TEST", "true") == "true"
    include("jet.jl")
end

@testset "MyPkg83.hello" begin
    @test MyPkg83.hello() == "Hello, World!"
end
