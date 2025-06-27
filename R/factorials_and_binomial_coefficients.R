#' Factorial
#'
#' Computes the factorial of a non-negative integer.
#'
#' @param i Non-negative integer input
#' @return The factorial of the input integer.
#' @export
factorial_boost <- function(i) {
  .Call(`factorial_`, i)
}

#' Factorial without checks (table lookup)
#'
#' Computes the factorial of a non-negative integer without input validation
#' using a table lookup for performance.
#'
#' @param i Non-negative integer input
#' @return The factorial of the input integer.
#' @export
unchecked_factorial <- function(i) {
  .Call(`unchecked_factorial_`, i)
}

#' Maximum Factorial Lookup Value
#'
#' Returns the maximum value for which factorials are precomputed.
#'
#' @return The maximum factorial value that can be computed.
#' @export
max_factorial <- function() {
  .Call(`max_factorial_`)
}

#' Double Factorial
#'
#' Computes the double factorial of a non-negative integer.
#'
#' @param i Non-negative integer input
#' @return The double factorial of the input integer.
#' @export
double_factorial <- function(i) {
  .Call(`double_factorial_`, i)
}

#' Rising Factorial
#'
#' Computes the rising factorial (also known as Pochhammer symbol) of a number.
#'
#' @param x Base value
#' @param i Exponent (non-negative integer)
#' @return The value of the rising factorial.
#' @export
rising_factorial <- function(x, i) {
  .Call(`rising_factorial_`, x, i)
}

#' Falling Factorial
#'
#' Computes the falling factorial of a number.
#'
#' @param x Base value
#' @param i Exponent (non-negative integer)
#' @return The value of the falling factorial.
#' @export
falling_factorial <- function(x, i) {
  .Call(`falling_factorial_`, x, i)
}

#' Binomial Coefficient
#'
#' Computes the binomial coefficient "n choose k", which is the number of ways to choose k elements from a set of n elements.
#'
#' @param n Total number of elements
#' @param k Number of elements to choose
#' @return The binomial coefficient C(n, k).
#' @export
binomial_coefficient <- function(n, k) {
  .Call(`binomial_coefficient_`, n, k)
}
