#' Hyperexponential Probability Density Function
#'
#' @param x quantile
#' @param probabilities vector of probabilities (sum must be 1)
#' @param rates vector of rates (all rates must be > 0)
#' @return Probability density function value at `x`
#' @export
#' @examples
#' hyperexponential_pdf(2, c(0.5, 0.5), c(1, 2))
hyperexponential_pdf <- function(x, probabilities, rates) {
  .Call(`hyperexponential_pdf_`, x, probabilities, rates)
}

#' Hyperexponential Log Probability Density Function
#'
#' @param x quantile
#' @param probabilities vector of probabilities (sum must be 1)
#' @param rates vector of rates (all rates must be > 0)
#' @return Log probability density function value at `x`
#' @export
#' @examples
#' hyperexponential_lpdf(2, c(0.5, 0.5), c(1, 2))
hyperexponential_lpdf <- function(x, probabilities, rates) {
  .Call(`hyperexponential_lpdf_`, x, probabilities, rates)
}

#' Hyperexponential Cumulative Distribution Function
#'
#' @param x quantile
#' @param probabilities vector of probabilities (sum must be 1)
#' @param rates vector of rates (all rates must be > 0)
#' @return Cumulative distribution function value at `x`
#' @export
#' @examples
#' hyperexponential_cdf(2, c(0.5, 0.5), c(1, 2))
hyperexponential_cdf <- function(x, probabilities, rates) {
  .Call(`hyperexponential_cdf_`, x, probabilities, rates)
}

#' Hyperexponential Log Cumulative Distribution Function
#'
#' @param x quantile
#' @param probabilities vector of probabilities (sum must be 1)
#' @param rates vector of rates (all rates must be > 0)
#' @return Log cumulative distribution function value at `x`
#' @export
#' @examples
#' hyperexponential_lcdf(2, c(0.5, 0.5), c(1, 2))
hyperexponential_lcdf <- function(x, probabilities, rates) {
  .Call(`hyperexponential_lcdf_`, x, probabilities, rates)
}

#' Hyperexponential Quantile Function
#'
#' @param p probability (0 <= p <= 1)
#' @param probabilities vector of probabilities (sum must be 1)
#' @param rates vector of rates (all rates must be > 0)
#' @return Quantile function value at `p`
#' @export
#' @examples
#' hyperexponential_quantile(0.5, c(0.5, 0.5), c(1, 2))
hyperexponential_quantile <- function(p, probabilities, rates) {
  .Call(`hyperexponential_quantile_`, p, probabilities, rates)
}
