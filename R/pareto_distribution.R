#' Pareto Probability Density Function
#'
#' @param x quantile
#' @param shape shape parameter (default is 1)
#' @param scale scale parameter (default is 1)
#' @return Probability density function value at `x`
#' @export
#' @examples
#' pareto_pdf(1)
pareto_pdf <- function(x, shape = 1, scale = 1) {
  .Call(`pareto_pdf_`, x, shape, scale)
}

#' Pareto Log Probability Density Function
#'
#' @param x quantile
#' @param shape shape parameter (default is 1)
#' @param scale scale parameter (default is 1)
#' @return Log probability density function value at `x`
#' @export
#' @examples
#' pareto_lpdf(1)
pareto_lpdf <- function(x, shape = 1, scale = 1) {
  .Call(`pareto_lpdf_`, x, shape, scale)
}

#' Pareto Cumulative Distribution Function
#'
#' @param x quantile
#' @param shape shape parameter (default is 1)
#' @param scale scale parameter (default is 1)
#' @return Cumulative distribution function value at `x`
#' @export
#' @examples
#' pareto_cdf(1)
pareto_cdf <- function(x, shape = 1, scale = 1) {
  .Call(`pareto_cdf_`, x, shape, scale)
}

#' Pareto Log Cumulative Distribution Function
#'
#' @param x quantile
#' @param shape shape parameter (default is 1)
#' @param scale scale parameter (default is 1)
#' @return Log cumulative distribution function value at `x`
#' @export
#' @examples
#' pareto_lcdf(1)
pareto_lcdf <- function(x, shape = 1, scale = 1) {
  .Call(`pareto_lcdf_`, x, shape, scale)
}

#' Pareto Quantile Function
#'
#' @param p probability (0 <= p <= 1)
#' @param shape shape parameter (default is 1)
#' @param scale scale parameter (default is 1)
#' @return Quantile function value at `p`
#' @export
#' @examples
#' pareto_quantile(0.5)
pareto_quantile <- function(p, shape = 1, scale = 1) {
  .Call(`pareto_quantile_`, p, shape, scale)
}
