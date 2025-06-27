#' Arcsine Distribution Probability Density Function
#'
#' @param x quantile
#' @param x_min minimum value of the distribution (default is 0)
#' @param x_max maximum value of the distribution (default is 1)
#' @return Probability density function value at `x`
#' @export
arcsine_pdf <- function(x, x_min = 0, x_max = 1) {
  .Call(`arcsine_pdf_`, x, x_min, x_max)
}

#' Arcsine Distribution Log Probability Density Function
#'
#' @param x quantile
#' @param x_min minimum value of the distribution (default is 0)
#' @param x_max maximum value of the distribution (default is 1)
#' @return Log probability density function value at `x`
#' @export
arcsine_lpdf <- function(x, x_min = 0, x_max = 1) {
  .Call(`arcsine_lpdf_`, x, x_min, x_max)
}

#' Arcsine Distribution Cumulative Distribution Function
#'
#' @param x quantile
#' @param x_min minimum value of the distribution (default is 0)
#' @param x_max maximum value of the distribution (default is 1)
#' @return Cumulative distribution function value at `x`
#' @export
arcsine_cdf <- function(x, x_min = 0, x_max = 1) {
  .Call(`arcsine_cdf_`, x, x_min, x_max)
}

#' Arcsine Distribution Log Cumulative Distribution Function
#'
#' @param x quantile
#' @param x_min minimum value of the distribution (default is 0)
#' @param x_max maximum value of the distribution (default is 1)
#' @return Log cumulative distribution function value at `x`
#' @export
arcsine_lcdf <- function(x, x_min = 0, x_max = 1) {
  .Call(`arcsine_lcdf_`, x, x_min, x_max)
}

#' Arcsine Distribution Quantile Function
#'
#' @param p probability
#' @param x_min minimum value of the distribution (default is 0)
#' @param x_max maximum value of the distribution (default is 1)
#' @return Quantile function value at `p`
#' @export
arcsine_quantile <- function(p, x_min = 0, x_max = 1) {
  .Call(`arcsine_quantile_`, p, x_min, x_max)
}
