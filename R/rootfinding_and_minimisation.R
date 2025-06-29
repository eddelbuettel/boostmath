#' Root-Finding with Bisection
#'
#' @param f A function to find the root of. It should take and return a single numeric value.
#' @param lower The lower bound of the interval to search for the root.
#' @param upper The upper bound of the interval to search for the root.
#' @param digits The number of significant digits to which the root should be found. Defaults to double precision.
#' @param max_iter The maximum number of iterations to perform. Defaults to the maximum integer value.
#' @return A three-element list containing:
#'   - `lower`: The lower bound of the interval containing the root.
#'   - `upper`: The upper bound of the interval containing the root.
#'   - `iterations`: The number of iterations performed.
#' @export
bisect <- function(f, lower, upper, digits = .Machine$double.digits, max_iter = .Machine$integer.max) {
  .Call(`bisect_`, f, lower, upper, digits, max_iter)
}

#' Root-Finding with Bracket and Solve Method
#'
#' @param f A function to find the root of. It should take and return a single numeric value.
#' @param guess A numeric value that is a guess for the root.
#' @param factor Size of steps to take when searching
#' @param rising If TRUE, the function is assumed to be rising, otherwise it is assumed to be falling.
#' @param digits The number of significant digits to which the root should be found. Defaults to double precision.
#' @param max_iter The maximum number of iterations to perform. Defaults to the maximum integer value.
#' @return A three-element list containing:
#'   - `lower`: The lower bound of the interval containing the root.
#'   - `upper`: The upper bound of the interval containing the root.
#'   - `iterations`: The number of iterations performed.
#' @export
#' @examples
#' f <- function(x) x^2 - 2
#' bracket_and_solve_root(f, guess = 1, factor = 0.1, rising = TRUE)
bracket_and_solve_root <- function(f, guess, factor, rising, digits = .Machine$double.digits, max_iter = .Machine$integer.max) {
  .Call(`bracket_and_solve_root_`, f, guess, factor, rising, digits, max_iter)
}

#' Root-Finding with the TOMS 748 Algorithm
#'
#' @param f A function to find the root of. It should take and return a single numeric value.
#' @param lower The lower bound of the interval to search for the root.
#' @param upper The upper bound of the interval to search for the root.
#' @param digits The number of significant digits to which the root should be found. Defaults to double precision.
#' @param max_iter The maximum number of iterations to perform. Defaults to the maximum integer value.
#' @return A three-element list containing:
#'   - `lower`: The lower bound of the interval containing the root.
#'   - `upper`: The upper bound of the interval containing the root.
#'   - `iterations`: The number of iterations performed.
#' @export
#' @examples
#' f <- function(x) x^2 - 2
#' toms748_solve(f, lower = 0, upper = 2)
toms748_solve <- function(f, lower, upper, digits = .Machine$double.digits, max_iter = .Machine$integer.max) {
  .Call(`toms748_solve_`, f, lower, upper, digits, max_iter)
}

#' Root-Finding with the Newton-Raphson Method
#'
#' @param f A function to find the root of. It should take a single numeric value and return a two-element numeric vector: the function value and its derivative.
#' @param guess A numeric value that is a guess for the root.
#' @param min The minimum value of the root.
#' @param max The maximum value of the root.
#' @param digits The number of significant digits to which the root should be found. Defaults to double precision.
#' @param max_iter The maximum number of iterations to perform. Defaults to the maximum integer value.
#' @return The function root, with attribute `iterations` indicating the number of iterations performed.
#' @export
#' @examples
#' f <- function(x) c(x^2 - 2, 2 * x)
#' newton_raphson_iterate(f, guess = 1, min = 0, max = 2)
newton_raphson_iterate <- function(f, guess, min, max, digits = .Machine$double.digits, max_iter = .Machine$integer.max) {
  .Call(`newton_raphson_iterate_`, f, guess, min, max, digits, max_iter)
}

#' Root-Finding with Halley's Method
#'
#' @param f A function to find the root of. It should take a single numeric value and return a three-element numeric vector: the function value, its first derivative, and its second derivative.
#' @param guess A numeric value that is a guess for the root.
#' @param min The minimum value of the root.
#' @param max The maximum value of the root.
#' @param digits The number of significant digits to which the root should be found. Defaults to double precision.
#' @param max_iter The maximum number of iterations to perform. Defaults to the maximum integer value.
#' @return The function root, with attribute `iterations` indicating the number of iterations performed.
#' @export
#' @examples
#' f <- function(x) c(x^2 - 2, 2 * x, 2)
#' halley_iterate(f, guess = 1, min = 0, max = 2)
halley_iterate <- function(f, guess, min, max, digits = .Machine$double.digits, max_iter = .Machine$integer.max) {
  .Call(`halley_iterate_`, f, guess, min, max, digits, max_iter)
}

#' Root-Finder with Schroder's Method
#'
#' @param f A function to find the root of. It should take a single numeric value and return a three-element numeric vector: the function value, its first derivative, and its second derivative.
#' @param guess A numeric value that is a guess for the root.
#' @param min The minimum value of the root.
#' @param max The maximum value of the root.
#' @param digits The number of significant digits to which the root should be found. Defaults to double precision.
#' @param max_iter The maximum number of iterations to perform. Defaults to the maximum integer value.
#' @return The function root, with attribute `iterations` indicating the number of iterations performed.
#' @export
#' @examples
#' f <- function(x) c(x^2 - 2, 2 * x, 2)
#' schroder_iterate(f, guess = 1, min = 0, max = 2)
schroder_iterate <- function(f, guess, min, max, digits = .Machine$double.digits, max_iter = .Machine$integer.max) {
  .Call(`schroder_iterate_`, f, guess, min, max, digits, max_iter)
}

#' Finding Quadratic Roots
#'
#' @param a Coefficient of the quadratic term.
#' @param b Coefficient of the linear term.
#' @param c Constant term.
#' @return A two-element numeric vector containing the two roots of the quadratic equation.
#' @export
#' @examples
#' quadratic_roots(1, -3, 2)
quadratic_roots <- function(a, b, c) {
  .Call(`quadratic_roots_`, a, b, c)
}

#' Finding Cubic Roots
#'
#' @param a Coefficient of the cubic term.
#' @param b Coefficient of the quadratic term.
#' @param c Coefficient of the linear term.
#' @param d Constant term.
#' @return A numeric vector containing the three roots of the cubic equation.
#' @export
#' @examples
#' cubic_roots(1, -6, 11, -6)
cubic_roots <- function(a, b, c, d) {
  .Call(`cubic_roots_`, a, b, c, d)
}

#' Finding Residual of a Cubic Root
#'
#' @param a Coefficient of the cubic term.
#' @param b Coefficient of the quadratic term.
#' @param c Coefficient of the linear term.
#' @param d Constant term.
#' @param root The root to evaluate the residual at.
#' @return The residual of the cubic equation at the specified root.
#' @export
#' @examples
#' cubic_root_residual(1, -6, 11, -6, 1)
cubic_root_residual <- function(a, b, c, d, root) {
  .Call(`cubic_root_residual_`, a, b, c, d, root)
}

#' Finding Condition Number of a Cubic Root
#'
#' @param a Coefficient of the cubic term.
#' @param b Coefficient of the quadratic term.
#' @param c Coefficient of the linear term.
#' @param d Constant term.
#' @param root The root to evaluate the condition number at.
#' @return The condition number of the cubic equation at the specified root.
#' @export
#' @examples
#' cubic_root_condition_number(1, -6, 11, -6, 1)
cubic_root_condition_number <- function(a, b, c, d, root) {
  .Call(`cubic_root_condition_number_`, a, b, c, d, root)
}

#' Finding Quartic Roots
#'
#' @param a Coefficient of the quartic term.
#' @param b Coefficient of the cubic term.
#' @param c Coefficient of the quadratic term.
#' @param d Coefficient of the linear term.
#' @param e Constant term.
#' @return A numeric vector containing the four roots of the quartic equation.
#' @export
#' @examples
#' quartic_roots(1, -10, 35, -50, 24)
quartic_roots <- function(a, b, c, d, e) {
  .Call(`quartic_roots_`, a, b, c, d, e)
}

#' Finding Minima using Brent's Method
#'
#' @param f A function to find the minimum of. It should take and return a single numeric value.
#' @param a The lower bound of the interval to search for the minimum.
#' @param b The upper bound of the interval to search for the minimum.
#' @param digits The number of significant digits to which the minimum should be found. Defaults to double precision.
#' @param max_iter The maximum number of iterations to perform. Defaults to the maximum integer value.
#' @return A three-element list containing:
#'   - `minimum`: The value which minimises the function.
#'   - `value`: The value of the function at the minimum.
#'   - `iterations`: The number of iterations performed.
#' @export
#' @examples
#' f <- function(x) (x - 2)^2 + 1
#' brent_find_minima(f, a = 0, b = 4)
brent_find_minima <- function(f, a, b, digits = .Machine$double.digits, max_iter = .Machine$integer.max) {
  .Call(`brent_find_minima_`, f, a, b, digits, max_iter)
}
