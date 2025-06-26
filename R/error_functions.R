#' Error Function erf
#'
#' Computes the error function erf(x).
#'
#' @param x Input numeric value
#' @return The value of the error function erf at x.
#' @export
erf <- function(x) {
  .Call(`erf_`, x)
}

#' Complementary Error Function erfc
#'
#' Computes the complementary error function erfc(x).
#'
#' @param x Input numeric value
#' @return The value of the complementary error function erfc at x.
#' @export
erfc <- function(x) {
  .Call(`erfc_`, x)
}

#' Inverse of the Error Function erf
#'
#' Computes the inverse of the error function erf
#'
#' @param p Probability value
#' @return The value of x such that erf(x) = p.
#' @export
erf_inv <- function(p) {
  .Call(`erf_inv_`, p)
}

#' Inverse of the Complementary Error Function erfc
#'
#' Computes the inverse of the complementary error function erfc
#'
#' @param p Probability value
#' @return The value of x such that erfc(x) = p.
#' @export
erfc_inv <- function(p) {
  .Call(`erfc_inv_`, p)
}
