#' Normal Probability Density Function
#'
#' @param x quantile
#' @param mean mean parameter (default is 0)
#' @param sd standard deviation parameter (default is 1)
#' @return Probability density function value at `x`
#' @export
#' @examples
#' normal_pdf(0)
normal_pdf <- function(x, mean = 0, sd = 1) {
  .Call(`normal_pdf_`, x, mean, sd)
}

#' Normal Log Probability Density Function
#'
#' @param x quantile
#' @param mean mean parameter (default is 0)
#' @param sd standard deviation parameter (default is 1)
#' @return Log probability density function value at `x`
#' @export
#' @examples
#' normal_lpdf(0)
normal_lpdf <- function(x, mean = 0, sd = 1) {
  .Call(`normal_lpdf_`, x, mean, sd)
}

#' Normal Cumulative Distribution Function
#'
#' @param x quantile
#' @param mean mean parameter (default is 0)
#' @param sd standard deviation parameter (default is 1)
#' @return Cumulative distribution function value at `x`
#' @export
#' @examples
#' normal_cdf(0)
normal_cdf <- function(x, mean = 0, sd = 1) {
  .Call(`normal_cdf_`, x, mean, sd)
}

#' Normal Log Cumulative Distribution Function
#'
#' @param x quantile
#' @param mean mean parameter (default is 0)
#' @param sd standard deviation parameter (default is 1)
#' @return Log cumulative distribution function value at `x`
#' @export
#' @examples
#' normal_lcdf(0)
normal_lcdf <- function(x, mean = 0, sd = 1) {
  .Call(`normal_lcdf_`, x, mean, sd)
}

#' Normal Quantile Function
#'
#' @param p probability (0 <= p <= 1)
#' @param mean mean parameter (default is 0)
#' @param sd standard deviation parameter (default is 1)
#' @return Quantile function value at `p`
#' @export
#' @examples
#' normal_quantile(0.5)
normal_quantile <- function(p, mean = 0, sd = 1) {
  .Call(`normal_quantile_`, p, mean, sd)
}
