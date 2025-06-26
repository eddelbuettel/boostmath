legendre_p <- function(n, x) {
  .Call(`legendre_p_`, n, x)
}

legendre_p_prime <- function(n, x) {
  .Call(`legendre_p_prime_`, n, x)
}

legendre_p_zeros <- function(l) {
  .Call(`legendre_p_zeros_`, l)
}

legendre_p_m <- function(n, m, x) {
  .Call(`legendre_p_m_`, n, m, x)
}

legendre_q <- function(n, x) {
  .Call(`legendre_q_`, n, x)
}

legendre_next <- function(l, x, Pl, Plm1) {
  .Call(`legendre_next_`, l, x, Pl, Plm1)
}

legendre_next_m <- function(l, m, x, Pl, Plm1) {
  .Call(`legendre_next_m_`, l, m, x, Pl, Plm1)
}

laguerre <- function(n, x) {
  .Call(`laguerre_`, n, x)
}

laguerre_m <- function(n, m, x) {
  .Call(`laguerre_m_`, n, m, x)
}

laguerre_next <- function(n, x, Ln, Lnm1) {
  .Call(`laguerre_next_`, n, x, Ln, Lnm1)
}

laguerre_next_m <- function(n, m, x, Ln, Lnm1) {
  .Call(`laguerre_next_m_`, n, m, x, Ln, Lnm1)
}

hermite <- function(n, x) {
  .Call(`hermite_`, n, x)
}

hermite_next <- function(n, x, Hn, Hnm1) {
  .Call(`hermite_next_`, n, x, Hn, Hnm1)
}

chebyshev_next <- function(x, Tn, Tn_1) {
  .Call(`chebyshev_next_`, x, Tn, Tn_1)
}

chebyshev_t <- function(n, x) {
  .Call(`chebyshev_t_`, n, x)
}

chebyshev_u <- function(n, x) {
  .Call(`chebyshev_u_`, n, x)
}

chebyshev_t_prime <- function(n, x) {
  .Call(`chebyshev_t_prime_`, n, x)
}

chebyshev_clenshaw_recurrence <- function(c, x) {
  .Call(`chebyshev_clenshaw_recurrence_`, c, x)
}

chebyshev_clenshaw_recurrence_ab <- function(c, a, b, x) {
  .Call(`chebyshev_clenshaw_recurrence_ab_`, c, a, b, x)
}

spherical_harmonic_r <- function(n, m, theta, phi) {
  .Call(`spherical_harmonic_r_`, n, m, theta, phi)
}

spherical_harmonic_i <- function(n, m, theta, phi) {
  .Call(`spherical_harmonic_i_`, n, m, theta, phi)
}

gegenbauer <- function(n, lambda, x) {
  .Call(`gegenbauer_`, n, lambda, x)
}

gegenbauer_prime <- function(n, lambda, x) {
  .Call(`gegenbauer_prime_`, n, lambda, x)
}

gegenbauer_derivative <- function(n, lambda, x, k) {
  .Call(`gegenbauer_derivative_`, n, lambda, x, k)
}

jacobi <- function(n, alpha, beta, x) {
  .Call(`jacobi_`, n, alpha, beta, x)
}

jacobi_derivative <- function(n, alpha, beta, x, k) {
  .Call(`jacobi_derivative_`, n, alpha, beta, x, k)
}

jacobi_prime <- function(n, alpha, beta, x) {
  .Call(`jacobi_prime_`, n, alpha, beta, x)
}

jacobi_double_prime <- function(n, alpha, beta, x) {
  .Call(`jacobi_double_prime_`, n, alpha, beta, x)
}
