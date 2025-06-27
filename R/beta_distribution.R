#' Beta Distribution Probability Density Function
#'
#' @param x quantile
#' @param alpha shape parameter (alpha > 0)
#' @param beta shape parameter (beta > 0)
#' @return Probability density function value at `x`
#' @export
beta_pdf <- function(x, alpha, beta) {
  .Call(`beta_pdf_`, x, alpha, beta)
}

#' Beta Distribution Log Probability Density Function
#'
#' @param x quantile
#' @param alpha shape parameter (alpha > 0)
#' @param beta shape parameter (beta > 0)
#' @return Log probability density function value at `x`
#' @export
beta_lpdf <- function(x, alpha, beta) {
  .Call(`beta_lpdf_`, x, alpha, beta)
}

#' Beta Distribution Cumulative Distribution Function
#'
#' @param x quantile
#' @param alpha shape parameter (alpha > 0)
#' @param beta shape parameter (beta > 0)
#' @return Cumulative distribution function value at `x`
#' @export
beta_cdf <- function(x, alpha, beta) {
  .Call(`beta_cdf_`, x, alpha, beta)
}

#' Beta Distribution Log Cumulative Distribution Function
#'
#' @param x quantile
#' @param alpha shape parameter (alpha > 0)
#' @param beta shape parameter (beta > 0)
#' @return Log cumulative distribution function value at `x`
#' @export
beta_lcdf <- function(x, alpha, beta) {
  .Call(`beta_lcdf_`, x, alpha, beta)
}

#' Beta Distribution Quantile Function
#'
#' @param p probability (0 <= p <= 1)
#' @param alpha shape parameter (alpha > 0)
#' @param beta shape parameter (beta > 0)
#' @return Quantile function value at `p`
#' @export
beta_quantile <- function(p, alpha, beta) {
  .Call(`beta_quantile_`, p, alpha, beta)
}
