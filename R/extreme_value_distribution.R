#' Extreme Value Probability Density Function
#'
#' @param x quantile
#' @param location location parameter (default is 0)
#' @param scale scale parameter (default is 1)
#' @return Probability density function value at `x`
#' @export
#' @examples
#' extreme_value_pdf(0)
extreme_value_pdf <- function(x, location = 0, scale = 1) {
  .Call(`extreme_value_pdf_`, x, location, scale)
}

#' Extreme Value Log Probability Density Function
#'
#' @param x quantile
#' @param location location parameter (default is 0)
#' @param scale scale parameter (default is 1)
#' @return Log probability density function value at `x`
#' @export
#' @examples
#' extreme_value_lpdf(0)
extreme_value_lpdf <- function(x, location = 0, scale = 1) {
  .Call(`extreme_value_lpdf_`, x, location, scale)
}

#' Extreme Value Cumulative Distribution Function
#'
#' @param x quantile
#' @param location location parameter (default is 0)
#' @param scale scale parameter (default is 1)
#' @return Cumulative distribution function value at `x`
#' @export
#' @examples
#' extreme_value_cdf(0)
extreme_value_cdf <- function(x, location = 0, scale = 1) {
  .Call(`extreme_value_cdf_`, x, location, scale)
}

#' Extreme Value Log Cumulative Distribution Function
#'
#' @param x quantile
#' @param location location parameter (default is 0)
#' @param scale scale parameter (default is 1)
#' @return Log cumulative distribution function value at `x`
#' @export
#' @examples
#' extreme_value_lcdf(0)
extreme_value_lcdf <- function(x, location = 0, scale = 1) {
  .Call(`extreme_value_lcdf_`, x, location, scale)
}

#' Extreme Value Quantile Function
#'
#' @param p probability (0 <= p <= 1)
#' @param location location parameter (default is 0)
#' @param scale scale parameter (default is 1)
#' @return Quantile function value at `p`
#' @export
#' @examples
#' extreme_value_quantile(0.5)
extreme_value_quantile <- function(p, location = 0, scale = 1) {
  .Call(`extreme_value_quantile_`, p, location, scale)
}
