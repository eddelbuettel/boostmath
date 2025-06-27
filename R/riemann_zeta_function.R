#' Riemann Zeta Function
#'
#' Computes the Riemann zeta function \eqn{\(\zeta(s)\)} for argument \eqn{\(z\)}.
#'
#' @param z Real number input
#' @return The value of the Riemann zeta function \eqn{\(\zeta(z)\)}.
#' @export
zeta <- function(z) {
  .Call(`zeta_`, z)
}
