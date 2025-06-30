#' @title Numerical Integration
#' @name numerical_integration
#' @description Functions for numerical integration using various methods such as trapezoidal rule, Gauss-Legendre quadrature, and Gauss-Kronrod quadrature.
#' @param f A function to integrate. It should accept a single numeric value and return a single numeric value.
#' @param a The lower limit of integration.
#' @param b The upper limit of integration.
#' @param tol The tolerance for the approximation. Default is `.Machine$double.eps`.
#' @param max_refinements The maximum number of refinements to apply. Default is 12.
#' @param points The number of evaluation points to use in the Gauss-Legendre or Gauss-Kronrod quadrature.
#' @examples
#' # Trapezoidal rule integration of sin(x) from 0 to pi
#' trapezoidal(sin, 0, pi)
#' # Gauss-Legendre integration of exp(x) from 0 to 1
#' gauss_legendre(exp, 0, 1, points = 7)
#' # Gauss-Kronrod integration of log(x) from 1 to 2
#' gauss_kronrod(log, 1, 2, points = 5)
NULL

#' @rdname numerical_integration
#' @export
trapezoidal <- function(f, a, b, tol = .Machine$double.eps, max_refinements = 12) {
  .Call(`trapezoidal_`, f, a, b, tol, max_refinements)
}

#' @rdname numerical_integration
#' @export
gauss_legendre <- function(f, a, b, points = 7) {
  if (points > 100) {
    stop("points must be less than or equal to 100", call. = FALSE)
  }
  .Call(`gauss_legendre_`, f, a, b, points)
}

#' @rdname numerical_integration
#' @export
gauss_kronrod <- function(f, a, b, points = 5) {
  if (points < 1 || points > 100 || points %% 2 == 0) {
    stop("points must be an odd number between 1 and 100", call. = FALSE)
  }
  .Call(`gauss_kronrod_`, f, a, b, points)
}

#' @title Numerical Differentiation
#' @name numerical_differentiation
#' @description Functions for numerical differentiation using finite difference methods and complex step methods.
#' @param f A function to differentiate. It should accept a single numeric value and return a single numeric value.
#' @param x The point at which to evaluate the derivative.
#' @param order The order of accuracy of the derivative to compute. Default is 1.
#' @return The approximate value of the derivative at the point `x`.
#' @examples
#' # Finite difference derivative of sin(x) at pi/4
#' finite_difference_derivative(sin, pi / 4)
#' # Complex step derivative of exp(x) at 1.7
#' complex_step_derivative(exp, 1.7)
NULL

#' @rdname numerical_differentiation
#' @export
finite_difference_derivative <- function(f, x, order = 1) {
  if (!(order %in% c(1, 2, 4, 6, 8))) {
    stop("order must be one of: 1, 2, 4, 6, 8", call. = FALSE)
  }
  .Call(`finite_difference_derivative_`, f, x, order)
}

#' @rdname numerical_differentiation
#' @export
complex_step_derivative <- function(f, x) {
  .Call(`complex_step_derivative_`, f, x)
}
