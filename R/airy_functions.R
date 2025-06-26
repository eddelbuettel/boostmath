airy_ai <- function(x) {
  .Call(`airy_ai_`, x)
}

airy_bi <- function(x) {
  .Call(`airy_bi_`, x)
}

airy_ai_prime <- function(x) {
  .Call(`airy_ai_prime_`, x)
}

airy_bi_prime <- function(x) {
  .Call(`airy_bi_prime_`, x)
}

airy_ai_zero <- function(m) {
  .Call(`airy_ai_zero_`, m)
}

airy_bi_zero <- function(m) {
  .Call(`airy_bi_zero_`, m)
}

airy_ai_zero_multiple <- function(start_index, number_of_zeros) {
  .Call(`airy_ai_zero_multiple_`, start_index, number_of_zeros)
}

airy_bi_zero_multiple <- function(start_index, number_of_zeros) {
  .Call(`airy_bi_zero_multiple_`, start_index, number_of_zeros)
}
