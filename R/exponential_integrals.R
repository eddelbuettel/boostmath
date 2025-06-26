expint_en <- function(n, z) {
  .Call(`expint_en_`, n, z)
}

expint_ei <- function(z) {
  .Call(`expint_ei_`, z)
}
