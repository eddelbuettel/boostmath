#' @title Hankel Functions
#' @description Functions to compute cyclic and spherical Hankel functions of the first and second kinds.
#' @name hankel_functions
#' @param v Order of the Hankel function
#' @param x Argument of the Hankel function
#' @examples
#' cyl_hankel_1(2, 0.5)
#' cyl_hankel_2(2, 0.5)
#' sph_hankel_1(2, 0.5)
#' sph_hankel_2(2, 0.5)
NULL

#' @rdname hankel_functions
#' @export
cyl_hankel_1 <- function(v, x) {
  .Call(`cyl_hankel_1_`, v, x)
}

#' @rdname hankel_functions
#' @export
cyl_hankel_2 <- function(v, x) {
  .Call(`cyl_hankel_2_`, v, x)
}

#' @rdname hankel_functions
#' @export
sph_hankel_1 <- function(v, x) {
  .Call(`sph_hankel_1_`, v, x)
}

#' @rdname hankel_functions
#' @export
sph_hankel_2 <- function(v, x) {
  .Call(`sph_hankel_2_`, v, x)
}
