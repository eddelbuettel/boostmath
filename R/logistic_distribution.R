#' Logistic Probability Density Function
#'
#' @param x quantile
#' @param location location parameter (default is 0)
#' @param scale scale parameter (default is 1)
#' @return Probability density function value at `x`
#' @export
#' @examples
#' logistic_pdf(0)
logistic_pdf <- function(x, location = 0, scale = 1) {
  .Call(`logistic_pdf_`, x, location, scale)
}

#' Logistic Log Probability Density Function
#'
#' @param x quantile
#' @param location location parameter (default is 0)
#' @param scale scale parameter (default is 1)
#' @return Log probability density function value at `x`
#' @export
#' @examples
#' logistic_lpdf(0)
logistic_lpdf <- function(x, location = 0, scale = 1) {
  .Call(`logistic_lpdf_`, x, location, scale)
}

#' Logistic Cumulative Distribution Function
#'
#' @param x quantile
#' @param location location parameter (default is 0)
#' @param scale scale parameter (default is 1)
#' @return Cumulative distribution function value at `x`
#' @export
#' @examples
#' logistic_cdf(0)
logistic_cdf <- function(x, location = 0, scale = 1) {
  .Call(`logistic_cdf_`, x, location, scale)
}

#' Logistic Log Cumulative Distribution Function
#'
#' @param x quantile
#' @param location location parameter (default is 0)
#' @param scale scale parameter (default is 1)
#' @return Log cumulative distribution function value at `x`
#' @export
#' @examples
#' logistic_lcdf(0)
logistic_lcdf <- function(x, location = 0, scale = 1) {
  .Call(`logistic_lcdf_`, x, location, scale)
}

#' Logistic Quantile Function
#'
#' @param p probability (0 <= p <= 1)
#' @param location location parameter (default is 0)
#' @param scale scale parameter (default is 1)
#' @return Quantile function value at `p`
#' @export
#' @examples
#' logistic_quantile(0.5)
logistic_quantile <- function(p, location = 0, scale = 1) {
  .Call(`logistic_quantile_`, p, location, scale)
}
