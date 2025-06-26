#' Carlson's Elliptic Integral Rf
#'
#' Computes Carlson's elliptic integral Rf.
#'
#' @param x First parameter of the integral
#' @param y Second parameter of the integral
#' @param z Third parameter of the integral
#' @return The value of Carlson's elliptic integral Rf.
#' @export
ellint_rf <- function(x, y, z) {
  .Call(`ellint_rf_`, x, y, z)
}

#' Carlson's Elliptic Integral Rd
#'
#' Computes Carlson's elliptic integral Rd.
#'
#' @param x First parameter of the integral
#' @param y Second parameter of the integral
#' @param z Third parameter of the integral
#' @return The value of Carlson's elliptic integral Rd.
#' @export
ellint_rd <- function(x, y, z) {
  .Call(`ellint_rd_`, x, y, z)
}

#' Carlson's Elliptic Integral Rj
#'
#' Computes Carlson's elliptic integral Rj.
#'
#' @param x First parameter of the integral
#' @param y Second parameter of the integral
#' @param z Third parameter of the integral
#' @param p Fourth parameter of the integral
#' @return The value of Carlson's elliptic integral Rj.
#' @export
ellint_rj <- function(x, y, z, p) {
  .Call(`ellint_rj_`, x, y, z, p)
}

#' Carlson's Elliptic Integral Rc
#'
#' Computes Carlson's elliptic integral Rc.
#'
#' @param x First parameter of the integral
#' @param y Second parameter of the integral
#' @return The value of Carlson's elliptic integral Rc.
#' @export
ellint_rc <- function(x, y) {
  .Call(`ellint_rc_`, x, y)
}

#' Carlson's Elliptic Integral Rg
#'
#' Computes Carlson's elliptic integral Rg.
#'
#' @param x First parameter of the integral
#' @param y Second parameter of the integral
#' @param z Third parameter of the integral
#' @return The value of Carlson's elliptic integral Rg.
#' @export
ellint_rg <- function(x, y, z) {
  .Call(`ellint_rg_`, x, y, z)
}

#' Incomplete Elliptic Integral of the First Kind - Legendre's Form
#'
#' Computes the incomplete elliptic integral of the first kind in Legendre's form.
#'
#' @param k Elliptic modulus
#' @param phi Amplitude
#' @return The value of the incomplete elliptic integral of the first kind.
#' @export
ellint_1_incomplete <- function(k, phi) {
  .Call(`ellint_1_incomplete_`, k, phi)
}

#' Complete Elliptic Integral of the First Kind
#'
#' Computes the complete elliptic integral of the first kind.
#'
#' @param k Elliptic modulus
#' @return The value of the complete elliptic integral of the first kind.
#' @export
ellint_1 <- function(k) {
  .Call(`ellint_1_`, k)
}

#' Incomplete Elliptic Integral of the Second Kind - Legendre's Form
#'
#' Computes the incomplete elliptic integral of the second kind in Legendre's form.
#'
#' @param k Elliptic modulus
#' @param phi Amplitude
#' @return The value of the incomplete elliptic integral of the second kind.
#' @export
ellint_2_incomplete <- function(k, phi) {
  .Call(`ellint_2_incomplete_`, k, phi)
}

#' Complete Elliptic Integral of the Second Kind
#'
#' Computes the complete elliptic integral of the second kind.
#'
#' @param k Elliptic modulus
#' @return The value of the complete elliptic integral of the second kind.
#' @export
ellint_2 <- function(k) {
  .Call(`ellint_2_`, k)
}

#' Incomplete Elliptic Integral of the Third Kind - Legendre's Form
#'
#' Computes the incomplete elliptic integral of the third kind in Legendre's form.
#'
#' @param k Elliptic modulus
#' @param n Characteristic
#' @param phi Amplitude
#' @return The value of the incomplete elliptic integral of the third kind.
#' @export
ellint_3_incomplete <- function(k, n, phi) {
  .Call(`ellint_3_incomplete_`, k, n, phi)
}

#' Complete Elliptic Integral of the Third Kind
#'
#' Computes the complete elliptic integral of the third kind.
#'
#' @param k Elliptic modulus
#' @param n Characteristic
#' @return The value of the complete elliptic integral of the third kind.
#' @export
ellint_3 <- function(k, n) {
  .Call(`ellint_3_`, k, n)
}

#' Incomplete Elliptic Integral D
#'
#' Computes the incomplete elliptic integral D in Legendre's form.
#'
#' @param k Elliptic modulus
#' @param phi Amplitude
#' @return The value of the incomplete elliptic integral D.
#' @export
ellint_d_incomplete <- function(k, phi) {
  .Call(`ellint_d_incomplete_`, k, phi)
}

#' Complete Elliptic Integral D
#'
#' Computes the complete elliptic integral D.
#'
#' @param k Elliptic modulus
#' @return The value of the complete elliptic integral D.
#' @export
ellint_d <- function(k) {
  .Call(`ellint_d_`, k)
}

#' Jacobi Zeta Function
#'
#' Computes the Jacobi zeta function.
#'
#' @param k Elliptic modulus
#' @param phi Amplitude
#' @return The value of the Jacobi zeta function.
#' @export
jacobi_zeta <- function(k, phi) {
  .Call(`jacobi_zeta_`, k, phi)
}

#' Heuman's Lambda Function
#'
#' Computes Heuman's lambda function.
#'
#' @param k Elliptic modulus
#' @param phi Amplitude
#' @return The value of Heuman's lambda function.
#' @export
heuman_lambda <- function(k, phi) {
  .Call(`heuman_lambda_`, k, phi)
}
