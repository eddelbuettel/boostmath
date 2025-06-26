
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
