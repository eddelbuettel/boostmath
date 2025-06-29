#' Uniform Probability Density Function
#'
#' @param x quantile
#' @param lower lower bound of the distribution (default is 0)
#' @param upper upper bound of the distribution (default is 1)
#' @return Probability density function value at `x`
#' @export
#' @examples
#' uniform_pdf(0.5)
uniform_pdf <- function(x, lower = 0, upper = 1) {
  .Call(`uniform_pdf_`, x, lower, upper)
}

#' Uniform Log Probability Density Function
#'
#' @param x quantile
#' @param lower lower bound of the distribution (default is 0)
#' @param upper upper bound of the distribution (default is 1)
#' @return Log probability density function value at `x`
#' @export
#' @examples
#' uniform_lpdf(0.5)
uniform_lpdf <- function(x, lower = 0, upper = 1) {
  .Call(`uniform_lpdf_`, x, lower, upper)
}

#' Uniform Cumulative Distribution Function
#'
#' @param x quantile
#' @param lower lower bound of the distribution (default is 0)
#' @param upper upper bound of the distribution (default is 1)
#' @return Cumulative distribution function value at `x`
#' @export
#' @examples
#' uniform_cdf(0.5)
uniform_cdf <- function(x, lower = 0, upper = 1) {
  .Call(`uniform_cdf_`, x, lower, upper)
}

#' Uniform Log Cumulative Distribution Function
#'
#' @param x quantile
#' @param lower lower bound of the distribution (default is 0)
#' @param upper upper bound of the distribution (default is 1)
#' @return Log cumulative distribution function value at `x`
#' @export
#' @examples
#' uniform_lcdf(0.5)
uniform_lcdf <- function(x, lower = 0, upper = 1) {
  .Call(`uniform_lcdf_`, x, lower, upper)
}

#' Uniform Quantile Function
#'
#' @param p probability (0 <= p <= 1)
#' @param lower lower bound of the distribution (default is 0)
#' @param upper upper bound of the distribution (default is 1)
#' @return Quantile function value at `p`
#' @export
#' @examples
#' uniform_quantile(0.5)
uniform_quantile <- function(p, lower = 0, upper = 1) {
  .Call(`uniform_quantile_`, p, lower, upper)
}
