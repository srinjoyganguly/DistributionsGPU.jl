module DistributionsGPU

using CUDAnative, CuArrays, CUDAdrv
using Distributions
using Distributions: ContinuousUnivariateDistribution

include("src/univariate/continuous/normal.jl")

export GPUNormal, logpdfGPU

end # module
