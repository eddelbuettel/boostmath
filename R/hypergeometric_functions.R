#' Hypergeometric Function 1F0
#'
#' Computes the hypergeometric function 1F0(a; z).
#'
#' @param a Parameter of the hypergeometric function
#' @param z Argument of the hypergeometric function
#' @return The value of the hypergeometric function 1F0(a; z).
#' @export
hypergeometric_1F0 <- function(a, z) {
  .Call(`hypergeometric_1F0_`, a, z)
}

#' Hypergeometric Function 0F1
#'
#' Computes the hypergeometric function 0F1(b; z).
#'
#' @param b Parameter of the hypergeometric function
#' @param z Argument of the hypergeometric function
#' @return The value of the hypergeometric function 0F1(b; z).
#' @export
hypergeometric_0F1 <- function(b, z) {
  .Call(`hypergeometric_0F1_`, b, z)
}

#' Hypergeometric Function 2F0
#'
#' Computes the hypergeometric function 2F0(a1, a2; z).
#'
#' @param a1 First parameter of the hypergeometric function
#' @param a2 Second parameter of the hypergeometric function
#' @param z Argument of the hypergeometric function
#' @return The value of the hypergeometric function 2F0(a1, a2; z).
#' @export
hypergeometric_2F0 <- function(a1, a2, z) {
  .Call(`hypergeometric_2F0_`, a1, a2, z)
}

#' Hypergeometric Function 1F1
#'
#' Computes the hypergeometric function 1F1(a, b; z).
#'
#' @param a First parameter of the hypergeometric function
#' @param b Second parameter of the hypergeometric function
#' @param z Argument of the hypergeometric function
#' @return The value of the hypergeometric function 1F1(a, b; z).
#' @export
hypergeometric_1F1 <- function(a, b, z) {
  .Call(`hypergeometric_1F1_`, a, b, z)
}

#' Regularised Hypergeometric Function 1F1
#'
#' Computes the regularised hypergeometric function 1F1(a, b; z) = hypergeometric_1F1(a, b; z) / gamma(b).
#'
#' @param a First parameter of the hypergeometric function
#' @param b Second parameter of the hypergeometric function
#' @param z Argument of the hypergeometric function
#' @return The value of the regularised hypergeometric function 1F1(a, b; z).
#' @export
hypergeometric_1F1_regularized <- function(a, b, z) {
  .Call(`hypergeometric_1F1_regularized_`, a, b, z)
}

#' Logarithm of the Hypergeometric Function 1F1
#'
#' Computes the logarithm of the hypergeometric function 1F1(a, b; z).
#'
#' @param a First parameter of the hypergeometric function
#' @param b Second parameter of the hypergeometric function
#' @param z Argument of the hypergeometric function
#' @return The logarithm of the hypergeometric function 1F1(a, b; z) with attribute "sign" for the sign of the result.
#' @export
log_hypergeometric_1F1 <- function(a, b, z) {
  .Call(`log_hypergeometric_1F1_`, a, b, z)
}

#' Hypergeometric Function pFq
#'
#' Computes the generalised hypergeometric function pFq(a, b; z).
#'
#' @param a Vector of parameters for the numerator of the hypergeometric function
#' @param b Vector of parameters for the denominator of the hypergeometric function
#' @param z Argument of the hypergeometric function
#' @return The value of the hypergeometric function pFq(a, b; z).
#' @export
hypergeometric_pFq <- function(a, b, z) {
  .Call(`hypergeometric_pFq_`, a, b, z)
}
