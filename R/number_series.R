#' Bernoulli Numbers (B_{2n})
#'
#' Computes the Bernoulli numbers \(B_{2n}\) for even indices.
#'
#' @param n Index of the Bernoulli number (must be a non-negative integer)
#' @return The value of the Bernoulli number \(B_{2n}\).
#' @export
bernoulli_b2n <- function(n) {
  .Call(`bernoulli_b2n_`, n)
}

#' Maximum Bernoulli Number (B_{2n}) in Lookup Table
#'
#' Returns the maximum index \(n\) for which Bernoulli numbers \(B_{2n}\) are precomputed.
#'
#' @return The maximum index \(n\) for which Bernoulli numbers \(B_{2n}\) can be computed.
#' @export
max_bernoulli_b2n <- function() {
  .Call(`max_bernoulli_b2n_`)
}

#' Bernoulli Numbers (B_{2n}) Lookup Table (Unchecked)
#'
#' Computes the Bernoulli numbers \(B_{2n}\) for even indices without bounds checking.
#'
#' @param n Index of the Bernoulli number (must be a non-negative integer)
#' @return The value of the Bernoulli number \(B_{2n}\).
#' @export
unchecked_bernoulli_b2n <- function(n) {
  .Call(`unchecked_bernoulli_b2n_`, n)
}

#' Bernoulli Numbers (B_{2n}) Range
#'
#' Computes a range of Bernoulli numbers \(B_{2n}\) starting from a given index.
#'
#' @param start_index The starting index for the Bernoulli numbers (must be a non-negative integer)
#' @param number_of_bernoullis_b2n The number of Bernoulli numbers to compute
#' @return A numeric vector containing the Bernoulli numbers \(B_{2n}\) for the specified range.
#' @export
bernoulli_b2n_range <- function(start_index, number_of_bernoullis_b2n) {
  .Call(`bernoulli_b2n_range_`, start_index, number_of_bernoullis_b2n)
}

#' Tangent Numbers (T_{2n})
#'
# Computes the tangent numbers \(T_{2n}\) for even indices.
#'
#' @param n Index of the tangent number (must be a non-negative integer)
#' @return The value of the tangent number \(T_{2n}\).
#' @export
tangent_t2n <- function(n) {
  .Call(`tangent_t2n_`, n)
}

#' Tangent Numbers (T_{2n}) Range
#'
#' Computes a range of tangent numbers \(T_{2n}\) starting from a given index.
#'
#' @param start_index The starting index for the tangent numbers (must be a non-negative integer)
#' @param number_of_tangent_t2n The number of tangent numbers to compute
#' @return A numeric vector containing the tangent numbers \(T_{2n}\) for the specified range.
#' @export
tangent_t2n_range <- function(start_index, number_of_tangent_t2n) {
  .Call(`tangent_t2n_range_`, start_index, number_of_tangent_t2n)
}

#' Lookup Table of Prime Numbers
#'
#' Computes the n-th prime number using a lookup table.
#'
#' @param n Index of the prime number (must be a positive integer)
#' @return The n-th prime number.
#' @export
prime <- function(n) {
  .Call(`prime_`, n)
}

#' Largest Prime Number in Lookup Table
#'
#' Returns the largest n-th prime number that can be computed using the lookup table.
#'
#' @return The largest n-th prime number available in the lookup table.
#' @export
max_prime <- function() {
  .Call(`max_prime_`)
}

#' Fibonacci Number
#'
#' Computes the n-th Fibonacci number, checking for overflow before computation.
#'
#' @param n Index of the Fibonacci number (must be a non-negative integer)
#' @return The n-th Fibonacci number.
#' @export
fibonacci <- function(n) {
  .Call(`fibonacci_`, n)
}

#' Fibonacci Number (Unchecked)
#'
#' Computes the n-th Fibonacci number without checking for overflow.
#'
#' @param n Index of the Fibonacci number (must be a non-negative integer)
#' @return The n-th Fibonacci number.
#' @export
unchecked_fibonacci <- function(n) {
  .Call(`unchecked_fibonacci_`, n)
}
