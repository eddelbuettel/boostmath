#' Jacobi Theta1 Function (q parameterisation)
#'
#' Computes the Jacobi theta function \eqn{\(\theta_1\)$ parameterised by $\(q\)}.
#'
#' @param x Input value
#' @param q The nome parameter of the Jacobi theta function
#' @return The value of the Jacobi theta function \eqn{\(\theta_1(x; q)\)}.
#' @export
jacobi_theta1 <- function(x, q) {
  .Call(`jacobi_theta1_`, x, q)
}

#' Jacobi Theta1 Function (tau parameterisation)
#'
#' Computes the Jacobi theta function \eqn{\(\theta_1\)$ parameterised by $\(\tau\)}.
#'
#' @param x Input value
#' @param tau The nome parameter of the Jacobi theta function
#' @return The value of the Jacobi theta function \eqn{\(\theta_1(x; \tau)\)}.
#' @export
jacobi_theta1tau <- function(x, tau) {
  .Call(`jacobi_theta1tau_`, x, tau)
}

#' Jacobi Theta2 Function (q parameterisation)
#'
#' Computes the Jacobi theta function \eqn{\(\theta_2\)$ parameterised by $\(q\)}.
#'
#' @param x Input value
#' @param q The nome parameter of the Jacobi theta function
#' @return The value of the Jacobi theta function \eqn{\(\theta_2(x; q)\)}.
#' @export
jacobi_theta2 <- function(x, q) {
  .Call(`jacobi_theta2_`, x, q)
}

#' Jacobi Theta2 Function (tau parameterisation)
#'
#' Computes the Jacobi theta function \eqn{\(\theta_2\)$ parameterised by $\(\tau\)}.
#'
#' @param x Input value
#' @param tau The nome parameter of the Jacobi theta function
#' @return The value of the Jacobi theta function \eqn{\(\theta_2(x; \tau)\)}.
#' @export
jacobi_theta2tau <- function(x, tau) {
  .Call(`jacobi_theta2tau_`, x, tau)
}

#' Jacobi Theta3 Function (q parameterisation)
#'
#' Computes the Jacobi theta function \eqn{\(\theta_3\)$ parameterised by $\(q\)}.
#'
#' @param x Input value
#' @param q The nome parameter of the Jacobi theta function
#' @return The value of the Jacobi theta function \eqn{\(\theta_3(x; q)\)}.
#' @export
jacobi_theta3 <- function(x, q) {
  .Call(`jacobi_theta3_`, x, q)
}

#' Jacobi Theta3 Function (tau parameterisation)
#'
#' Computes the Jacobi theta function \eqn{\(\theta_3\)$ parameterised by $\(\tau\)}.
#'
#' @param x Input value
#' @param tau The nome parameter of the Jacobi theta function
#' @return The value of the Jacobi theta function \eqn{\(\theta_3(x; \tau)\)}.
#' @export
jacobi_theta3tau <- function(x, tau) {
  .Call(`jacobi_theta3tau_`, x, tau)
}

#' Jacobi Theta3 Function (q parameterisation, minus one)
#'
#' Computes the Jacobi theta function \eqn{\(\theta_3\)$ parameterised by $\(q\)} with a shift of -1.
#'
#' @param x Input value
#' @param q The nome parameter of the Jacobi theta function
#' @return The value of the Jacobi theta function \eqn{\(\theta_3(x; q) - 1\)}.
#' @export
jacobi_theta3m1 <- function(x, q) {
  .Call(`jacobi_theta3m1_`, x, q)
}

#' Jacobi Theta3 Function (tau parameterisation, minus one)
#'
#' Computes the Jacobi theta function \eqn{\(\theta_3\)$ parameterised by $\(\tau\)} with a shift of -1.
#'
#' @param x Input value
#' @param tau The nome parameter of the Jacobi theta function
#' @return The value of the Jacobi theta function \eqn{\(\theta_3(x; \tau) - 1\)}.
#' @export
jacobi_theta3m1tau <- function(x, tau) {
  .Call(`jacobi_theta3m1tau_`, x, tau)
}

#' Jacobi Theta4 Function (q parameterisation)
#'
#' Computes the Jacobi theta function \eqn{\(\theta_4\)$ parameterised by $\(q\)}.
#'
#' @param x Input value
#' @param q The nome parameter of the Jacobi theta function
#' @return The value of the Jacobi theta function \eqn{\(\theta_4(x; q)\)}.
#' @export
jacobi_theta4 <- function(x, q) {
  .Call(`jacobi_theta4_`, x, q)
}

#' Jacobi Theta4 Function (tau parameterisation)
#'
#' Computes the Jacobi theta function \eqn{\(\theta_4\)$ parameterised by $\(\tau\)}.
#'
#' @param x Input value
#' @param tau The nome parameter of the Jacobi theta function
#' @return The value of the Jacobi theta function \eqn{\(\theta_4(x; \tau)\)}.
#' @export
jacobi_theta4tau <- function(x, tau) {
  .Call(`jacobi_theta4tau_`, x, tau)
}

#' Jacobi Theta4 Function (q parameterisation, minus one)
#'
#' Computes the Jacobi theta function \eqn{\(\theta_4\)$ parameterised by $\(q\)} with a shift of -1.
#'
#' @param x Input value
#' @param q The nome parameter of the Jacobi theta function
#' @return The value of the Jacobi theta function \eqn{\(\theta_4(x; q) - 1\)}.
#' @export
jacobi_theta4m1 <- function(x, q) {
  .Call(`jacobi_theta4m1_`, x, q)
}

#' Jacobi Theta4 Function (tau parameterisation, minus one)
#'
#' Computes the Jacobi theta function \eqn{\(\theta_4\)$ parameterised by $\(\tau\)} with a shift of -1.
#'
#' @param x Input value
#' @param tau The nome parameter of the Jacobi theta function
#' @return The value of the Jacobi theta function \eqn{\(\theta_4(x; \tau) - 1\)}.
#' @export
jacobi_theta4m1tau <- function(x, tau) {
  .Call(`jacobi_theta4m1tau_`, x, tau)
}
