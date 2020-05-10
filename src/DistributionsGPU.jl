module DistributionsGPU

using CUDAnative, CuArrays, CUDAdrv
using Distributions
using Distributions: ContinuousUnivariateDistribution, Normal

include("univariate/continuous/normal.jl")

export logpdfGPU, GPUNormal

end # module
