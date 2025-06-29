#' Inverse Gamma Probability Density Function
#'
#' @param x quantile
#' @param shape shape parameter (shape > 0)
#' @param scale scale parameter (scale > 0)
#' @return Probability density function value at `x`
#' @export
#' @examples
#' inverse_gamma_pdf(2, 3, 4)
inverse_gamma_pdf <- function(x, shape, scale) {
  .Call(`inverse_gamma_pdf_`, x, shape, scale)
}

#' Inverse Gamma Log Probability Density Function
#'
#' @param x quantile
#' @param shape shape parameter (shape > 0)
#' @param scale scale parameter (scale > 0)
#' @return Log probability density function value at `x`
#' @export
#' @examples
#' inverse_gamma_lpdf(2, 3, 4)
inverse_gamma_lpdf <- function(x, shape, scale) {
  .Call(`inverse_gamma_lpdf_`, x, shape, scale)
}

#' Inverse Gamma Cumulative Distribution Function
#'
#' @param x quantile
#' @param shape shape parameter (shape > 0)
#' @param scale scale parameter (scale > 0)
#' @return Cumulative distribution function value at `x`
#' @export
#' @examples
#' inverse_gamma_cdf(2, 3, 4)
inverse_gamma_cdf <- function(x, shape, scale) {
  .Call(`inverse_gamma_cdf_`, x, shape, scale)
}

#' Inverse Gamma Log Cumulative Distribution Function
#'
#' @param x quantile
#' @param shape shape parameter (shape > 0)
#' @param scale scale parameter (scale > 0)
#' @return Log cumulative distribution function value at `x`
#' @export
#' @examples
#' inverse_gamma_lcdf(2, 3, 4)
inverse_gamma_lcdf <- function(x, shape, scale) {
  .Call(`inverse_gamma_lcdf_`, x, shape, scale)
}

#' Inverse Gamma Quantile Function
#'
#' @param p probability (0 <= p <= 1)
#' @param shape shape parameter (shape > 0)
#' @param scale scale parameter (scale > 0)
#' @return Quantile function value at `p`
#' @export
#' @examples
#' inverse_gamma_quantile(0.5, 3, 4)
inverse_gamma_quantile <- function(p, shape, scale) {
  .Call(`inverse_gamma_quantile_`, p, shape, scale)
}
