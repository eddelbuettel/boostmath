#' Weibull Probability Density Function
#'
#' @param x quantile
#' @param shape shape parameter (default is 1)
#' @param scale scale parameter (default is 1)
#' @return Probability density function value at `x`
#' @export
#' @examples
#' weibull_pdf(1)
weibull_pdf <- function(x, shape = 1, scale = 1) {
  .Call(`weibull_pdf_`, x, shape, scale)
}

#' Weibull Log Probability Density Function
#'
#' @param x quantile
#' @param shape shape parameter (default is 1)
#' @param scale scale parameter (default is 1)
#' @return Log probability density function value at `x`
#' @export
#' @examples
#' weibull_lpdf(1)
weibull_lpdf <- function(x, shape = 1, scale = 1) {
  .Call(`weibull_lpdf_`, x, shape, scale)
}

#' Weibull Cumulative Distribution Function
#'
#' @param x quantile
#' @param shape shape parameter (default is 1)
#' @param scale scale parameter (default is 1)
#' @return Cumulative distribution function value at `x`
#' @export
#' @examples
#' weibull_cdf(1)
weibull_cdf <- function(x, shape = 1, scale = 1) {
  .Call(`weibull_cdf_`, x, shape, scale)
}

#' Weibull Log Cumulative Distribution Function
#'
#' @param x quantile
#' @param shape shape parameter (default is 1)
#' @param scale scale parameter (default is 1)
#' @return Log cumulative distribution function value at `x`
#' @export
#' @examples
#' weibull_lcdf(1)
weibull_lcdf <- function(x, shape = 1, scale = 1) {
  .Call(`weibull_lcdf_`, x, shape, scale)
}

#' Weibull Quantile Function
#'
#' @param p probability (0 <= p <= 1)
#' @param shape shape parameter (default is 1)
#' @param scale scale parameter (default is 1)
#' @return Quantile function value at `p`
#' @export
#' @examples
#' weibull_quantile(0.5)
weibull_quantile <- function(p, shape = 1, scale = 1) {
  .Call(`weibull_quantile_`, p, shape, scale)
}
