#' Gamma Function
#'
#' Computes the gamma function for a given input.
#'
#' @param z Input numeric value
#' @return The value of the gamma function at z.
#' @export
tgamma <- function(z) {
  .Call(`tgamma_`, z)
}

#' Gamma Function (1 + z) - 1
#'
#' Computes the gamma function for (1 + z) - 1, which is useful for small values of z.
#'
#' @param dz Input numeric value (1 + z)
#' @return The value of the gamma function at (1 + dz) - 1
#' @export
tgamma1pm1 <- function(dz) {
  .Call(`tgamma1pm1_`, dz)
}

#' Logarithm of the Gamma Function
#'
#' Computes the logarithm of the gamma function for a given input.
#'
#' @param z Input numeric value
#' @return The logarithm of the gamma function at z.
#' @export
lgamma <- function(z) {
  .Call(`lgamma_`, z)
}

#' Digamma Function
#'
#' Computes the digamma function (the logarithmic derivative of the gamma function) for a given input.
#'
#' @param z Input numeric value
#' @return The value of the digamma function at z.
#' @export
digamma <- function(z) {
  .Call(`digamma_`, z)
}

#' Trigamma Function
#'
#' Computes the trigamma function (the second logarithmic derivative of the gamma function) for a given input.
#'
#' @param z Input numeric value
#' @return The value of the trigamma function at z.
#' @export
trigamma <- function(z) {
  .Call(`trigamma_`, z)
}

#' Polygamma Function
#'
#' Computes the polygamma function, which is the n-th logarithmic derivative of the gamma function.
#'
#' @param n Order of the polygamma function (non-negative integer)
#' @param z Input numeric value
#' @return The value of the polygamma function at z of order n.
#' @export
polygamma <- function(n, z) {
  .Call(`polygamma_`, n, z)
}

#' Ratio of Gamma Functions
#'
#' Computes the ratio of two gamma functions, specifically gamma(a) / gamma(b).
#'
#' @param a Numerator argument for the gamma function
#' @param b Denominator argument for the gamma function
#' @return The ratio of the gamma functions gamma(a) / gamma(b).
#' @export
tgamma_ratio <- function(a, b) {
  .Call(`tgamma_ratio_`, a, b)
}

#' Ratio of Gamma Functions (Delta input)
#'
#' Computes the ratio of two gamma functions, specifically gamma(a) / gamma(a + delta).
#'
#' @param a Numerator argument for the gamma function
#' @param delta Increment added to the numerator argument
#' @return The ratio of the gamma functions gamma(a) / gamma(a + delta).
#' @export
tgamma_delta_ratio <- function(a, delta) {
  .Call(`tgamma_delta_ratio_`, a, delta)
}

#' Normalised Lower Incomplete Gamma Function
#'
#' Computes the normalised lower incomplete gamma function P(a, z) = gamma(a, z) / gamma(a).
#'
#' @param a Shape parameter of the gamma function
#' @param z Upper limit of integration
#' @return The value of the normalised lower incomplete gamma function P(a, z).
#' @export
gamma_p <- function(a, z) {
  .Call(`gamma_p_`, a, z)
}

#' Normalised Upper Incomplete Gamma Function
#'
#' Computes the normalised upper incomplete gamma function Q(a, z) = gamma(a, z) / gamma(a).
#'
#' @param a Shape parameter of the gamma function
#' @param z Upper limit of integration
#' @return The value of the normalised upper incomplete gamma function Q(a, z).
#' @export
gamma_q <- function(a, z) {
  .Call(`gamma_q_`, a, z)
}

#' Full (Non-normalised) Lower Incomplete Gamma Function
#'
#' Computes the full lower incomplete gamma function gamma(a, z).
#'
#' @param a Shape parameter of the gamma function
#' @param z Upper limit of integration
#' @return The value of the full lower incomplete gamma function gamma(a, z).
#' @export
tgamma_lower <- function(a, z) {
  .Call(`tgamma_lower_`, a, z)
}

#' Full (Non-normalised) Upper Incomplete Gamma Function
#'
#' Computes the full upper incomplete gamma function gamma(a, z).
#'
#' @param a Shape parameter of the gamma function
#' @param z Upper limit of integration
#' @return The value of the full upper incomplete gamma function gamma(a, z).
#' @export
tgamma_upper <- function(a, z) {
  .Call(`tgamma_upper_`, a, z)
}

#' Inverse of the Normalised Upper Incomplete Gamma Function
#'
#' Computes the inverse of the normalised upper incomplete gamma function Q(a, z) = q.
#'
#' @param a Shape parameter of the gamma function
#' @param q Probability value
#' @return The value of z such that Q(a, z) = q.
#' @export
gamma_q_inv <- function(a, q) {
  .Call(`gamma_q_inv_`, a, q)
}

#' Inverse of the Normalised Lower Incomplete Gamma Function
#'
#' Computes the inverse of the normalised lower incomplete gamma function P(a, z) = p.
#'
#' @param a Shape parameter of the gamma function
#' @param p Probability value
#' @return The value of z such that P(a, z) = p.
#' @export
gamma_p_inv <- function(a, p) {
  .Call(`gamma_p_inv_`, a, p)
}

#' Inverse of the Normalised Upper Incomplete Gamma Function (with respect to a)
#'
#' Computes the inverse of the normalised upper incomplete gamma function Q(a, z) = q,
#' with respect to the shape parameter a.
#'
#' @param z Upper limit of integration
#' @param q Probability value
#' @return The value of a such that Q(a, z) = q.
#' @export
gamma_q_inva <- function(z, q) {
  .Call(`gamma_q_inva_`, z, q)
}

#' Inverse of the Normalised Lower Incomplete Gamma Function (with respect to a)
#'
#' Computes the inverse of the normalised lower incomplete gamma function P(a, z) = p,
#' with respect to the shape parameter a.
#'
#' @param z Upper limit of integration
#' @param p Probability value
#' @return The value of a such that P(a, z) = p.
#' @export
gamma_p_inva <- function(z, p) {
  .Call(`gamma_p_inva_`, z, p)
}

#' Derivative of the Normalised Upper Incomplete Gamma Function
#'
#' Computes the derivative of the normalised upper incomplete gamma function Q(a, z) with respect to z.
#'
#' @param a Shape parameter of the gamma function
#' @return The value of the derivative of the normalised upper incomplete gamma function Q(a, z).
#' @export
gamma_p_derivative <- function(a) {
  .Call(`gamma_p_derivative_`, a)
}
