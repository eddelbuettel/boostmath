#' Kolmogorov-Smirnov Probability Density Function
#'
#' @param x quantile
#' @param n sample size (n > 0)
#' @return Probability density function value at `x`
#' @export
#' @examples
#' kolmogorov_smirnov_pdf(0.5, 10)
kolmogorov_smirnov_pdf <- function(x, n) {
  .Call(`kolmogorov_smirnov_pdf_`, x, n)
}

#' Kolmogorov-Smirnov Log Probability Density Function
#'
#' @param x quantile
#' @param n sample size (n > 0)
#' @return Log probability density function value at `x`
#' @export
#' @examples
#' kolmogorov_smirnov_lpdf(0.5, 10)
kolmogorov_smirnov_lpdf <- function(x, n) {
  .Call(`kolmogorov_smirnov_lpdf_`, x, n)
}

#' Kolmogorov-Smirnov Cumulative Distribution Function
#'
#' @param x quantile
#' @param n sample size (n > 0)
#' @return Cumulative distribution function value at `x`
#' @export
#' @examples
#' kolmogorov_smirnov_cdf(0.5, 10)
kolmogorov_smirnov_cdf <- function(x, n) {
  .Call(`kolmogorov_smirnov_cdf_`, x, n)
}

#' Kolmogorov-Smirnov Log Cumulative Distribution Function
#'
#' @param x quantile
#' @param n sample size (n > 0)
#' @return Log cumulative distribution function value at `x`
#' @export
#' @examples
#' kolmogorov_smirnov_lcdf(0.5, 10)
kolmogorov_smirnov_lcdf <- function(x, n) {
  .Call(`kolmogorov_smirnov_lcdf_`, x, n)
}

#' Kolmogorov-Smirnov Quantile Function
#'
#' @param p probability (0 <= p <= 1)
#' @param n sample size (n > 0)
#' @return Quantile function value at `p`
#' @export
#' @examples
#' kolmogorov_smirnov_quantile(0.5, 10)
kolmogorov_smirnov_quantile <- function(p, n) {
  .Call(`kolmogorov_smirnov_quantile_`, p, n)
}
