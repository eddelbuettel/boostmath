beta <- function(a, b) {
  .Call(`beta_`, a, b)
}

ibeta <- function(a, b, x) {
  .Call(`ibeta_`, a, b, x)
}

ibetac <- function(a, b, x) {
  .Call(`ibetac_`, a, b, x)
}

beta_incomplete <- function(a, b, x) {
  .Call(`beta_incomplete_`, a, b, x)
}

betac <- function(a, b, x) {
  .Call(`betac_`, a, b, x)
}

ibeta_inv <- function(a, b, p) {
  .Call(`ibeta_inv_`, a, b, p)
}

ibetac_inv <- function(a, b, q) {
  .Call(`ibetac_inv_`, a, b, q)
}

ibeta_inva <- function(b, x, p) {
  .Call(`ibeta_inva_`, b, x, p)
}

ibetac_inva <- function(b, x, q) {
  .Call(`ibetac_inva_`, b, x, q)
}

ibeta_invb <- function(a, x, p) {
  .Call(`ibeta_invb_`, a, x, p)
}

ibetac_invb <- function(a, x, q) {
  .Call(`ibetac_invb_`, a, x, q)
}

ibeta_derivative <- function(a, b, x) {
  .Call(`ibeta_derivative_`, a, b, x)
}
