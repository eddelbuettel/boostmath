bernoulli_b2n <- function(n) {
  .Call(`bernoulli_b2n_`, n)
}

max_bernoulli_b2n <- function() {
  .Call(`max_bernoulli_b2n_`)
}

unchecked_bernoulli_b2n <- function(n) {
  .Call(`unchecked_bernoulli_b2n_`, n)
}

bernoulli_b2n_range <- function(start_index, number_of_bernoullis_b2n) {
  .Call(`bernoulli_b2n_range_`, start_index, number_of_bernoullis_b2n)
}

tangent_t2n <- function(n) {
  .Call(`tangent_t2n_`, n)
}

tangent_t2n_range <- function(start_index, number_of_tangent_t2n) {
  .Call(`tangent_t2n_range_`, start_index, number_of_tangent_t2n)
}

prime <- function(n) {
  .Call(`prime_`, n)
}

max_prime <- function() {
  .Call(`max_prime_`)
}

fibonacci <- function(n) {
  .Call(`fibonacci_`, n)
}

unchecked_fibonacci <- function(n) {
  .Call(`unchecked_fibonacci_`, n)
}
