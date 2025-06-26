#' Owens T Function
#'
#' Computes the Owens T function of h and a, giving the probability of
#' the event (X > h and 0 < Y < a * X) where X and Y are independent
#' standard normal random variables.
#'
#' @param h The first argument of the Owens T function
#' @param a The second argument of the Owens T function
#' @return The value of the Owens T function at (h, a).
#' @export
owens_t <- function(h, a) {
  .Call(`owens_t_`, h, a)
}
