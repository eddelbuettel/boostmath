hypergeometric_1F0 <- function(a, z) {
  .Call(`hypergeometric_1F0_`, a, z)
}

hypergeometric_0F1 <- function(b, z) {
  .Call(`hypergeometric_0F1_`, b, z)
}

hypergeometric_2F0 <- function(a1, a2, z) {
  .Call(`hypergeometric_2F0_`, a1, a2, z)
}

hypergeometric_1F1 <- function(a, b, z) {
  .Call(`hypergeometric_1F1_`, a, b, z)
}

hypergeometric_1F1_regularized <- function(a, b, z) {
  .Call(`hypergeometric_1F1_regularized_`, a, b, z)
}

log_hypergeometric_1F1 <- function(a, b, z) {
  .Call(`log_hypergeometric_1F1_`, a, b, z)
}

hypergeometric_pFq <- function(a, b, z) {
  .Call(`hypergeometric_pFq_`, a, b, z)
}
