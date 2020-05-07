using DistributionsGPU
using Test


d = Normal()
@test DistributionsGPU.quantile_newton(d, 0.5) == quantile(d, 0.5)
@test DistributionsGPU.cquantile_newton(d, 0.5) == cquantile(d, 0.5)
