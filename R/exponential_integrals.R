#' Exponential Integral En
#'
#' Computes the exponential integral En.
#'
#' @param n Order of the integral
#' @param z Argument of the integral
#' @return The value of the exponential integral En.
#' @export
expint_en <- function(n, z) {
  .Call(`expint_en_`, n, z)
}

#' Exponential Integral Ei
#'
#' Computes the exponential integral Ei.
#'
#' @param z Argument of the integral
#' @return The value of the exponential integral Ei.
#' @export
expint_ei <- function(z) {
  .Call(`expint_ei_`, z)
}
