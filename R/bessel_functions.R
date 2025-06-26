cyl_bessel_j <- function(v, x) {
  .Call(`cyl_bessel_j_`, v, x)
}

cyl_neumann <- function(v, x) {
  .Call(`cyl_neumann_`, v, x)
}

cyl_bessel_j_zero <- function(v, m) {
  .Call(`cyl_bessel_j_zero_`, v, m)
}

cyl_neumann_zero <- function(v, m) {
  .Call(`cyl_neumann_zero_`, v, m)
}

cyl_bessel_j_zero_multiple <- function(v, start_index, number_of_zeros) {
  .Call(`cyl_bessel_j_zero_multiple_`, v, start_index, number_of_zeros)
}

cyl_neumann_zero_multiple <- function(v, start_index, number_of_zeros) {
  .Call(`cyl_neumann_zero_multiple_`, v, start_index, number_of_zeros)
}

cyl_bessel_i <- function(v, x) {
  .Call(`cyl_bessel_i_`, v, x)
}

cyl_bessel_k <- function(v, x) {
  .Call(`cyl_bessel_k_`, v, x)
}

sph_bessel <- function(v, x) {
  .Call(`sph_bessel_`, v, x)
}

sph_neumann <- function(v, x) {
  .Call(`sph_neumann_`, v, x)
}

cyl_bessel_j_prime <- function(v, x) {
  .Call(`cyl_bessel_j_prime_`, v, x)
}

cyl_neumann_prime <- function(v, x) {
  .Call(`cyl_neumann_prime_`, v, x)
}

cyl_bessel_i_prime <- function(v, x) {
  .Call(`cyl_bessel_i_prime_`, v, x)
}

cyl_bessel_k_prime <- function(v, x) {
  .Call(`cyl_bessel_k_prime_`, v, x)
}

sph_bessel_prime <- function(v, x) {
  .Call(`sph_bessel_prime_`, v, x)
}

sph_neumann_prime <- function(v, x) {
  .Call(`sph_neumann_prime_`, v, x)
}
