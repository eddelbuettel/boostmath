#' Euler Beta Function
#'
#' Calculates the Euler beta function B(a, b).
#'
#' @param a First parameter of the beta function
#' @param b Second parameter of the beta function
#' @return The value of the Euler beta function B(a, b).
#' @export
boost_beta <- function(a, b) {
  .Call(`beta_`, a, b)
}

#' Normalised Incomplete Beta Function
#'
#' Calculates the normalised incomplete beta function I_x(a, b).
#'
#' @param a First parameter of the beta function
#' @param b Second parameter of the beta function
#' @param x Upper limit of integration
#' @return The value of the normalised incomplete beta function I_x(a, b).
#' @export
ibeta <- function(a, b, x) {
  .Call(`ibeta_`, a, b, x)
}

#' Normalised Complement of the Incomplete Beta Function
#'
#' Calculates the normalised complement of the incomplete beta function 1 - I_x(a, b).
#'
#' @param a First parameter of the beta function
#' @param b Second parameter of the beta function
#' @param x Upper limit of integration
#' @return The value of the normalised complement of the incomplete beta function 1 - I_x(a, b).
#' @export
ibetac <- function(a, b, x) {
  .Call(`ibetac_`, a, b, x)
}

#' Full (Non-normalised) Incomplete Beta Function
#'
#' Calculates the full incomplete beta function B_x(a, b).
#'
#' @param a First parameter of the beta function
#' @param b Second parameter of the beta function
#' @param x Upper limit of integration
#' @return The value of the full incomplete beta function B_x(a, b).
#' @export
beta_incomplete <- function(a, b, x) {
  .Call(`beta_incomplete_`, a, b, x)
}

#' Full (Non-normalised) Complement of the Incomplete Beta Function
#'
#' Calculates the full complement of the incomplete beta function 1 - B_x(a, b).
#'
#' @param a First parameter of the beta function
#' @param b Second parameter of the beta function
#' @param x Upper limit of integration
#' @return The value of the full complement of the incomplete beta function 1 - B_x(a, b).
#' @export
betac <- function(a, b, x) {
  .Call(`betac_`, a, b, x)
}

#' Inverse of the Normalised Incomplete Beta Function
#'
#' Calculates the inverse of the normalised incomplete beta function I_x(a, b) = p.
#'
#' @param a First parameter of the beta function
#' @param b Second parameter of the beta function
#' @param p Probability value
#' @return The value of x such that I_x(a, b) = p.
#' @export
ibeta_inv <- function(a, b, p) {
  .Call(`ibeta_inv_`, a, b, p)
}

#' Inverse of the Normalised Complement of the Incomplete Beta Function
#'
#' Calculates the inverse of the normalised complement of the incomplete beta function I_x(a, b) = q.
#'
#' @param a First parameter of the beta function
#' @param b Second parameter of the beta function
#' @param q Probability value
#' @return The value of x such that I_x(a, b) = q.
#' @export
ibetac_inv <- function(a, b, q) {
  .Call(`ibetac_inv_`, a, b, q)
}

#' Inverse of the Normalised Incomplete Beta Function with respect to a
#'
#' Calculates the inverse of the normalised incomplete beta function I_x(a, b) = p with respect to a.
#'
#' @param b Second parameter of the beta function
#' @param x Upper limit of integration
#' @param p Probability value
#' @return The value of a such that I_x(a, b) = p.
#' @export
ibeta_inva <- function(b, x, p) {
  .Call(`ibeta_inva_`, b, x, p)
}

#' Inverse of the Normalised Complement of the Incomplete Beta Function with respect to a
#'
#' Calculates the inverse of the normalised complement of the incomplete beta function I_x(a, b) = q with respect to a.
#'
#' @param b Second parameter of the beta function
#' @param x Upper limit of integration
#' @param q Probability value
#' @return The value of a such that I_x(a, b) = q.
#' @export
ibetac_inva <- function(b, x, q) {
  .Call(`ibetac_inva_`, b, x, q)
}

#' Inverse of the Normalised Incomplete Beta Function with respect to b
#'
#' Calculates the inverse of the normalised incomplete beta function I_x(a, b) = p with respect to b.
#'
#' @param a First parameter of the beta function
#' @param x Upper limit of integration
#' @param p Probability value
#' @return The value of b such that I_x(a, b) = p.
#' @export
ibeta_invb <- function(a, x, p) {
  .Call(`ibeta_invb_`, a, x, p)
}

#' Inverse of the Normalised Complement of the Incomplete Beta Function with respect to b
#'
#' Calculates the inverse of the normalised complement of the incomplete beta function I_x(a, b) = q with respect to b.
#' @param a First parameter of the beta function
#' @param x Upper limit of integration
#' @param q Probability value
#' @return The value of b such that I_x(a, b) = q.
#' @export
ibetac_invb <- function(a, x, q) {
  .Call(`ibetac_invb_`, a, x, q)
}

#' Derivative of the Incomplete Beta Function
#'
#' Calculates the derivative of the incomplete beta function with respect to x.
#'
#' @param a First parameter of the beta function
#' @param b Second parameter of the beta function
#' @param x Upper limit of integration
#' @return The value of the derivative of the incomplete beta function with respect to x.
#' @export
ibeta_derivative <- function(a, b, x) {
  .Call(`ibeta_derivative_`, a, b, x)
}
