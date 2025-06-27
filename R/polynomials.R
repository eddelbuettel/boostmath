#' Legendre Polynomial of the First Kind
#'
#' Computes the Legendre polynomial of the first kind \eqn{(P_n(x))}.
#'
#' @param n Degree of the polynomial
#' @param x Argument of the polynomial
#' @return The value of the Legendre polynomial \eqn{(P_n(x))}.
#' @export
legendre_p <- function(n, x) {
  .Call(`legendre_p_`, n, x)
}

#' Legendre Polynomial of the First Kind (Derivative)
#'
#' Computes the derivative of the Legendre polynomial of the first kind \eqn{(P_n'(x))}.
#'
#' @param n Degree of the polynomial
#' @param x Argument of the polynomial
#' @return The value of the derivative of the Legendre polynomial \eqn{(P_n'(x))}.
#' @export
legendre_p_prime <- function(n, x) {
  .Call(`legendre_p_prime_`, n, x)
}

#' Zeros of the Legendre Polynomial of the First Kind
#'
#' Computes the zeros of the Legendre polynomial of the first kind \eqn{(P_l(x))}.
#'
#' @param l Degree of the polynomial
#' @return A numeric vector containing the zeros of the Legendre polynomial \eqn{(P_l(x))}.
#' @export
legendre_p_zeros <- function(l) {
  .Call(`legendre_p_zeros_`, l)
}

#' Legendre Polynomial of the First Kind with Order m
#'
#' Computes the Legendre polynomial of the first kind \eqn{(P_n^m(x))}.
#'
#' @param n Degree of the polynomial
#' @param m Order of the polynomial
#' @param x Argument of the polynomial
#' @return The value of the Legendre polynomial \eqn{(P_n^m(x))}.
#' @export
legendre_p_m <- function(n, m, x) {
  .Call(`legendre_p_m_`, n, m, x)
}

#' Legendre Polynomial of the Second Kind
#'
#' Computes the Legendre polynomial of the second kind \eqn{(Q_n(x))}.
#'
#' @param n Degree of the polynomial
#' @param x Argument of the polynomial
#' @return The value of the Legendre polynomial \eqn{(Q_n(x))}.
#' @export
legendre_q <- function(n, x) {
  .Call(`legendre_q_`, n, x)
}

#' Next Legendre Polynomial of the First Kind
#'
#' Computes the next Legendre polynomial of the first kind \eqn{(P_{l+1}(x))} using the previous two polynomials.
#'
#' @param l Degree of the polynomial
#' @param x Argument of the polynomial
#' @param Pl Value of the Legendre polynomial \eqn{(P_l(x))}
#' @param Plm1 Value of the Legendre polynomial \eqn{(P_{l-1}(x))}
#' @return The value of the next Legendre polynomial \eqn{(P_{l+1}(x))}.
#' @export
legendre_next <- function(l, x, Pl, Plm1) {
  .Call(`legendre_next_`, l, x, Pl, Plm1)
}

#' Next Legendre Polynomial of the First Kind with Order m
#'
#' Computes the next Legendre polynomial of the first kind \eqn{(P_{l+1}^m(x))} using the previous two polynomials.
#'
#' @param l Degree of the polynomial
#' @param m Order of the polynomial
#' @param x Argument of the polynomial
#' @param Pl Value of the Legendre polynomial \eqn{(P_l^m(x))}
#' @param Plm1 Value of the Legendre polynomial \eqn{(P_{l-1}^m(x))}
#' @return The value of the next Legendre polynomial \eqn{(P_{l+1}^m(x))}.
#' @export
legendre_next_m <- function(l, m, x, Pl, Plm1) {
  .Call(`legendre_next_m_`, l, m, x, Pl, Plm1)
}

#' Laguerre Polynomial
#'
#' Computes the Laguerre polynomial \eqn{(L_n(x))}.
#'
#' @param n Degree of the polynomial
#' @param x Argument of the polynomial
#' @return The value of the Laguerre polynomial \eqn{(L_n(x))}.
#' @export
laguerre <- function(n, x) {
  .Call(`laguerre_`, n, x)
}

#' Laguerre Polynomial with Order m
#'
#' Computes the Laguerre polynomial \eqn{(L_n^m(x))}.
#'
#' @param n Degree of the polynomial
#' @param m Order of the polynomial
#' @param x Argument of the polynomial
#' @return The value of the Laguerre polynomial \eqn{(L_n^m(x))}.
#' @export
laguerre_m <- function(n, m, x) {
  .Call(`laguerre_m_`, n, m, x)
}

#' Next Laguerre Polynomial
#'
#' Computes the next Laguerre polynomial \eqn{(L_{n+1}(x))} using the previous two polynomials.
#'
#' @param n Degree of the polynomial
#' @param x Argument of the polynomial
#' @param Ln Value of the Laguerre polynomial \eqn{(L_n(x))}
#' @param Lnm1 Value of the Laguerre polynomial \eqn{(L_{n-1}(x))}
#' @return The value of the next Laguerre polynomial \eqn{(L_{n+1}(x))}.
#' @export
laguerre_next <- function(n, x, Ln, Lnm1) {
  .Call(`laguerre_next_`, n, x, Ln, Lnm1)
}

#' Next Laguerre Polynomial with Order m
#'
#' Computes the next Laguerre polynomial \eqn{(L_{n+1}^m(x))} using the previous two polynomials.
#'
#' @param n Degree of the polynomial
#' @param m Order of the polynomial
#' @param x Argument of the polynomial
#' @param Ln Value of the Laguerre polynomial \eqn{(L_n^m(x))}
#' @param Lnm1 Value of the Laguerre polynomial \eqn{(L_{n-1}^m(x))}
#' @return The value of the next Laguerre polynomial \eqn{(L_{n+1}^m(x))}.
#' @export
laguerre_next_m <- function(n, m, x, Ln, Lnm1) {
  .Call(`laguerre_next_m_`, n, m, x, Ln, Lnm1)
}

#' Hermite Polynomial
#'
#' Computes the Hermite polynomial \eqn{(H_n(x))}.
#'
#' @param n Degree of the polynomial
#' @param x Argument of the polynomial
#' @return The value of the Hermite polynomial \eqn{(H_n(x))}.
#' @export
hermite <- function(n, x) {
  .Call(`hermite_`, n, x)
}

#' Next Hermite Polynomial
#'
#' Computes the next Hermite polynomial \eqn{(H_{n+1}(x))} using the previous two polynomials.
#'
#' @param n Degree of the polynomial
#' @param x Argument of the polynomial
#' @param Hn Value of the Hermite polynomial \eqn{(H_n(x))}
#' @param Hnm1 Value of the Hermite polynomial \eqn{(H_{n-1}(x))}
#' @return The value of the next Hermite polynomial \eqn{(H_{n+1}(x))}.
#' @export
hermite_next <- function(n, x, Hn, Hnm1) {
  .Call(`hermite_next_`, n, x, Hn, Hnm1)
}

#' Next Chebyshev Polynomial of the First Kind
#'
#' Computes the next Chebyshev polynomial of the first kind \eqn{(T_{n+1}(x))} using the previous two polynomials.
#'
#' @param x Argument of the polynomial
#' @param Tn Value of the Chebyshev polynomial \eqn{(T_n(x))}
#' @param Tn_1 Value of the Chebyshev polynomial \eqn{(T_{n-1}(x))}
#' @return The value of the next Chebyshev polynomial \eqn{(T_{n+1}(x))}.
#' @export
chebyshev_next <- function(x, Tn, Tn_1) {
  .Call(`chebyshev_next_`, x, Tn, Tn_1)
}

#' Chebyshev Polynomial of the First Kind
#'
#' Computes the Chebyshev polynomial of the first kind \eqn{(T_n(x))}.
#'
#' @param n Degree of the polynomial
#' @param x Argument of the polynomial
#' @return The value of the Chebyshev polynomial \eqn{(T_n(x))}.
#' @export
chebyshev_t <- function(n, x) {
  .Call(`chebyshev_t_`, n, x)
}

#' Chebyshev Polynomial of the Second Kind
#'
#' Computes the Chebyshev polynomial of the second kind \eqn{(U_n(x))}.
#'
#' @param n Degree of the polynomial
#' @param x Argument of the polynomial
#' @return The value of the Chebyshev polynomial \eqn{(U_n(x))}.
#' @export
chebyshev_u <- function(n, x) {
  .Call(`chebyshev_u_`, n, x)
}

#' Chebyshev Polynomial of the First Kind (Derivative)
#'
#' Computes the derivative of the Chebyshev polynomial of the first kind \eqn{(T_n'(x))}.
#'
#' @param n Degree of the polynomial
#' @param x Argument of the polynomial
#' @return The value of the derivative of the Chebyshev polynomial \eqn{(T_n'(x))}.
#' @export
chebyshev_t_prime <- function(n, x) {
  .Call(`chebyshev_t_prime_`, n, x)
}

#' Next Chebyshev Polynomial using Clenshaw's Recurrence
#'
#' Computes the next Chebyshev polynomial of the first kind \eqn{(T_{n+1}(x))} using Clenshaw's recurrence relation.
#'
#' @param c Coefficients of the Chebyshev polynomial
#' @param x Argument of the polynomial
#' @return The value of the next Chebyshev polynomial \eqn{(T_{n+1}(x))}.
#' @export
chebyshev_clenshaw_recurrence <- function(c, x) {
  .Call(`chebyshev_clenshaw_recurrence_`, c, x)
}

#' Chebyshev Polynomial of the First Kind using Clenshaw's Recurrence with Interval \eqn{[a, b]}
#'
#' Computes the Chebyshev polynomial of the first kind \eqn{(T_n(x))} using Clenshaw's recurrence relation with a specified interval \eqn{([a, b])}.
#'
#' @param c Coefficients of the Chebyshev polynomial
#' @param a Lower bound of the interval
#' @param b Upper bound of the interval
#' @param x Argument of the polynomial
#' @return The value of the Chebyshev polynomial \eqn{(T_n(x))} evaluated at \eqn{(x)} in the interval \eqn{([a, b])}.
#' @export
chebyshev_clenshaw_recurrence_ab <- function(c, a, b, x) {
  .Call(`chebyshev_clenshaw_recurrence_ab_`, c, a, b, x)
}

#' Spherical Harmonic Function (Real Part)
#'
#' Computes the real part of the spherical harmonic function \eqn{(Y_{n}^{m}(\theta, \phi))}.
#'
#' @param n Degree of the spherical harmonic
#' @param m Order of the spherical harmonic
#' @param theta Polar angle (colatitude)
#' @param phi Azimuthal angle (longitude)
#' @return The real part of the spherical harmonic function \eqn{(Y_{n}^{m}(\theta, \phi))}.
#' @export
spherical_harmonic_r <- function(n, m, theta, phi) {
  .Call(`spherical_harmonic_r_`, n, m, theta, phi)
}

#' Spherical Harmonic Function (Imaginary Part)
#'
#' Computes the imaginary part of the spherical harmonic function \eqn{(Y_{n}^{m}(\theta, \phi))}.
#'
#' @param n Degree of the spherical harmonic
#' @param m Order of the spherical harmonic
#' @param theta Polar angle (colatitude)
#' @param phi Azimuthal angle (longitude)
#' @return The imaginary part of the spherical harmonic function \eqn{(Y_{n}^{m}(\theta, \phi))}.
#' @export
spherical_harmonic_i <- function(n, m, theta, phi) {
  .Call(`spherical_harmonic_i_`, n, m, theta, phi)
}

#' Gegenbauer Polynomial
#'
#' Computes the Gegenbauer polynomial \eqn{(C_n^{(\lambda)}(x))}.
#'
#' @param n Degree of the polynomial
#' @param lambda Parameter of the polynomial
#' @param x Argument of the polynomial
#' @return The value of the Gegenbauer polynomial \eqn{(C_n^{(\lambda)}(x))}.
#' @export
gegenbauer <- function(n, lambda, x) {
  .Call(`gegenbauer_`, n, lambda, x)
}

#' Gegenbauer Polynomial (Derivative)
#'
#' Computes the derivative of the Gegenbauer polynomial \eqn{(C_n^{(\lambda)}(x))}.
#'
#' @param n Degree of the polynomial
#' @param lambda Parameter of the polynomial
#' @param x Argument of the polynomial
#' @return The value of the derivative of the Gegenbauer polynomial \eqn{(C_n^{(\lambda)}(x))}.
#' @export
gegenbauer_prime <- function(n, lambda, x) {
  .Call(`gegenbauer_prime_`, n, lambda, x)
}

#' Gegenbauer Polynomial (Derivative with Order k)
#'
#' Computes the k-th derivative of the Gegenbauer polynomial \eqn{(C_n^{(\lambda)}(x))}.
#'
#' @param n Degree of the polynomial
#' @param lambda Parameter of the polynomial
#' @param x Argument of the polynomial
#' @param k Order of the derivative
#' @return The value of the k-th derivative of the Gegenbauer polynomial \eqn{(C_n^{(\lambda)}(x))}.
#' @export
gegenbauer_derivative <- function(n, lambda, x, k) {
  .Call(`gegenbauer_derivative_`, n, lambda, x, k)
}

#' Jacobi Polynomial
#'
#' Computes the Jacobi polynomial \eqn{(P_n^{(\alpha, \beta)}(x))}.
#'
#' @param n Degree of the polynomial
#' @param alpha First parameter of the polynomial
#' @param beta Second parameter of the polynomial
#' @param x Argument of the polynomial
#' @return The value of the Jacobi polynomial \eqn{(P_n^{(\alpha, \beta)}(x))}.
#' @export
jacobi <- function(n, alpha, beta, x) {
  .Call(`jacobi_`, n, alpha, beta, x)
}

#' Jacobi Polynomial (Derivative)
#'
#' Computes the derivative of the Jacobi polynomial \eqn{(P_n^{(\alpha, \beta)}(x))}.
#'
#' @param n Degree of the polynomial
#' @param alpha First parameter of the polynomial
#' @param beta Second parameter of the polynomial
#' @param x Argument of the polynomial
#' @return The value of the derivative of the Jacobi polynomial \eqn{(P_n^{(\alpha, \beta)}(x))}.
#' @export
jacobi_prime <- function(n, alpha, beta, x) {
  .Call(`jacobi_prime_`, n, alpha, beta, x)
}

#' Jacobi Polynomial (Second Derivative)
#'
#' Computes the second derivative of the Jacobi polynomial \eqn{(P_n^{(\alpha, \beta)}(x))}.
#'
#' @param n Degree of the polynomial
#' @param alpha First parameter of the polynomial
#' @param beta Second parameter of the polynomial
#' @param x Argument of the polynomial
#' @return The value of the second derivative of the Jacobi polynomial \eqn{(P_n^{(\alpha, \beta)}(x))}.
#' @export
jacobi_double_prime <- function(n, alpha, beta, x) {
  .Call(`jacobi_double_prime_`, n, alpha, beta, x)
}

#' Jacobi Polynomial (Derivative with Order k)
#'
#' Computes the k-th derivative of the Jacobi polynomial \eqn{(P_n^{(\alpha, \beta)}(x))}.
#'
#' @param n Degree of the polynomial
#' @param alpha First parameter of the polynomial
#' @param beta Second parameter of the polynomial
#' @param x Argument of the polynomial
#' @param k Order of the derivative
#' @return The value of the k-th derivative of the Jacobi polynomial \eqn{(P_n^{(\alpha, \beta)}(x))}.
#' @export
jacobi_derivative <- function(n, alpha, beta, x, k) {
  .Call(`jacobi_derivative_`, n, alpha, beta, x, k)
}
