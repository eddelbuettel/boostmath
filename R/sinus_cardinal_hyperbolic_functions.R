#' Sinus Cardinal Function
#'
#' Computes the sinus cardinal function \eqn{\(\text{sinc}(x) = \frac{\sin(x)}{x}\)}.
#'
#' @param x Input value
#' @return The value of the sinus cardinal function \eqn{\(\text{sinc}(x)\)}.
#' @export
sinc_pi <- function(x) {
  .Call(`sinc_pi_`, x)
}

#' Hyperbolic Sinus Cardinal Function
#'
#' Computes the hyperbolic sinus cardinal function \eqn{\(\text{sinhc}(x) = \frac{\sinh(x)}{x}\)}.
#'
#' @param x Input value
#' @return The value of the hyperbolic sinus cardinal function \eqn{\(\text{sinhc}(x)\)}.
#' @export
sinhc_pi <- function(x) {
  .Call(`sinhc_pi_`, x)
}
