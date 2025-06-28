#' Hypergeometric Probability Density Function
#'
#' @param x quantile
#' @param r number of successes in the population (r >= 0)
#' @param n number of draws (n >= 0)
#' @param N population size (N >= r)
#' @return Probability density function value at `x`
#' @export
#' @examples
#' hypergeometric_pdf(3, 5, 10, 20)
hypergeometric_pdf <- function(x, r, n, N) {
  .Call(`hypergeometric_pdf_`, x, r, n, N)
}

#' Hypergeometric Log Probability Density Function
#'
#' @param x quantile
#' @param r number of successes in the population (r >= 0)
#' @param n number of draws (n >= 0)
#' @param N population size (N >= r)
#' @return Log probability density function value at `x`
#' @export
#' @examples
#' hypergeometric_lpdf(3, 5, 10, 20)
hypergeometric_lpdf <- function(x, r, n, N) {
  .Call(`hypergeometric_lpdf_`, x, r, n, N)
}

#' Hypergeometric Cumulative Distribution Function
#'
#' @param x quantile
#' @param r number of successes in the population (r >= 0)
#' @param n number of draws (n >= 0)
#' @param N population size (N >= r)
#' @return Cumulative distribution function value at `x`
#' @export
#' @examples
#' hypergeometric_cdf(3, 5, 10, 20)
hypergeometric_cdf <- function(x, r, n, N) {
  .Call(`hypergeometric_cdf_`, x, r, n, N)
}

#' Hypergeometric Log Cumulative Distribution Function
#'
#' @param x quantile
#' @param r number of successes in the population (r >= 0)
#' @param n number of draws (n >= 0)
#' @param N population size (N >= r)
#' @return Log cumulative distribution function value at `x`
#' @export
#' @examples
#' hypergeometric_lcdf(3, 5, 10, 20)
hypergeometric_lcdf <- function(x, r, n, N) {
  .Call(`hypergeometric_lcdf_`, x, r, n, N)
}

#' Hypergeometric Quantile Function
#'
#' @param p probability (0 <= p <= 1)
#' @param r number of successes in the population (r >= 0)
#' @param n number of draws (n >= 0)
#' @param N population size (N >= r)
#' @return Quantile function value at `p`
#' @export
#' @examples
#' hypergeometric_quantile(0.5, 5, 10, 20)
hypergeometric_quantile <- function(p, r, n, N) {
  .Call(`hypergeometric_quantile_`, p, r, n, N)
}
