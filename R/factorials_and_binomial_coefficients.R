factorial <- function(i) {
  .Call(`factorial_`, i)
}

unchecked_factorial <- function(i) {
  .Call(`unchecked_factorial_`, i)
}

max_factorial <- function() {
  .Call(`max_factorial_`)
}

double_factorial <- function(i) {
  .Call(`double_factorial_`, i)
}

rising_factorial <- function(x, i) {
  .Call(`rising_factorial_`, x, i)
}

falling_factorial <- function(x, i) {
  .Call(`falling_factorial_`, x, i)
}

binomial_coefficient <- function(n, k) {
  .Call(`binomial_coefficient_`, n, k)
}
