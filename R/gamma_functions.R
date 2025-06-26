tgamma <- function(z) {
  .Call(`tgamma_`, z)
}

tgamma1pm1 <- function(dz) {
  .Call(`tgamma1pm1_`, dz)
}

lgamma <- function(z) {
  .Call(`lgamma_`, z)
}

digamma <- function(z) {
  .Call(`digamma_`, z)
}

trigamma <- function(z) {
  .Call(`trigamma_`, z)
}

polygamma <- function(n, z) {
  .Call(`polygamma_`, n, z)
}

tgamma_ratio <- function(a, b) {
  .Call(`tgamma_ratio_`, a, b)
}

tgamma_delta_ratio <- function(a, delta) {
  .Call(`tgamma_delta_ratio_`, a, delta)
}

gamma_p <- function(a) {
  .Call(`gamma_p_`, a)
}

gamma_q <- function(a) {
  .Call(`gamma_q_`, a)
}

tgamma_lower <- function(a, z) {
  .Call(`tgamma_lower_`, a, z)
}

tgamma_upper <- function(a, z) {
  .Call(`tgamma_upper_`, a, z)
}

gamma_q_inv <- function(a, q) {
  .Call(`gamma_q_inv_`, a, q)
}

gamma_p_inv <- function(a, p) {
  .Call(`gamma_p_inv_`, a, p)
}

gamma_q_inva <- function(x, q) {
  .Call(`gamma_q_inva_`, x, q)
}

gamma_p_inva <- function(x, p) {
  .Call(`gamma_p_inva_`, x, p)
}

gamma_p_derivative <- function(a) {
  .Call(`gamma_p_derivative_`, a)
}
