#' Sine of Pi
#'
#' Computes the sine of a value multiplied by pi.
#'
#' @param x Input numeric value
#' @return The sine of x multiplied by pi.
#' @export
sin_pi <- function(x) {
  .Call(`sin_pi_`, x)
}

#' Cosine of Pi
#'
#' Computes the cosine of a value multiplied by pi.
#'
#' @param x Input numeric value
#' @return The cosine of x multiplied by pi.
#' @export
cos_pi <- function(x) {
  .Call(`cos_pi_`, x)
}

#' Logarithm of 1 plus x
#'
#' Computes the natural logarithm of 1 plus x.
#'
#' @param x Input numeric value
#' @return The natural logarithm of 1 plus x.
#' @export
boost_log1p <- function(x) {
  .Call(`log1p_`, x)
}

#' Exponential of x and substract 1
#'
#' Computes the exponential of x and subtracts 1.
#'
#' @param x Input numeric value
#' @return The exponential of x minus 1.
#' @export
boost_expm1 <- function(x) {
  .Call(`expm1_`, x)
}

#' Cube root of x
#'
#' Computes the cube root of x.
#'
#' @param x Input numeric value
#' @return The cube root of x.
#' @export
cbrt <- function(x) {
  .Call(`cbrt_`, x)
}

#' Square root of 1 plus x minus 1
#'
#' Subtract 1 from the square root of 1 plus x.
#'
#' @param x Input numeric value
#' @return The square root of 1 plus x minus 1.
#' @export
sqrt1pm1 <- function(x) {
  .Call(`sqrt1pm1_`, x)
}

#' Power of x raised to the power of y minus 1
#'
#' Computes x raised to the power of y minus 1.
#'
#' @param x Input numeric value
#' @param y Exponent value
#' @return The value of x raised to the power of y minus 1.
#' @export
powm1 <- function(x, y) {
  .Call(`powm1_`, x, y)
}

#' Hypotenuse
#'
#' Computes the hypotenuse of a right triangle given the lengths of the two sides.
#'
#' @param x Input numeric value representing one side of the triangle
#' @param y Input numeric value representing the other side of the triangle
#' @return The length of the hypotenuse.
#' @export
hypot <- function(x, y) {
  .Call(`hypot_`, x, y)
}

#' Inverse square root
#'
#' Computes the inverse square root of x.
#'
#' @param x Input numeric value
#' @return The inverse square root of x.
#' @export
rsqrt <- function(x) {
  .Call(`rsqrt_`, x)
}
