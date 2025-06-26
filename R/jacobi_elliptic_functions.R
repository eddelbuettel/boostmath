#' Jacobi Elliptic SN, CN, and DN
#'
#' Computes the Jacobi elliptic functions sn, cn, and dn.
#'
#' @param k Elliptic modulus
#' @param u Argument of the elliptic functions
#' @return A list containing the values of the Jacobi elliptic functions sn, cn, and dn.
#' @export
jacobi_elliptic <- function(k, u) {
  .Call(`jacobi_elliptic_`, k, u)
}

#' Jacobi Elliptic CD Function
#'
#' Computes the Jacobi elliptic function cd.
#'
#' @param k Elliptic modulus
#' @param u Argument of the elliptic function
#' @return The value of the Jacobi elliptic function cd.
#' @export
jacobi_cd <- function(k, u) {
  .Call(`jacobi_cd_`, k, u)
}

#' Jacobi Elliptic CN Function
#'
#' Computes the Jacobi elliptic function cn.
#'
#' @param k Elliptic modulus
#' @param u Argument of the elliptic function
#' @return The value of the Jacobi elliptic function cn.
#' @export
jacobi_cn <- function(k, u) {
  .Call(`jacobi_cn_`, k, u)
}

#' Jacobi Elliptic CS Function
#'
#' Computes the Jacobi elliptic function cs.
#'
#' @param k Elliptic modulus
#' @param u Argument of the elliptic function
#' @return The value of the Jacobi elliptic function cs.
#' @export
jacobi_cs <- function(k, u) {
  .Call(`jacobi_cs_`, k, u)
}

#' Jacobi Elliptic DC Function
#'
#' Computes the Jacobi elliptic function dc.
#'
#' @param k Elliptic modulus
#' @param u Argument of the elliptic function
#' @return The value of the Jacobi elliptic function dc.
#' @export
jacobi_dc <- function(k, u) {
  .Call(`jacobi_dc_`, k, u)
}

#' Jacobi Elliptic DN Function
#'
#' Computes the Jacobi elliptic function dn.
#'
#' @param k Elliptic modulus
#' @param u Argument of the elliptic function
#' @return The value of the Jacobi elliptic function dn.
#' @export
jacobi_dn <- function(k, u) {
  .Call(`jacobi_dn_`, k, u)
}

#' Jacobi Elliptic DS Function
#'
#' Computes the Jacobi elliptic function ds.
#'
#' @param k Elliptic modulus
#' @param u Argument of the elliptic function
#' @return The value of the Jacobi elliptic function ds.
#' @export
jacobi_ds <- function(k, u) {
  .Call(`jacobi_ds_`, k, u)
}

#' Jacobi Elliptic NC Function
#'
#' Computes the Jacobi elliptic function nc.
#'
#' @param k Elliptic modulus
#' @param u Argument of the elliptic function
#' @return The value of the Jacobi elliptic function nc.
#' @export
jacobi_nc <- function(k, u) {
  .Call(`jacobi_nc_`, k, u)
}

#' Jacobi Elliptic ND Function
#'
#' Computes the Jacobi elliptic function nd.
#'
#' @param k Elliptic modulus
#' @param u Argument of the elliptic function
#' @return The value of the Jacobi elliptic function nd.
#' @export
jacobi_nd <- function(k, u) {
  .Call(`jacobi_nd_`, k, u)
}

#' Jacobi Elliptic NS Function
#'
#' Computes the Jacobi elliptic function ns.
#'
#' @param k Elliptic modulus
#' @param u Argument of the elliptic function
#' @return The value of the Jacobi elliptic function ns.
#' @export
jacobi_ns <- function(k, u) {
  .Call(`jacobi_ns_`, k, u)
}

#' Jacobi Elliptic SC Function
#'
#' Computes the Jacobi elliptic function sc.
#'
#' @param k Elliptic modulus
#' @param u Argument of the elliptic function
#' @return The value of the Jacobi elliptic function sc.
#' @export
jacobi_sc <- function(k, u) {
  .Call(`jacobi_sc_`, k, u)
}

#' Jacobi Elliptic SD Function
#'
#' Computes the Jacobi elliptic function sd.
#'
#' @param k Elliptic modulus
#' @param u Argument of the elliptic function
#' @return The value of the Jacobi elliptic function sd.
#' @export
jacobi_sd <- function(k, u) {
  .Call(`jacobi_sd_`, k, u)
}

#' Jacobi Elliptic SN Function
#'
#' Computes the Jacobi elliptic function sn.
#'
#' @param k Elliptic modulus
#' @param u Argument of the elliptic function
#' @return The value of the Jacobi elliptic function sn.
#' @export
jacobi_sn <- function(k, u) {
  .Call(`jacobi_sn_`, k, u)
}
