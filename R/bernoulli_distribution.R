#' Bernoulli Distribution Probability Density Function
#'
#' @param x quantile (0 or 1)
#' @param p probability of success (0 <= p <= 1)
#' @return Probability density function value at `x`
#' @export
bernoulli_pdf <- function(x, p) {
  .Call(`bernoulli_pdf_`, x, p)
}

#' Bernoulli Distribution Log Probability Density Function
#'
#' @param x quantile (0 or 1)
#' @param p probability of success (0 <= p <= 1)
#' @return Log probability density function value at `x`
#' @export
bernoulli_lpdf <- function(x, p) {
  .Call(`bernoulli_lpdf_`, x, p)
}

#' Bernoulli Distribution Cumulative Distribution Function
#'
#' @param x quantile (0 or 1)
#' @param p probability of success (0 <= p <= 1)
#' @return Cumulative distribution function value at `x`
#' @export
bernoulli_cdf <- function(x, p) {
  .Call(`bernoulli_cdf_`, x, p)
}

#' Bernoulli Distribution Log Cumulative Distribution Function
#'
#' @param x quantile (0 or 1)
#' @param p probability of success (0 <= p <= 1)
#' @return Log cumulative distribution function value at `x`
#' @export
bernoulli_lcdf <- function(x, p) {
  .Call(`bernoulli_lcdf_`, x, p)
}

#' Bernoulli Distribution Quantile Function
#'
#' @param p probability (0 <= p <= 1)
#' @param p_success probability of success (0 <= p_success <= 1)
#' @return Quantile function value at `p`
#' @export
bernoulli_quantile <- function(p, p_success) {
  .Call(`bernoulli_quantile_`, p, p_success)
}
