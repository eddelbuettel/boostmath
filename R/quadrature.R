#' Trapezoidal Rule for Numerical Integration
#'
#' This function approximates the integral of a function using the trapezoidal rule.
#'
#' @param f A function to integrate. It should accept a single numeric value and
#'          return a single numeric value.
#' @param a The lower limit of integration.
#' @param b The upper limit of integration.
#' @param tol The tolerance for the approximation. Default is `.Machine$double.eps`.
#' @param max_refinements The maximum number of refinements to apply. Default is 12.
#'
#' @return The approximate value of the integral.
#' @export
trapezoidal <- function(f, a, b, tol = .Machine$double.eps, max_refinements = 12) {
  .Call(`trapezoidal_`, f, a, b, tol, max_refinements)
}

#' Gauss-Legendre Quadrature for Numerical Integration
#'
#' This function performs non-adaptive Gauss-Legendre integration using a
#' specified number of evaluation points.
#'
#' @param f A function to integrate. It should accept a single numeric value and
#'          return a single numeric value.
#' @param a The lower limit of integration.
#' @param b The upper limit of integration.
#' @param points The number of evaluation points to use in the Gauss-Legendre
#'               quadrature. Default is 7.
#' @return The approximate value of the integral.
#' @export
gauss_legendre <- function(f, a, b, points = 7) {
  if (points > 100) {
    stop("points must be less than or equal to 100", call. = FALSE)
  }
  .Call(`gauss_legendre_`, f, a, b, points)
}

#' Gauss-Kronrod Quadrature for Numerical Integration
#'
#' Performs adaptive Gauss-Kronrod integration using a specified number of evaluation points.
#'
#' @param f A function to integrate. It should accept a single numeric value and
#'          return a single numeric value.
#' @param a The lower limit of integration.
#' @param b The upper limit of integration.
#' @param points The number of evaluation points to use in the Gauss-Kronrod
#'               quadrature. Must be an odd number between 1 and 100.
#' @return The approximate value of the integral.
#' @export
gauss_kronrod <- function(f, a, b, points = 5) {
  if (points < 1 || points > 100 || points %% 2 == 0) {
    stop("points must be an odd number between 1 and 100", call. = FALSE)
  }
  .Call(`gauss_kronrod_`, f, a, b, points)
}

#' Tanh-Sinh Quadrature for Numerical Integration
#'
#' This function performs integration using a tanh-sinh quadrature routine.
#'
#' @param f A function to integrate. It should accept a single numeric value and
#          return a single numeric value.
#' @param a The lower limit of integration.
#' @param b The upper limit of integration.
#' @param tol The tolerance for the approximation. Default is `.Machine$double.eps`.
#' @param max_refinements The maximum number of refinements to apply. Default is 15.
#'
#' @return The approximate value of the integral.
#' @export
tanh_sinh <- function(f, a, b, tol = .Machine$double.eps, max_refinements = 15) {
  .Call(`tanh_sinh_`, f, a, b, tol, max_refinements)
}

#' Sinh-Sinh Quadrature for Numerical Integration
#'
#' This function performs integration using a sinh-sinh quadrature routine.
#'
#' @param f A function to integrate. It should accept a single numeric value and
#'          return a single numeric value.
#' @param tol The tolerance for the approximation. Default is `.Machine$double.eps`.
#' @param max_refinements The maximum number of refinements to apply. Default is 9.
#'
#' @return The approximate value of the integral.
#' @export
sinh_sinh <- function(f, tol = .Machine$double.eps, max_refinements = 9) {
  .Call(`sinh_sinh_`, f, tol, max_refinements)
}

#' Exp-Sinh Quadrature for Numerical Integration
#'
#' This function performs integration using an exp-sinh quadrature routine.
#'
#' @param f A function to integrate. It should accept a single numeric value and
#'          return a single numeric value.
#' @param a The lower limit of integration.
#' @param b The upper limit of integration.
#' @param tol The tolerance for the approximation. Default is `.Machine$double.eps`.
#' @param max_refinements The maximum number of refinements to apply. Default is 9.
#'
#' @return The approximate value of the integral.
#' @export
exp_sinh <- function(f, a, b, tol = .Machine$double.eps, max_refinements = 9) {
  .Call(`exp_sinh_`, f, a, b, tol, max_refinements)
}
