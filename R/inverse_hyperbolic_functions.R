#' Inverse Hyperbolic Cosine Function
#'
#' Computes the inverse hyperbolic cosine function acosh(x).
#'
#' @param x Input numeric value
#' @return The value of the inverse hyperbolic cosine function acosh at x.
#' @export
acosh <- function(x) {
  .Call(`acosh_`, x)
}

#' Inverse Hyperbolic Sine Function
#'
#' Computes the inverse hyperbolic sine function asinh(x).
#'
#' @param x Input numeric value
#' @return The value of the inverse hyperbolic sine function asinh at x.
#' @export
asinh <- function(x) {
  .Call(`asinh_`, x)
}

#' Inverse Hyperbolic Tangent Function
#'
#' Computes the inverse hyperbolic tangent function atanh(x).
#'
#' @param x Input numeric value
#' @return The value of the inverse hyperbolic tangent function atanh at x.
#' @export
atanh <- function(x) {
  .Call(`atanh_`, x)
}
