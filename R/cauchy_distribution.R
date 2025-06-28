#' Cauchy Probability Density Function
#'
#' @param x quantile
#' @param location location parameter (default is 0)
#' @param scale scale parameter (default is 1)
#' @return Probability density function value at `x`
#' @export
#' @examples
#' cauchy_pdf(0)
cauchy_pdf <- function(x, location = 0, scale = 1) {
  .Call(`cauchy_pdf_`, x, location, scale)
}

#' Cauchy Log Probability Density Function
#'
#' @param x quantile
#' @param location location parameter (default is 0)
#' @param scale scale parameter (default is 1)
#' @return Log probability density function value at `x`
#' @export
#' @examples
#' cauchy_lpdf(0)
cauchy_lpdf <- function(x, location = 0, scale = 1) {
  .Call(`cauchy_lpdf_`, x, location, scale)
}

#' Cauchy Cumulative Distribution Function
#'
#' @param x quantile
#' @param location location parameter (default is 0)
#' @param scale scale parameter (default is 1)
#' @return Cumulative distribution function value at `x`
#' @export
#' @examples
#' cauchy_cdf(0)
cauchy_cdf <- function(x, location = 0, scale = 1) {
  .Call(`cauchy_cdf_`, x, location, scale)
}

#' Cauchy Log Cumulative Distribution Function
#'
#' @param x quantile
#' @param location location parameter (default is 0)
#' @param scale scale parameter (default is 1)
#' @return Log cumulative distribution function value at `x`
#' @export
#' @examples
#' cauchy_lcdf(0)
cauchy_lcdf <- function(x, location = 0, scale = 1) {
  .Call(`cauchy_lcdf_`, x, location, scale)
}
