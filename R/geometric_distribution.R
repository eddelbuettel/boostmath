#' Geometric Probability Density Function
#'
#' @param x quantile (non-negative integer)
#' @param prob probability of success (0 < prob < 1)
#' @return Probability density function value at `x`
#' @export
#' @examples
#' geometric_pdf(3, 0.5)
geometric_pdf <- function(x, prob) {
  .Call(`geometric_pdf_`, x, prob)
}

#' Geometric Log Probability Density Function
#'
#' @param x quantile (non-negative integer)
#' @param prob probability of success (0 < prob < 1)
#' @return Log probability density function value at `x`
#' @export
#' @examples
#' geometric_lpdf(3, 0.5)
geometric_lpdf <- function(x, prob) {
  .Call(`geometric_lpdf_`, x, prob)
}

#' Geometric Cumulative Distribution Function
#'
#' @param x quantile (non-negative integer)
#' @param prob probability of success (0 < prob < 1)
#' @return Cumulative distribution function value at `x`
#' @export
#' @examples
#' geometric_cdf(3, 0.5)
geometric_cdf <- function(x, prob) {
  .Call(`geometric_cdf_`, x, prob)
}

#' Geometric Log Cumulative Distribution Function
#'
#' @param x quantile (non-negative integer)
#' @param prob probability of success (0 < prob < 1)
#' @return Log cumulative distribution function value at `x`
#' @export
#' @examples
#' geometric_lcdf(3, 0.5)
geometric_lcdf <- function(x, prob) {
  .Call(`geometric_lcdf_`, x, prob)
}

#' Geometric Quantile Function
#'
#' @param p probability (0 <= p <= 1)
#' @param prob probability of success (0 < prob < 1)
#' @return Quantile function value at `p`
#' @export
#' @examples
#' geometric_quantile(0.5, 0.5)
geometric_quantile <- function(p, prob) {
  .Call(`geometric_quantile_`, p, prob)
}
