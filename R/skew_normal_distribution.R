#' Skew Normal Probability Density Function
#'
#' @param x quantile
#' @param location location parameter (default is 0)
#' @param scale scale parameter (default is 1)
#' @param shape shape parameter (default is 0)
#' @return Probability density function value at `x`
#' @export
#' @examples
#' skew_normal_pdf(0)
skew_normal_pdf <- function(x, location = 0, scale = 1, shape = 0) {
  .Call(`skew_normal_pdf_`, x, location, scale, shape)
}

#' Skew Normal Log Probability Density Function
#'
#' @param x quantile
#' @param location location parameter (default is 0)
#' @param scale scale parameter (default is 1)
#' @param shape shape parameter (default is 0)
#' @return Log probability density function value at `x`
#' @export
#' @examples
#' skew_normal_lpdf(0)
skew_normal_lpdf <- function(x, location = 0, scale = 1, shape = 0) {
  .Call(`skew_normal_lpdf_`, x, location, scale, shape)
}

#' Skew Normal Cumulative Distribution Function
#'
#' @param x quantile
#' @param location location parameter (default is 0)
#' @param scale scale parameter (default is 1)
#' @param shape shape parameter (default is 0)
#' @return Cumulative distribution function value at `x`
#' @export
#' @examples
#' skew_normal_cdf(0)
skew_normal_cdf <- function(x, location = 0, scale = 1, shape = 0) {
  .Call(`skew_normal_cdf_`, x, location, scale, shape)
}

#' Skew Normal Log Cumulative Distribution Function
#'
#' @param x quantile
#' @param location location parameter (default is 0)
#' @param scale scale parameter (default is 1)
#' @param shape shape parameter (default is 0)
#' @return Log cumulative distribution function value at `x`
#' @export
#' @examples
#' skew_normal_lcdf(0)
skew_normal_lcdf <- function(x, location = 0, scale = 1, shape = 0) {
  .Call(`skew_normal_lcdf_`, x, location, scale, shape)
}

#' Skew Normal Quantile Function
#'
#' @param p probability (0 <= p <= 1)
#' @param location location parameter (default is 0)
#' @param scale scale parameter (default is 1)
#' @param shape shape parameter (default is 0)
#' @return Quantile function value at `p`
#' @export
#' @examples
#' skew_normal_quantile(0.5)
skew_normal_quantile <- function(p, location = 0, scale = 1, shape = 0) {
  .Call(`skew_normal_quantile_`, p, location, scale, shape)
}
