#' Triangular Probability Density Function
#'
#' @param x quantile
#' @param lower lower limit of the distribution (default is 0)
#' @param mode mode of the distribution (default is 1)
#' @param upper upper limit of the distribution (default is 2)
#' @return Probability density function value at `x`
#' @export
#' @examples
#' triangular_pdf(1)
triangular_pdf <- function(x, lower = 0, mode = 1, upper = 2) {
  .Call(`triangular_pdf_`, x, lower, mode, upper)
}

#' Triangular Log Probability Density Function
#'
#' @param x quantile
#' @param lower lower limit of the distribution (default is 0)
#' @param mode mode of the distribution (default is 1)
#' @param upper upper limit of the distribution (default is 2)
#' @return Log probability density function value at `x`
#' @export
#' @examples
#' triangular_lpdf(1)
triangular_lpdf <- function(x, lower = 0, mode = 1, upper = 2) {
  .Call(`triangular_lpdf_`, x, lower, mode, upper)
}

#' Triangular Cumulative Distribution Function
#'
#' @param x quantile
#' @param lower lower limit of the distribution (default is 0)
#' @param mode mode of the distribution (default is 1)
#' @param upper upper limit of the distribution (default is 2)
#' @return Cumulative distribution function value at `x`
#' @export
#' @examples
#' triangular_cdf(1)
triangular_cdf <- function(x, lower = 0, mode = 1, upper = 2) {
  .Call(`triangular_cdf_`, x, lower, mode, upper)
}

#' Triangular Log Cumulative Distribution Function
#'
#' @param x quantile
#' @param lower lower limit of the distribution (default is 0)
#' @param mode mode of the distribution (default is 1)
#' @param upper upper limit of the distribution (default is 2)
#' @return Log cumulative distribution function value at `x`
#' @export
#' @examples
#' triangular_lcdf(1)
triangular_lcdf <- function(x, lower = 0, mode = 1, upper = 2) {
  .Call(`triangular_lcdf_`, x, lower, mode, upper)
}

#' Triangular Quantile Function
#'
#' @param p probability (0 <= p <= 1)
#' @param lower lower limit of the distribution (default is 0)
#' @param mode mode of the distribution (default is 1)
#' @param upper upper limit of the distribution (default is 2)
#' @return Quantile function value at `p`
#' @export
#' @examples
#' triangular_quantile(0.5)
triangular_quantile <- function(p, lower = 0, mode = 1, upper = 2) {
  .Call(`triangular_quantile_`, p, lower, mode, upper)
}
