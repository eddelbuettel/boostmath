#' Noncentral T Probability Density Function
#'
#' @param x quantile
#' @param df degrees of freedom (df > 0)
#' @param delta noncentrality parameter (delta >= 0)
#' @return Probability density function value at `x`
#' @export
#' @examples
#' non_central_t_pdf(0, 3, 1)
non_central_t_pdf <- function(x, df, delta) {
  .Call(`non_central_t_pdf_`, x, df, delta)
}

#' Noncentral T Log Probability Density Function
#'
#' @param x quantile
#' @param df degrees of freedom (df > 0)
#' @param delta noncentrality parameter (delta >= 0)
#' @return Log probability density function value at `x`
#' @export
#' @examples
#' non_central_t_lpdf(0, 3, 1)
non_central_t_lpdf <- function(x, df, delta) {
  .Call(`non_central_t_lpdf_`, x, df, delta)
}

#' Noncentral T Cumulative Distribution Function
#'
#' @param x quantile
#' @param df degrees of freedom (df > 0)
#' @param delta noncentrality parameter (delta >= 0)
#' @return Cumulative distribution function value at `x`
#' @export
#' @examples
#' non_central_t_cdf(0, 3, 1)
non_central_t_cdf <- function(x, df, delta) {
  .Call(`non_central_t_cdf_`, x, df, delta)
}

#' Noncentral T Log Cumulative Distribution Function
#'
#' @param x quantile
#' @param df degrees of freedom (df > 0)
#' @param delta noncentrality parameter (delta >= 0)
#' @return Log cumulative distribution function value at `x`
#' @export
#' @examples
#' non_central_t_lcdf(0, 3, 1)
non_central_t_lcdf <- function(x, df, delta) {
  .Call(`non_central_t_lcdf_`, x, df, delta)
}

#' Noncentral T Quantile Function
#'
#' @param p probability (0 <= p <= 1)
#' @param df degrees of freedom (df > 0)
#' @param delta noncentrality parameter (delta >= 0)
#' @return Quantile function value at `p`
#' @export
#' @examples
#' non_central_t_quantile(0.5, 3, 1)
non_central_t_quantile <- function(p, df, delta) {
  .Call(`non_central_t_quantile_`, p, df, delta)
}
