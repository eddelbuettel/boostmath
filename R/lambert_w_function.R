#' Lambert W Function (Principal Branch)
#'
#' Computes the Lambert W function for the principal branch (\eqn{W_0}).
#'
#' @param z Argument of the Lambert W function
#' @return The value of the Lambert W function \eqn{W_0(z)}.
#' @export
lambert_w0 <- function(z) {
  .Call(`lambert_w0_`, z)
}

#' Lambert W Function (Branch -1)
#'
#' Computes the Lambert W function for the branch \eqn{(W_{-1})}.
#'
#' @param z Argument of the Lambert W function
#' @return The value of the Lambert W function \eqn{W_{-1}(z)}.
#' @export
lambert_wm1 <- function(z) {
  .Call(`lambert_wm1_`, z)
}

#' Derivative of the Lambert W Function (Principal Branch)
#'
#' Computes the derivative of the Lambert W function for the principal branch (\eqn{W_0'}).
#'
#' @param z Argument of the Lambert W function
#' @return The value of the derivative of the Lambert W function \eqn{W_0'(z)}.
#' @export
lambert_w0_prime <- function(z) {
  .Call(`lambert_w0_prime_`, z)
}

#' Derivative of the Lambert W Function (Branch -1)
#'
#' Computes the derivative of the Lambert W function for the branch -1 (\eqn{W_{-1}'}).
#'
#' @param z Argument of the Lambert W function
#' @return The value of the derivative of the Lambert W function \eqn{W_{-1}'}.
#' @export
lambert_wm1_prime <- function(z) {
  .Call(`lambert_wm1_prime_`, z)
}
