sin_pi <- function(x) {
  .Call(`sin_pi_`, x)
}

cos_pi <- function(x) {
  .Call(`cos_pi_`, x)
}

log1p <- function(x) {
  .Call(`log1p_`, x)
}

expm1 <- function(x) {
  .Call(`expm1_`, x)
}

cbrt <- function(x) {
  .Call(`cbrt_`, x)
}

sqrt1pm1 <- function(x) {
  .Call(`sqrt1pm1_`, x)
}

powm1 <- function(x) {
  .Call(`powm1_`, x)
}

hypot <- function(x) {
  .Call(`hypot_`, x)
}

rsqrt <- function(x) {
  .Call(`rsqrt_`, x)
}
