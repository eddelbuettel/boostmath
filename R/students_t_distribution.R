#' Student's t Probability Density Function
#'
#' @param x quantile
#' @param df degrees of freedom (default is 1)
#' @return Probability density function value at `x`
#' @export
#' @examples
#' students_t_pdf(0, 3)
students_t_pdf <- function(x, df = 1) {
  .Call(`students_t_pdf_`, x, df)
}

#' Student's t Log Probability Density Function
#'
#' @param x quantile
#' @param df degrees of freedom (default is 1)
#' @return Log probability density function value at `x`
#' @export
#' @examples
#' students_t_lpdf(0, 3)
students_t_lpdf <- function(x, df = 1) {
  .Call(`students_t_lpdf_`, x, df)
}

#' Student's t Cumulative Distribution Function
#'
#' @param x quantile
#' @param df degrees of freedom (default is 1)
#' @return Cumulative distribution function value at `x`
#' @export
#' @examples
#' students_t_cdf(0, 3)
students_t_cdf <- function(x, df = 1) {
  .Call(`students_t_cdf_`, x, df)
}

#' Student's t Log Cumulative Distribution Function
#'
#' @param x quantile
#' @param df degrees of freedom (default is 1)
#' @return Log cumulative distribution function value at `x`
#' @export
#' @examples
#' students_t_lcdf(0, 3)
students_t_lcdf <- function(x, df = 1) {
  .Call(`students_t_lcdf_`, x, df)
}

#' Student's t Quantile Function
#'
#' @param p probability (0 <= p <= 1)
#' @param df degrees of freedom (default is 1)
#' @return Quantile function value at `p`
#' @export
#' @examples
#' students_t_quantile(0.5, 3)
students_t_quantile <- function(p, df = 1) {
  .Call(`students_t_quantile_`, p, df)
}
