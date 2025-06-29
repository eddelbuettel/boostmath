#' Inverse Chi-Squared Probability Density Function
#'
#' @param x quantile
#' @param df degrees of freedom (df > 0)
#' @param scale scale parameter (default is 1)
#' @return Probability density function value at `x`
#' @export
#' @examples
#' inverse_chi_squared_pdf(2, 3, 1)
inverse_chi_squared_pdf <- function(x, df, scale = 1) {
  .Call(`inverse_chi_squared_pdf_`, x, df, scale)
}

#' Inverse Chi-Squared Log Probability Density Function
#'
#' @param x quantile
#' @param df degrees of freedom (df > 0)
#' @param scale scale parameter (default is 1)
#' @return Log probability density function value at `x`
#' @export
#' @examples
#' inverse_chi_squared_lpdf(2, 3, 1)
inverse_chi_squared_lpdf <- function(x, df, scale = 1) {
  .Call(`inverse_chi_squared_lpdf_`, x, df, scale)
}

#' Inverse Chi-Squared Cumulative Distribution Function
#'
#' @param x quantile
#' @param df degrees of freedom (df > 0)
#' @param scale scale parameter (default is 1)
#' @return Cumulative distribution function value at `x`
#' @export
#' @examples
#' inverse_chi_squared_cdf(2, 3, 1)
inverse_chi_squared_cdf <- function(x, df, scale = 1) {
  .Call(`inverse_chi_squared_cdf_`, x, df, scale)
}

#' Inverse Chi-Squared Log Cumulative Distribution Function
#'
#' @param x quantile
#' @param df degrees of freedom (df > 0)
#' @param scale scale parameter (default is 1)
#' @return Log cumulative distribution function value at `x`
#' @export
#' @examples
#' inverse_chi_squared_lcdf(2, 3, 1)
inverse_chi_squared_lcdf <- function(x, df, scale = 1) {
  .Call(`inverse_chi_squared_lcdf_`, x, df, scale)
}

#' Inverse Chi-Squared Quantile Function
#'
#' @param p probability (0 <= p <= 1)
#' @param df degrees of freedom (df > 0)
#' @param scale scale parameter (default is 1)
#' @return Quantile function value at `p`
#' @export
#' @examples
#' inverse_chi_squared_quantile(0.5, 3, 1)
inverse_chi_squared_quantile <- function(p, df, scale = 1) {
  .Call(`inverse_chi_squared_quantile_`, p, df, scale)
}
