#' Poisson Probability Density Function
#'
#' @param x quantile
#' @param lambda rate parameter (default is 1)
#' @return Probability density function value at `x`
#' @export
#' @examples
#' poisson_pdf(0, 1)
poisson_pdf <- function(x, lambda = 1) {
  .Call(`poisson_pdf_`, x, lambda)
}

#' Poisson Log Probability Density Function
#'
#' @param x quantile
#' @param lambda rate parameter (default is 1)
#' @return Log probability density function value at `x`
#' @export
#' @examples
#' poisson_lpdf(0, 1)
poisson_lpdf <- function(x, lambda = 1) {
  .Call(`poisson_lpdf_`, x, lambda)
}

#' Poisson Cumulative Distribution Function
#'
#' @param x quantile
#' @param lambda rate parameter (default is 1)
#' @return Cumulative distribution function value at `x`
#' @export
#' @examples
#' poisson_cdf(0, 1)
poisson_cdf <- function(x, lambda = 1) {
  .Call(`poisson_cdf_`, x, lambda)
}

#' Poisson Log Cumulative Distribution Function
#'
#' @param x quantile
#' @param lambda rate parameter (default is 1)
#' @return Log cumulative distribution function value at `x`
#' @export
#' @examples
#' poisson_lcdf(0, 1)
poisson_lcdf <- function(x, lambda = 1) {
  .Call(`poisson_lcdf_`, x, lambda)
}

#' Poisson Quantile Function
#'
#' @param p probability (0 <= p <= 1)
#' @param lambda rate parameter (default is 1)
#' @return Quantile function value at `p`
#' @export
#' @examples
#' poisson_quantile(0.5, 1)
poisson_quantile <- function(p, lambda = 1) {
  .Call(`poisson_quantile_`, p, lambda)
}
