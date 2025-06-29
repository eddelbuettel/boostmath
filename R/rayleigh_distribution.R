#' Rayleigh Probability Density Function
#'
#' @param x quantile
#' @param scale scale parameter (default is 1)
#' @return Probability density function value at `x`
#' @export
#' @examples
#' rayleigh_pdf(1)
rayleigh_pdf <- function(x, scale = 1) {
  .Call(`rayleigh_pdf_`, x, scale)
}

#' Rayleigh Log Probability Density Function
#'
#' @param x quantile
#' @param scale scale parameter (default is 1)
#' @return Log probability density function value at `x`
#' @export
#' @examples
#' rayleigh_lpdf(1)
rayleigh_lpdf <- function(x, scale = 1) {
  .Call(`rayleigh_lpdf_`, x, scale)
}

#' Rayleigh Cumulative Distribution Function
#'
#' @param x quantile
#' @param scale scale parameter (default is 1)
#' @return Cumulative distribution function value at `x`
#' @export
#' @examples
#' rayleigh_cdf(1)
rayleigh_cdf <- function(x, scale = 1) {
  .Call(`rayleigh_cdf_`, x, scale)
}

#' Rayleigh Log Cumulative Distribution Function
#'
#' @param x quantile
#' @param scale scale parameter (default is 1)
#' @return Log cumulative distribution function value at `x`
#' @export
#' @examples
#' rayleigh_lcdf(1)
rayleigh_lcdf <- function(x, scale = 1) {
  .Call(`rayleigh_lcdf_`, x, scale)
}

#' Rayleigh Quantile Function
#'
#' @param p probability (0 <= p <= 1)
#' @param scale scale parameter (default is 1)
#' @return Quantile function value at `p`
#' @export
#' @examples
#' rayleigh_quantile(0.5)
rayleigh_quantile <- function(p, scale = 1) {
  .Call(`rayleigh_quantile_`, p, scale)
}
