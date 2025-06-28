#' Binomial Probability Density Function
#'
#' @param k number of successes (0 <= k <= n)
#' @param n number of trials (n >= 0)
#' @param prob probability of success on each trial (0 <= prob <= 1)
#' @return Probability density function value at `k`
#' @export
#' @examples
#' binomial_pdf(3, 10, 0.5)
binomial_pdf <- function(k, n, prob) {
  .Call(`binomial_pdf_`, k, n, prob)
}

#' Binomial Log Probability Density Function
#'
#' @param k number of successes (0 <= k <= n)
#' @param n number of trials (n >= 0)
#' @param prob probability of success on each trial (0 <= prob <= 1)
#' @return Log probability density function value at `k`
#' @export
#' @examples
#' binomial_lpdf(3, 10, 0.5)
binomial_lpdf <- function(k, n, prob) {
  .Call(`binomial_lpdf_`, k, n, prob)
}

#' Binomial Cumulative Distribution Function
#'
#' @param k number of successes (0 <= k <= n)
#' @param n number of trials (n >= 0)
#' @param prob probability of success on each trial (0 <= prob <= 1)
#' @return Cumulative distribution function value at `k`
#' @export
#' @examples
#' binomial_cdf(3, 10, 0.5)
binomial_cdf <- function(k, n, prob) {
  .Call(`binomial_cdf_`, k, n, prob)
}

#' Binomial Log Cumulative Distribution Function
#'
#' @param k number of successes (0 <= k <= n)
#' @param n number of trials (n >= 0)
#' @param prob probability of success on each trial (0 <= prob <= 1)
#' @return Log cumulative distribution function value at `k`
#' @export
#' @examples
#' binomial_lcdf(3, 10, 0.5)
binomial_lcdf <- function(k, n, prob) {
  .Call(`binomial_lcdf_`, k, n, prob)
}

#' Binomial Quantile Function
#'
#' @param p probability (0 <= p <= 1)
#' @param n number of trials (n >= 0)
#' @param prob probability of success on each trial (0 <= prob <= 1)
#' @return Quantile function value at `p`
#' @export
#' @examples
#' binomial_quantile(0.5, 10, 0.5)
binomial_quantile <- function(p, n, prob) {
  .Call(`binomial_quantile_`, p, n, prob)
}
