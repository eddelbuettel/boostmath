#' Airy Function Ai
#'
#' Calculates the Airy function Ai(x).
#'
#' @param x Input numeric value
#' @return The value of the Airy function Ai at x.
#' @export
airy_ai <- function(x) {
  .Call(`airy_ai_`, x)
}

#' Airy Function Bi
#'
#' Calculates the Airy function Bi(x).
#'
#' @param x Input numeric value
#' @return The value of the Airy function Bi at x.
#' @export
airy_bi <- function(x) {
  .Call(`airy_bi_`, x)
}

#' Airy Function Ai Prime
#'
#' Calculates the derivative of the Airy function Ai(x).
#'
#' @param x Input numeric value
#' @return The value of the derivative of the Airy function Ai at x.
#' @export
airy_ai_prime <- function(x) {
  .Call(`airy_ai_prime_`, x)
}

#' Airy Function Bi Prime
#'
#' Calculates the derivative of the Airy function Bi(x).
#'
#' @param x Input numeric value
#' @return The value of the derivative of the Airy function Bi at x.
#' @export
airy_bi_prime <- function(x) {
  .Call(`airy_bi_prime_`, x)
}

#' Finding Zeros of Airy Function Ai
#'
#' Finds the m-th zero of the Airy function Ai.
#'
#' @param m The index of the zero to find (1-based).
#' @return The m-th zero of the Airy function Ai.
#' @export
airy_ai_zero <- function(m) {
  .Call(`airy_ai_zero_`, m)
}

#' Finding Zeros of Airy Function Bi
#'
#' Finds the m-th zero of the Airy function Bi.
#'
#' @param m The index of the zero to find (1-based).
#' @return The m-th zero of the Airy function Bi.
#' @export
airy_bi_zero <- function(m) {
  .Call(`airy_bi_zero_`, m)
}

#' Finding Multiple Zeros of Airy Function Ai
#'
#' Finds multiple zeros of the Airy function Ai starting from a given index.
#'
#' @param start_index The starting index for the zeros (1-based).
#' @param number_of_zeros The number of zeros to find.
#' @return A numeric vector containing the zeros of the Airy function Ai.
#' @export
airy_ai_zero_multiple <- function(start_index, number_of_zeros) {
  .Call(`airy_ai_zero_multiple_`, start_index, number_of_zeros)
}

#' Finding Multiple Zeros of Airy Function Bi
#'
#' Finds multiple zeros of the Airy function Bi starting from a given index.
#'
#' @param start_index The starting index for the zeros (1-based).
#' @param number_of_zeros The number of zeros to find.
#' @return A numeric vector containing the zeros of the Airy function Bi.
#' @export
airy_bi_zero_multiple <- function(start_index, number_of_zeros) {
  .Call(`airy_bi_zero_multiple_`, start_index, number_of_zeros)
}
