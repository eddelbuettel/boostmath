#' L0 Pseudo Norm
#'
#' @param x A numeric vector.
#' @return The L0 pseudo norm of the vector.
#' @export
#' @examples
#' l0_pseudo_norm(c(1, 0, 2, 0, 3))
l0_pseudo_norm <- function(x) {
  .Call(`l0_pseudo_norm_`, x)
}

#' Hamming Distance
#'
#' Computes the Hamming distance between two vectors.
#'
#' @param x A numeric vector.
#' @param y A numeric vector of the same length as `x`.
#' @return The Hamming distance between `x` and `y`.
#' @export
#' @examples
#' hamming_distance(c(1, 0, 1), c(0, 1, 1))
hamming_distance <- function(x, y) {
  .Call(`hamming_distance_`, x, y)
}

#' L1 Norm
#'
#' Computes the L1 norm (Manhattan norm) of a vector.
#'
#' @param x A numeric vector.
#' @return The L1 norm of the vector.
#' @export
#' @examples
#' l1_norm(c(1, -2, 3))
l1_norm <- function(x) {
  .Call(`l1_norm_`, x)
}

#' L1 Distance
#'
#' Computes the L1 distance (Manhattan distance) between two vectors.
#'
#' @param x A numeric vector.
#' @param y A numeric vector of the same length as `x`.
#' @return The L1 distance between `x` and `y`.
#' @export
#' @examples
#' l1_distance(c(1, -2, 3), c(4, -5, 6))
l1_distance <- function(x, y) {
  .Call(`l1_distance_`, x, y)
}

#' L2 Norm
#'
#' Computes the L2 norm (Euclidean norm) of a vector.
#'
#' @param x A numeric vector.
#' @return The L2 norm of the vector.
#' @export
#' @examples
#' l2_norm(c(3, 4))
l2_norm <- function(x) {
  .Call(`l2_norm_`, x)
}

#' L2 Distance
#'
#' Computes the L2 distance (Euclidean distance) between two vectors.
#'
#' @param x A numeric vector.
#' @param y A numeric vector of the same length as `x`.
#' @return The L2 distance between `x` and `y`.
#' @export
#' @examples
#' l2_distance(c(3, 4), c(0, 0))
l2_distance <- function(x, y) {
  .Call(`l2_distance_`, x, y)
}

#' Supremum Norm
#'
#' Computes the supremum norm (maximum norm) of a vector.
#'
#' @param x A numeric vector.
#' @return The supremum norm of the vector.
#' @export
#' @examples
#' sup_norm(c(1, -2, 3))
sup_norm <- function(x) {
  .Call(`sup_norm_`, x)
}

#' Supremum Distance
#'
#' Computes the supremum distance (maximum distance) between two vectors.
#'
#' @param x A numeric vector.
#' @param y A numeric vector of the same length as `x`.
#' @return The supremum distance between `x` and `y`.
#' @export
#' @examples
#' sup_distance(c(1, -2, 3), c(4, -5, 6))
sup_distance <- function(x, y) {
  .Call(`sup_distance_`, x, y)
}

#' Lp Norm
#'
#' Computes the Lp norm of a vector.
#'
#' @param x A numeric vector.
#' @param p A positive integer indicating the order of the norm.
#' @return The Lp norm of the vector.
#' @export
#' @examples
#' lp_norm(c(1, -2, 3), 3)
lp_norm <- function(x, p) {
  .Call(`lp_norm_`, x, p)
}

#' Lp Distance
#'
#' Computes the Lp distance between two vectors.
#'
#' @param x A numeric vector.
#' @param y A numeric vector of the same length as `x`.
#' @param p A positive integer indicating the order of the distance.
#' @return The Lp distance between `x` and `y`.
#' @export
#' @examples
#' lp_distance(c(1, -2, 3), c(4, -5, 6), 3)
lp_distance <- function(x, y, p) {
  .Call(`lp_distance_`, x, y, p)
}

#' Total Variation
#'
#' Computes the total variation of a numeric vector.
#'
#' @param x A numeric vector.
#' @return The total variation of the vector.
#' @export
#' @examples
#' total_variation(c(1, 2, 1, 3))
total_variation <- function(x) {
  .Call(`total_variation_`, x)
}
