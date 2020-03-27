# DistributionsGPU

[![Build Status](https://travis-ci.com/srinjoyganguly/DistributionsGPU.jl.svg?branch=master)](https://travis-ci.com/srinjoyganguly/DistributionsGPU.jl)
[![Build Status](https://ci.appveyor.com/api/projects/status/github/srinjoyganguly/DistributionsGPU.jl?svg=true)](https://ci.appveyor.com/project/srinjoyganguly/DistributionsGPU-jl)
[![Codecov](https://codecov.io/gh/srinjoyganguly/DistributionsGPU.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/srinjoyganguly/DistributionsGPU.jl)
[![Coveralls](https://coveralls.io/repos/github/srinjoyganguly/DistributionsGPU.jl/badge.svg?branch=master)](https://coveralls.io/github/srinjoyganguly/DistributionsGPU.jl?branch=master)

A Julia package for probability distributions and associated functions. Particularly, *Distributions* implements:

* Moments (e.g mean, variance, skewness, and kurtosis), entropy, and other properties
* Probability density/mass functions (pdf) and their logarithm (logpdf)
* Moment generating functions and characteristic functions
* Sampling from population or from a distribution
* Maximum likelihood estimation

**Note:** The functionalities related to conjugate priors have been moved to the [ConjugatePriors package](https://github.com/JuliaStats/ConjugatePriors.jl).


## Resources

* **Documentation**: <https://JuliaStats.github.io/Distributions.jl/stable/>

* **Support**: We use GitHub for the development of the Julia package *Distributions* itself.
For support and questions, please use the [Julia Discourse forum](https://discourse.julialang.org).
Also, for casual conversation and quick questions, there are the channels `#helpdesk` and `#statistics` in the official Julia chat (https://julialang.slack.com). To get an invitation, please visit [https://slackinvite.julialang.org](https://slackinvite.julialang.org).


## Contributing

### Reporting issues

* If you need help or an explanation how to use *Distributions* ask in the forum (https://discourse.julialang.org) or, for informal questions, visit the chat (https://julialang.slack.com).

If you have a bug linked with *Distributions*, check that it has
not been reported yet on the issues of the repository.
If not, you can file a new issue, add your version of the package
which you can get with this command in the Julia REPL:
```julia
julia> ]status Distributions
```

Be exhaustive in your report, give the summary of the bug,
a Minimal Working Example (MWE), what happens and what you
expected to happen.

### Workflow with Git and GitHub

To contribute to the package, fork the repository on GitHub,
clone it and make modifications on a new branch,
**do not commit modifications on master**.
Once your changes are made, push them on your fork and create the
Pull Request on the main repository.

### Requirements

Distributions is a central package which many rely on,
the following are required for contributions to be accepted:
1. Docstrings must be added to all interface and non-trivial functions.
2. Tests validating the modified behavior in the `test` folder. If new test files are added, do not forget to add them in `test/runtests.jl`. Cover possible edge cases. Run the tests locally before submitting the PR.
3. At the end of the tests, `Test.detect_ambiguities(Distributions)` is run to check method ambiguities. Verify that your modified code did not yield method ambiguities.
4. Make according modifications to the `docs` folder, build the documentation locally with `$ julia docs/make.jl`, verify that your modifications display correctly and did not yield warnings.

## Citing

See `CITATION.bib`, or use the DOI badge above.
