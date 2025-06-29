#' Laplace Probability Density Function
#'
#' @param x quantile
#' @param location location parameter (default is 0)
#' @param scale scale parameter (default is 1)
#' @return Probability density function value at `x`
#' @export
#' @examples
#' laplace_pdf(0)
laplace_pdf <- function(x, location = 0, scale = 1) {
  .Call(`laplace_pdf_`, x, location, scale)
}

#' Laplace Log Probability Density Function
#'
#' @param x quantile
#' @param location location parameter (default is 0)
#' @param scale scale parameter (default is 1)
#' @return Log probability density function value at `x`
#' @export
#' @examples
#' laplace_lpdf(0)
laplace_lpdf <- function(x, location = 0, scale = 1) {
  .Call(`laplace_lpdf_`, x, location, scale)
}

#' Laplace Cumulative Distribution Function
#'
#' @param x quantile
#' @param location location parameter (default is 0)
#' @param scale scale parameter (default is 1)
#' @return Cumulative distribution function value at `x`
#' @export
#' @examples
#' laplace_cdf(0)
laplace_cdf <- function(x, location = 0, scale = 1) {
  .Call(`laplace_cdf_`, x, location, scale)
}

#' Laplace Log Cumulative Distribution Function
#'
#' @param x quantile
#' @param location location parameter (default is 0)
#' @param scale scale parameter (default is 1)
#' @return Log cumulative distribution function value at `x`
#' @export
#' @examples
#' laplace_lcdf(0)
laplace_lcdf <- function(x, location = 0, scale = 1) {
  .Call(`laplace_lcdf_`, x, location, scale)
}

#' Laplace Quantile Function
#'
#' @param p probability (0 <= p <= 1)
#' @param location location parameter (default is 0)
#' @param scale scale parameter (default is 1)
#' @return Quantile function value at `p`
#' @export
#' @examples
#' laplace_quantile(0.5)
laplace_quantile <- function(p, location = 0, scale = 1) {
  .Call(`laplace_quantile_`, p, location, scale)
}
