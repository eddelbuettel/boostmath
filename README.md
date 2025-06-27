
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
sufffixed with `_boost` to avoid conflicts:

``` r
beta_boost(3, 2)
#> [1] 0.08333333
lgamma_boost(5)
#> [1] 3.178054
```

### Quadrature and Differentiation

Boost’s integration and (numerical) differentiation routines are also
available for use with R functions:

``` r
trapezoidal(\(x) { 1/(5 - 4*cos(x)) }, a = 0, b = 2*pi)
#> [1] 2.094395

gauss_legendre(\(x) { x * x * atan(x) }, a = 0, b = 1, points = 20)
#> [1] 0.2106573

gauss_kronrod(\(x) { exp(-x * x / 2) }, a = 0, b = Inf, points = 15)
#> [1] 1.253314

tanh_sinh(\(x) { log(x)*log1p(-x) }, a = 0, b = 1)
#> [1] 0.3550659

sinh_sinh(\(x) { exp(-x*x) })
#> [1] 1.772454

exp_sinh(\(x) { exp(-3*x) }, a = 0, b = Inf)
#> [1] 0.3333333
```
