#' @title Beta Distribution Functions
#' @name beta_distribution
#' @description Functions to compute the probability density function, cumulative distribution function, and quantile function for the Beta distribution.
#' @param x quantile (0 <= x <= 1)
#' @param alpha shape parameter (alpha > 0)
#' @param beta shape parameter (beta > 0)
#' @param p probability (0 <= p <= 1)
#' @seealso [Boost Documentation](https://www.boost.org/doc/libs/1_87_0/libs/math/doc/html/math_toolkit/distributions/beta.html) for more details on the mathematical background.
#' @examples
#' # Beta distribution with shape parameters alpha = 2, beta = 5
#' beta_pdf(0.5, 2, 5)
#' beta_lpdf(0.5, 2, 5)
#' beta_cdf(0.5, 2, 5)
#' beta_lcdf(0.5, 2, 5)
#' beta_quantile(0.5, 2, 5)
NULL


#' @rdname beta_distribution
#' @export
beta_pdf <- function(x, alpha, beta) {
  .Call(`beta_pdf_`, x, alpha, beta)
}

#' @rdname beta_distribution
#' @export
beta_lpdf <- function(x, alpha, beta) {
  .Call(`beta_lpdf_`, x, alpha, beta)
}

#' @rdname beta_distribution
#' @export
beta_cdf <- function(x, alpha, beta) {
  .Call(`beta_cdf_`, x, alpha, beta)
}

#' @rdname beta_distribution
#' @export
beta_lcdf <- function(x, alpha, beta) {
  .Call(`beta_lcdf_`, x, alpha, beta)
}

#' @rdname beta_distribution
#' @export
beta_quantile <- function(p, alpha, beta) {
  .Call(`beta_quantile_`, p, alpha, beta)
}
