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

#' Finite Difference Numerical Differentiation
#'
#' This function computes the numerical derivative of a function using finite differences.
#'
#' @param f A function to differentiate. It should accept a single numeric value and
#          return a single numeric value.
#' @param x The point at which to evaluate the derivative.
#' @param order The order of accuracy of the derivative to compute. Default is 1.
#' @return The approximate value of the derivative at the point `x`.
#' @export
#' @examples
#' finite_difference_derivative(sin, pi / 4)
finite_difference_derivative <- function(f, x, order = 1) {
  if (!(order %in% c(1, 2, 4, 6, 8))) {
    stop("order must be one of: 1, 2, 4, 6, 8", call. = FALSE)
  }
  .Call(`finite_difference_derivative_`, f, x, order)
}

#' Complex Step Numerical Differentiation
#'
#' This function computes the numerical derivative of a function using the complex step method.
#'
#' @param f A function to differentiate. It should accept a single complex value and
#'          return a single complex value.
#' @param x The point at which to evaluate the derivative, as a numeric (not complex) value.
#' @return The approximate value of the derivative at the point `x`.
#' @export
#' @examples
#' complex_step_derivative(exp, 1.7)
complex_step_derivative <- function(f, x) {
  .Call(`complex_step_derivative_`, f, x)
}
