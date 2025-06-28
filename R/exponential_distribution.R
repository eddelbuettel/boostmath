#' Exponential Probability Density Function
#'
#' @param x quantile
#' @param lambda rate parameter (lambda > 0)
#' @return Probability density function value at `x`
#' @export
#' @examples
#' exponential_pdf(1, 2)
exponential_pdf <- function(x, lambda) {
  .Call(`exponential_pdf_`, x, lambda)
}

#' Exponential Log Probability Density Function
#'
#' @param x quantile
#' @param lambda rate parameter (lambda > 0)
#' @return Log probability density function value at `x`
#' @export
#' @examples
#' exponential_lpdf(1, 2)
exponential_lpdf <- function(x, lambda) {
  .Call(`exponential_lpdf_`, x, lambda)
}

#' Exponential Cumulative Distribution Function
#'
#' @param x quantile
#' @param lambda rate parameter (lambda > 0)
#' @return Cumulative distribution function value at `x`
#' @export
#' @examples
#' exponential_cdf(1, 2)
exponential_cdf <- function(x, lambda) {
  .Call(`exponential_cdf_`, x, lambda)
}

#' Exponential Log Cumulative Distribution Function
#'
#' @param x quantile
#' @param lambda rate parameter (lambda > 0)
#' @return Log cumulative distribution function value at `x`
#' @export
#' @examples
#' exponential_lcdf(1, 2)
exponential_lcdf <- function(x, lambda) {
  .Call(`exponential_lcdf_`, x, lambda)
}

#' Exponential Quantile Function
#'
#' @param p probability (0 <= p <= 1)
#' @param lambda rate parameter (lambda > 0)
#' @return Quantile function value at `p`
#' @export
#' @examples
#' exponential_quantile(0.5, 2)
exponential_quantile <- function(p, lambda) {
  .Call(`exponential_quantile_`, p, lambda)
}
