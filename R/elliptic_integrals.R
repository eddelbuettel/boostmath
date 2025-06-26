ellint_rf <- function(x, y, z) {
  .Call(`ellint_rf_`, x, y, z)
}

ellint_rd <- function(x, y, z) {
  .Call(`ellint_rd_`, x, y, z)
}

ellint_rj <- function(x, y, z, p) {
  .Call(`ellint_rj_`, x, y, z, p)
}

ellint_rc <- function(x, y) {
  .Call(`ellint_rc_`, x, y)
}

ellint_rg <- function(x, y, z) {
  .Call(`ellint_rg_`, x, y, z)
}

ellint_1_incomplete <- function(k, phi) {
  .Call(`ellint_1_incomplete_`, k, phi)
}

ellint_1 <- function(k) {
  .Call(`ellint_1_`, k)
}

ellint_2_incomplete <- function(k, phi) {
  .Call(`ellint_2_incomplete_`, k, phi)
}

ellint_2 <- function(k) {
  .Call(`ellint_2_`, k)
}

ellint_3_incomplete <- function(k, n, phi) {
  .Call(`ellint_3_incomplete_`, k, n, phi)
}

ellint_3 <- function(k, n) {
  .Call(`ellint_3_`, k, n)
}

ellint_d_incomplete <- function(k, phi) {
  .Call(`ellint_d_incomplete_`, k, phi)
}

ellint_d <- function(k) {
  .Call(`ellint_d_`, k)
}

jacobi_zeta <- function(k, phi) {
  .Call(`jacobi_zeta_`, k, phi)
}

heuman_lambda <- function(k, phi) {
  .Call(`heuman_lambda_`, k, phi)
}
