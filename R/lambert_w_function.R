lambert_w0 <- function(z) {
  .Call(`lambert_w0_`, z)
}

lambert_wm1 <- function(z) {
  .Call(`lambert_wm1_`, z)
}

lambert_w0_prime <- function(z) {
  .Call(`lambert_w0_prime_`, z)
}

lambert_wm1_prime <- function(z) {
  .Call(`lambert_wm1_prime_`, z)
}
