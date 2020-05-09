module DistributionsGPU

using CUDAnative, CuArrays, CUDAdrv
using Distributions
using Distributions: ContinuousUnivariateDistribution

include("univariate/continuous/normal.jl")

export GPUNormal, logpdfGPU

end # module
