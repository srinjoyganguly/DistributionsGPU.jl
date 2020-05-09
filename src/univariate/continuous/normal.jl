"""
    Normal(μ,σ)

The *Normal distribution* with mean `μ` and standard deviation `σ≥0` has probability density function

```math
f(x; \\mu, \\sigma) = \\frac{1}{\\sqrt{2 \\pi \\sigma^2}}
\\exp \\left( - \\frac{(x - \\mu)^2}{2 \\sigma^2} \\right)
```

Note that if `σ == 0`, then the distribution is a point mass concentrated at `μ`.
Though not technically a continuous distribution, it is allowed so as to account for cases where `σ` may have underflowed,
and the functions are defined by taking the pointwise limit as ``σ → 0``.

```julia
Normal()          # standard Normal distribution with zero mean and unit variance
Normal(mu)        # Normal distribution with mean mu and unit variance
Normal(mu, sig)   # Normal distribution with mean mu and variance sig^2

params(d)         # Get the parameters, i.e. (mu, sig)
mean(d)           # Get the mean, i.e. mu
std(d)            # Get the standard deviation, i.e. sig
```

External links

* [Normal distribution on Wikipedia](http://en.wikipedia.org/wiki/Normal_distribution)

"""
struct GPUNormal{T<:Real} <: ContinuousUnivariateDistribution
    μ::T
    σ::T
end

zvalGPU(d::Normal, x::Real) = (x - d.μ) / d.σ

gradlogpdf(d::Normal, x::Real) = -zval(d, x) / d.σ

# logpdf
_normlogpdfGPU(z::Real) = -(abs2(z) + Distributions.log2π)/2

function logpdfGPU(d::Normal, x::Real)
    μ, σ = d.μ, d.σ
    if iszero(d.σ)
        if x == μ
            z = zvalGPU.(Normal(μ, one(σ)), x)
        else
            z = zvalGPU.(d, x)
            σ = one(σ)
        end
    else
        z = zvalGPU.(d, x)
    end
    return _normlogpdfGPU.(z) - CUDAnative.log(σ)
end
