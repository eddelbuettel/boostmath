#' Fisher F Distribution Probability Density Function
#'
#' @param x quantile
#' @param df1 degrees of freedom for the numerator (df1 > 0)
#' @param df2 degrees of freedom for the denominator (df2 > 0)
#' @return Probability density function value at `x`
#' @export
#' @examples
#' fisher_f_pdf(1, 5, 2)
fisher_f_pdf <- function(x, df1, df2) {
  .Call(`fisher_f_pdf_`, x, df1, df2)
}

#' Fisher F Distribution Log Probability Density Function
#'
#' @param x quantile
#' @param df1 degrees of freedom for the numerator (df1 > 0)
#' @param df2 degrees of freedom for the denominator (df2 > 0)
#' @return Log probability density function value at `x`
#' @export
#' @examples
#' fisher_f_lpdf(1, 5, 2)
fisher_f_lpdf <- function(x, df1, df2) {
  .Call(`fisher_f_lpdf_`, x, df1, df2)
}

#' Fisher F Distribution Cumulative Distribution Function
#'
#' @param x quantile
#' @param df1 degrees of freedom for the numerator (df1 > 0)
#' @param df2 degrees of freedom for the denominator (df2 > 0)
#' @return Cumulative distribution function value at `x`
#' @export
#' @examples
#' fisher_f_cdf(1, 5, 2)
fisher_f_cdf <- function(x, df1, df2) {
  .Call(`fisher_f_cdf_`, x, df1, df2)
}

#' Fisher F Distribution Log Cumulative Distribution Function
#'
#' @param x quantile
#' @param df1 degrees of freedom for the numerator (df1 > 0)
#' @param df2 degrees of freedom for the denominator (df2 > 0)
#' @return Log cumulative distribution function value at `x`
#' @export
#' @examples
#' fisher_f_lcdf(1, 5, 2)
fisher_f_lcdf <- function(x, df1, df2) {
  .Call(`fisher_f_lcdf_`, x, df1, df2)
}

#' Fisher F Distribution Quantile Function
#'
#' @param p probability (0 <= p <= 1)
#' @param df1 degrees of freedom for the numerator (df1 > 0)
#' @param df2 degrees of freedom for the denominator (df2 > 0)
#' @return Quantile function value at `p`
#' @export
#' @examples
#' fisher_f_quantile(0.5, 5, 2)
fisher_f_quantile <- function(p, df1, df2) {
  .Call(`fisher_f_quantile_`, p, df1, df2)
}
