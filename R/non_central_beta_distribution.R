#' Noncentral Beta Probability Density Function
#'
#' @param x quantile
#' @param alpha first shape parameter (alpha > 0)
#' @param beta second shape parameter (beta > 0)
#' @param lambda noncentrality parameter (lambda >= 0)
#' @return Probability density function value at `x`
#' @export
#' @examples
#' non_central_beta_pdf(0.5, 2, 3, 1)
non_central_beta_pdf <- function(x, alpha, beta, lambda) {
  .Call(`non_central_beta_pdf_`, x, alpha, beta, lambda)
}

#' Noncentral Beta Log Probability Density Function
#'
#' @param x quantile
#' @param alpha first shape parameter (alpha > 0)
#' @param beta second shape parameter (beta > 0)
#' @param lambda noncentrality parameter (lambda >= 0)
#' @return Log probability density function value at `x`
#' @export
#' @examples
#' non_central_beta_lpdf(0.5, 2, 3, 1)
non_central_beta_lpdf <- function(x, alpha, beta, lambda) {
  .Call(`non_central_beta_lpdf_`, x, alpha, beta, lambda)
}

#' Noncentral Beta Cumulative Distribution Function
#'
#' @param x quantile
#' @param alpha first shape parameter (alpha > 0)
#' @param beta second shape parameter (beta > 0)
#' @param lambda noncentrality parameter (lambda >= 0)
#' @return Cumulative distribution function value at `x`
#' @export
#' @examples
#' non_central_beta_cdf(0.5, 2, 3, 1)
non_central_beta_cdf <- function(x, alpha, beta, lambda) {
  .Call(`non_central_beta_cdf_`, x, alpha, beta, lambda)
}

#' Noncentral Beta Log Cumulative Distribution Function
#'
#' @param x quantile
#' @param alpha first shape parameter (alpha > 0)
#' @param beta second shape parameter (beta > 0)
#' @param lambda noncentrality parameter (lambda >= 0)
#' @return Log cumulative distribution function value at `x`
#' @export
#' @examples
#' non_central_beta_lcdf(0.5, 2, 3, 1)
non_central_beta_lcdf <- function(x, alpha, beta, lambda) {
  .Call(`non_central_beta_lcdf_`, x, alpha, beta, lambda)
}

#' Noncentral Beta Quantile Function
#'
#' @param p probability (0 <= p <= 1)
#' @param alpha first shape parameter (alpha > 0)
#' @param beta second shape parameter (beta > 0)
#' @param lambda noncentrality parameter (lambda >= 0)
#' @return Quantile function value at `p`
#' @export
#' @examples
#' non_central_beta_quantile(0.5, 2, 3, 1)
non_central_beta_quantile <- function(p, alpha, beta, lambda) {
  .Call(`non_central_beta_quantile_`, p, alpha, beta, lambda)
}
