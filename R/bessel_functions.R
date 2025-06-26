#' Bessel Function of the First Kind
#'
#' Calculates the Bessel function of the first kind J_v(x).
#'
#' @param v Order of the Bessel function
#' @param x Argument of the Bessel function
#' @return The value of the Bessel function of the first kind J_v(x).
#' @export
cyl_bessel_j <- function(v, x) {
  .Call(`cyl_bessel_j_`, v, x)
}

#' Bessel Function of the Second Kind
#'
#' Calculates the Bessel function of the second kind Y_v(x).
#'
#' @param v Order of the Bessel function
#' @param x Argument of the Bessel function
#' @return The value of the Bessel function of the second kind Y_v(x).
#' @export
cyl_neumann <- function(v, x) {
  .Call(`cyl_neumann_`, v, x)
}

#' Finding Zeros of Bessel Function of the First Kind
#'
#' Finds the m-th zero of the Bessel function of the first kind J_v(x).
#'
#' @param v Order of the Bessel function
#' @param m The index of the zero to find (1-based).
#' @return The m-th zero of the Bessel function of the first kind J_v(x).
#' @export
cyl_bessel_j_zero <- function(v, m) {
  .Call(`cyl_bessel_j_zero_`, v, m)
}

#' Finding Zeros of Bessel Function of the Second Kind
#'
#' Finds the m-th zero of the Bessel function of the second kind Y_v(x).
#'
#' @param v Order of the Bessel function
#' @param m The index of the zero to find (1-based).
#' @return The m-th zero of the Bessel function of the second kind Y_v
#' @export
cyl_neumann_zero <- function(v, m) {
  .Call(`cyl_neumann_zero_`, v, m)
}

#' Finding Multiple Zeros of Bessel Function of the First Kind
#'
#' Finds multiple zeros of the Bessel function of the first kind J_v(x) starting
#' from a given index.
#'
#' @param v Order of the Bessel function
#' @param start_index The starting index for the zeros (1-based).
#' @param number_of_zeros The number of zeros to find.
#' @return A numeric vector containing the zeros of the Bessel function of the
#' first kind J_v(x).
#' @export
cyl_bessel_j_zero_multiple <- function(v, start_index, number_of_zeros) {
  .Call(`cyl_bessel_j_zero_multiple_`, v, start_index, number_of_zeros)
}

#' Finding Multiple Zeros of Bessel Function of the Second Kind
#'
#' Finds multiple zeros of the Bessel function of the second kind Y_v(x) starting
#' from a given index.
#'
#' @param v Order of the Bessel function
#' @param start_index The starting index for the zeros (1-based).
#' @param number_of_zeros The number of zeros to find.
#' @return A numeric vector containing the zeros of the Bessel function of the
#' second kind Y_v(x).
#' @export
cyl_neumann_zero_multiple <- function(v, start_index, number_of_zeros) {
  .Call(`cyl_neumann_zero_multiple_`, v, start_index, number_of_zeros)
}

#' Modified Bessel Function of the First Kind
#'
#' Calculates the modified Bessel function of the first kind I_v(x).
#'
#' @param v Order of the modified Bessel function
#' @param x Argument of the modified Bessel function
#' @return The value of the modified Bessel function of the first kind I_v(x).
#' @export
cyl_bessel_i <- function(v, x) {
  .Call(`cyl_bessel_i_`, v, x)
}

#' Modified Bessel Function of the Second Kind
#'
#' Calculates the modified Bessel function of the second kind K_v(x).
#'
#' @param v Order of the modified Bessel function
#' @param x Argument of the modified Bessel function
#' @return The value of the modified Bessel function of the second kind K_v(x).
#' @export
cyl_bessel_k <- function(v, x) {
  .Call(`cyl_bessel_k_`, v, x)
}

#' Spherical Bessel Function of the First Kind
#'
#' Calculates the spherical Bessel function of the first kind j_v(x).
#'
#' @param v Order of the spherical Bessel function
#' @param x Argument of the spherical Bessel function
#' @return The value of the spherical Bessel function of the first kind j_v(x).
#' @export
sph_bessel <- function(v, x) {
  .Call(`sph_bessel_`, v, x)
}

#' Spherical Bessel Function of the Second Kind
#'
#' Calculates the spherical Bessel function of the second kind y_v(x).
#'
#' @param v Order of the spherical Bessel function
#' @param x Argument of the spherical Bessel function
#' @return The value of the spherical Bessel function of the second kind y_v(x).
#' @export
sph_neumann <- function(v, x) {
  .Call(`sph_neumann_`, v, x)
}

#' Derivative of the Bessel Function of the First Kind
#'
#' Calculates the derivative of the Bessel function of the first kind J_v(x).
#'
#' @param v Order of the Bessel function
#' @param x Argument of the Bessel function
#' @return The value of the derivative of the Bessel function of the first kind J_v(x).
#' @export
cyl_bessel_j_prime <- function(v, x) {
  .Call(`cyl_bessel_j_prime_`, v, x)
}

#' Derivative of the Bessel Function of the Second Kind
#'
#' Calculates the derivative of the Bessel function of the second kind Y_v(x).
#'
#' @param v Order of the Bessel function
#' @param x Argument of the Bessel function
#' @return The value of the derivative of the Bessel function of the second kind Y_v(x).
#' @export
cyl_neumann_prime <- function(v, x) {
  .Call(`cyl_neumann_prime_`, v, x)
}

#' Derivative of the Modified Bessel Function of the First Kind
#'
#' Calculates the derivative of the modified Bessel function of the first kind I_v(x).
#'
#' @param v Order of the modified Bessel function
#' @param x Argument of the modified Bessel function
#' @return The value of the derivative of the modified Bessel function of the first kind I_v(x).
#' @export
cyl_bessel_i_prime <- function(v, x) {
  .Call(`cyl_bessel_i_prime_`, v, x)
}

#' Derivative of the Modified Bessel Function of the Second Kind
#'
#' Calculates the derivative of the modified Bessel function of the second kind K_v(x).
#'
#' @param v Order of the modified Bessel function
#' @param x Argument of the modified Bessel function
#' @return The value of the derivative of the modified Bessel function of the second kind K_v(x).
#' @export
cyl_bessel_k_prime <- function(v, x) {
  .Call(`cyl_bessel_k_prime_`, v, x)
}

#' Derivative of the Spherical Bessel Function of the First Kind
#'
#' Calculates the derivative of the spherical Bessel function of the first kind j_v(x).
#'
#' @param v Order of the spherical Bessel function
#' @param x Argument of the spherical Bessel function
#' @return The value of the derivative of the spherical Bessel function of the first kind j_v(x).
#' @export
sph_bessel_prime <- function(v, x) {
  .Call(`sph_bessel_prime_`, v, x)
}

#' Derivative of the Spherical Bessel Function of the Second Kind
#'
#' Calculates the derivative of the spherical Bessel function of the second kind y_v(x).
#'
#' @param v Order of the spherical Bessel function
#' @param x Argument of the spherical Bessel function
#' @return The value of the derivative of the spherical Bessel function of the second kind y_v(x).
#' @export
sph_neumann_prime <- function(v, x) {
  .Call(`sph_neumann_prime_`, v, x)
}
