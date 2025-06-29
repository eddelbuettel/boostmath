#' Noncentral Chi-Squared Probability Density Function
#'
#' @param x quantile
#' @param df degrees of freedom (df > 0)
#' @param lambda noncentrality parameter (lambda >= 0)
#' @return Probability density function value at `x`
#' @export
#' @examples
#' non_central_chi_squared_pdf(2, 3, 1)
non_central_chi_squared_pdf <- function(x, df, lambda) {
  .Call(`non_central_chi_squared_pdf_`, x, df, lambda)
}

#' Noncentral Chi-Squared Log Probability Density Function
#'
#' @param x quantile
#' @param df degrees of freedom (df > 0)
#' @param lambda noncentrality parameter (lambda >= 0)
#' @return Log probability density function value at `x`
#' @export
#' @examples
#' non_central_chi_squared_lpdf(2, 3, 1)
non_central_chi_squared_lpdf <- function(x, df, lambda) {
  .Call(`non_central_chi_squared_lpdf_`, x, df, lambda)
}

#' Noncentral Chi-Squared Cumulative Distribution Function
#'
#' @param x quantile
#' @param df degrees of freedom (df > 0)
#' @param lambda noncentrality parameter (lambda >= 0)
#' @return Cumulative distribution function value at `x`
#' @export
#' @examples
#' non_central_chi_squared_cdf(2, 3, 1)
non_central_chi_squared_cdf <- function(x, df, lambda) {
  .Call(`non_central_chi_squared_cdf_`, x, df, lambda)
}

#' Noncentral Chi-Squared Log Cumulative Distribution Function
#'
#' @param x quantile
#' @param df degrees of freedom (df > 0)
#' @param lambda noncentrality parameter (lambda >= 0)
#' @return Log cumulative distribution function value at `x`
#' @export
#' @examples
#' non_central_chi_squared_lcdf(2, 3, 1)
non_central_chi_squared_lcdf <- function(x, df, lambda) {
  .Call(`non_central_chi_squared_lcdf_`, x, df, lambda)
}

#' Noncentral Chi-Squared Quantile Function
#'
#' @param p probability (0 <= p <= 1)
#' @param df degrees of freedom (df > 0)
#' @param lambda noncentrality parameter (lambda >= 0)
#' @return Quantile function value at `p`
#' @export
#' @examples
#' non_central_chi_squared_quantile(0.5, 3, 1)
non_central_chi_squared_quantile <- function(p, df, lambda) {
  .Call(`non_central_chi_squared_quantile_`, p, df, lambda)
}
