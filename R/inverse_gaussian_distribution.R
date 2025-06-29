#' Inverse Gaussian Probability Density Function
#'
#' @param x quantile
#' @param mu mean parameter (mu > 0)
#' @param lambda scale (precision) parameter (lambda > 0)
#' @return Probability density function value at `x`
#' @export
#' @examples
#' inverse_gaussian_pdf(2, 3, 4)
inverse_gaussian_pdf <- function(x, mu, lambda) {
  .Call(`inverse_gaussian_pdf_`, x, mu, lambda)
}

#' Inverse Gaussian Log Probability Density Function
#'
#' @param x quantile
#' @param mu mean parameter (mu > 0)
#' @param lambda scale (precision) parameter (lambda > 0)
#' @return Log probability density function value at `x`
#' @export
#' @examples
#' inverse_gaussian_lpdf(2, 3, 4)
inverse_gaussian_lpdf <- function(x, mu, lambda) {
  .Call(`inverse_gaussian_lpdf_`, x, mu, lambda)
}

#' Inverse Gaussian Cumulative Distribution Function
#'
#' @param x quantile
#' @param mu mean parameter (mu > 0)
#' @param lambda scale (precision) parameter (lambda > 0)
#' @return Cumulative distribution function value at `x`
#' @export
#' @examples
#' inverse_gaussian_cdf(2, 3, 4)
inverse_gaussian_cdf <- function(x, mu, lambda) {
  .Call(`inverse_gaussian_cdf_`, x, mu, lambda)
}

#' Inverse Gaussian Log Cumulative Distribution Function
#'
#' @param x quantile
#' @param mu mean parameter (mu > 0)
#' @param lambda scale (precision) parameter (lambda > 0)
#' @return Log cumulative distribution function value at `x`
#' @export
#' @examples
#' inverse_gaussian_lcdf(2, 3, 4)
inverse_gaussian_lcdf <- function(x, mu, lambda) {
  .Call(`inverse_gaussian_lcdf_`, x, mu, lambda)
}

#' Inverse Gaussian Quantile Function
#'
#' @param p probability (0 <= p <= 1)
#' @param mu mean parameter (mu > 0)
#' @param lambda scale (precision) parameter (lambda > 0)
#' @return Quantile function value at `p`
#' @export
#' @examples
#' inverse_gaussian_quantile(0.5, 3, 4)
inverse_gaussian_quantile <- function(p, mu, lambda) {
  .Call(`inverse_gaussian_quantile_`, p, mu, lambda)
}
