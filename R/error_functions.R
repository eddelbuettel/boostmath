erf <- function(x) {
  .Call(`erf_`, x)
}

erfc <- function(x) {
  .Call(`erfc_`, x)
}

erf_inv <- function(p) {
  .Call(`erf_inv_`, p)
}

erfc_inv <- function(p) {
  .Call(`erfc_inv_`, p)
}
