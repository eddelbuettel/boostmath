#' Negative Binomial Probability Density Function
#'
#' @param x number of failures (x >= 0)
#' @param successes number of successes (successes >= 0)
#' @param success_fraction probability of success on each trial (0 <= success_fraction <= 1)
#' @return Probability density function value at `x`
#' @export
#' @examples
#' negative_binomial_pdf(3, 5, 0.5)
negative_binomial_pdf <- function(x, successes, success_fraction) {
  .Call(`negative_binomial_pdf`, x, successes, success_fraction)
}

#' Negative Binomial Log Probability Density Function
#'
#' @param x number of failures (x >= 0)
#' @param successes number of successes (successes >= 0)
#' @param success_fraction probability of success on each trial (0 <= success_fraction <= 1)
#' @return Log probability density function value at `x`
#' @export
#' @examples
#' negative_binomial_lpdf(3, 5, 0.5)
negative_binomial_lpdf <- function(x, successes, success_fraction) {
  .Call(`negative_binomial_lpdf`, x, successes, success_fraction)
}

#' Negative Binomial Cumulative Distribution Function
#'
#' @param x number of failures (x >= 0)
#' @param successes number of successes (successes >= 0)
#' @param success_fraction probability of success on each trial (0 <= success_fraction <= 1)
#' @return Cumulative distribution function value at `x`
#' @export
#' @examples
#' negative_binomial_cdf(3, 5, 0.5)
negative_binomial_cdf <- function(x, successes, success_fraction) {
  .Call(`negative_binomial_cdf`, x, successes, success_fraction)
}

#' Negative Binomial Log Cumulative Distribution Function
#'
#' @param x number of failures (x >= 0)
#' @param successes number of successes (successes >= 0)
#' @param success_fraction probability of success on each trial (0 <= success_fraction <= 1)
#' @return Log cumulative distribution function value at `x`
#' @export
#' @examples
#' negative_binomial_lcdf(3, 5, 0.5)
negative_binomial_lcdf <- function(x, successes, success_fraction) {
  .Call(`negative_binomial_lcdf`, x, successes, success_fraction)
}

#' Negative Binomial Quantile Function
#'
#' @param p probability (0 <= p <= 1)
#' @param successes number of successes (successes >= 0)
#' @param success_fraction probability of success on each trial (0 <= success_fraction <= 1)
#' @return Quantile function value at `p`
#' @export
#' @examples
#' negative_binomial_quantile(0.5, 5, 0.5)
negative_binomial_quantile <- function(p, successes, success_fraction) {
  .Call(`negative_binomial_quantile`, p, successes, success_fraction)
}
