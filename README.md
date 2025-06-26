
<!-- README.md is generated from README.Rmd. Please edit that file -->

# boostmath

<!-- badges: start -->

<!-- badges: end -->

Providing simple access to Boost’s Math functions in R, no compilation
required.

## Installation

You can install the development version of boostmath from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("andrjohns/boostmath")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(boostmath)
#> 
#> Attaching package: 'boostmath'
#> The following objects are masked from 'package:base':
#> 
#>     acosh, asinh, atanh, beta, digamma, expm1, factorial, lgamma,
#>     log1p, trigamma

hypergeometric_pFq(c(1, 2.5), c(0.5, 2), 1)
#> [1] 6.675991
ibeta_inv(2.1, 5.2, 0.7)
#> [1] 0.361431
owens_t(2.1, 4.2)
#> [1] 0.00893221
```
