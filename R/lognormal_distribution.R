#' Log Normal Probability Density Function
#'
#' @param x quantile
#' @param location location parameter (default is 0)
#' @param scale scale parameter (default is 1)
#' @return Probability density function value at `x`
#' @export
#' @examples
#' lognormal_pdf(0)
lognormal_pdf <- function(x, location = 0, scale = 1) {
  .Call(`lognormal_pdf_`, x, location, scale)
}

#' Log Normal Log Probability Density Function
#'
#' @param x quantile
#' @param location location parameter (default is 0)
#' @param scale scale parameter (default is 1)
#' @return Log probability density function value at `x`
#' @export
#' @examples
#' lognormal_lpdf(0)
lognormal_lpdf <- function(x, location = 0, scale = 1) {
  .Call(`lognormal_lpdf_`, x, location, scale)
}

#' Log Normal Cumulative Distribution Function
#'
#' @param x quantile
#' @param location location parameter (default is 0)
#' @param scale scale parameter (default is 1)
#' @return Cumulative distribution function value at `x`
#' @export
#' @examples
#' lognormal_cdf(0)
lognormal_cdf <- function(x, location = 0, scale = 1) {
  .Call(`lognormal_cdf_`, x, location, scale)
}

#' Log Normal Log Cumulative Distribution Function
#'
#' @param x quantile
#' @param location location parameter (default is 0)
#' @param scale scale parameter (default is 1)
#' @return Log cumulative distribution function value at `x`
#' @export
#' @examples
#' lognormal_lcdf(0)
lognormal_lcdf <- function(x, location = 0, scale = 1) {
  .Call(`lognormal_lcdf_`, x, location, scale)
}

#' Log Normal Quantile Function
#'
#' @param p probability (0 <= p <= 1)
#' @param location location parameter (default is 0)
#' @param scale scale parameter (default is 1)
#' @return Quantile function value at `p`
#' @export
#' @examples
#' lognormal_quantile(0.5)
lognormal_quantile <- function(p, location = 0, scale = 1) {
  .Call(`lognormal_quantile_`, p, location, scale)
}
