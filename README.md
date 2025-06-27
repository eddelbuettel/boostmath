
<!-- README.md is generated from README.Rmd. Please edit that file -->

# boostmath

<!-- badges: start -->

[![R-CMD-check](https://github.com/andrjohns/boostmath/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/andrjohns/boostmath/actions/workflows/R-CMD-check.yaml)
[![CRAN
status](https://www.r-pkg.org/badges/version/boostmath)](https://CRAN.R-project.org/package=boostmath)
[![Downloads](https://cranlogs.r-pkg.org/badges/boostmath?color=blue)](https://CRAN.R-project.org/package=boostmath)
[![boostmath status
badge](https://andrjohns.r-universe.dev/badges/boostmath)](https://andrjohns.r-universe.dev/boostmath)
<!-- badges: end -->

Providing simple access to Boost’s Math functions in R, no compilation
required.

## Installation

You can install the development version of boostmath from
[GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("andrjohns/boostmath")
```

Or you can install pre-built binaries from R-Universe:

``` r
install.packages("boostmath", repos = c("https://andrjohns.r-universe.dev",
                                        "https://cran.r-project.org"))
```

## Usage

Functions can be used directly after loading the package:

``` r
library(boostmath)

hypergeometric_pFq(c(1, 2.5), c(0.5, 2), 1)
#> [1] 6.675991
ibeta_inv(2.1, 5.2, 0.7)
#> [1] 0.361431
owens_t(2.1, 4.2)
#> [1] 0.00893221
```

Any Boost Math functions that share the same name as R functions are
prefixed with `boost_` to avoid conflicts:

``` r
boost_beta(3, 2)
#> [1] 0.08333333
boost_lgamma(5)
#> [1] 3.178054
```
