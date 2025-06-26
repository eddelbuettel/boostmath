jacobi_elliptic <- function(k, u) {
  .Call(`jacobi_elliptic_`, k, u)
}

jacobi_cd <- function(k, u) {
  .Call(`jacobi_cd_`, k, u)
}

jacobi_cn <- function(k, u) {
  .Call(`jacobi_cn_`, k, u)
}

jacobi_cs <- function(k, u) {
  .Call(`jacobi_cs_`, k, u)
}

jacobi_dc <- function(k, u) {
  .Call(`jacobi_dc_`, k, u)
}

jacobi_dn <- function(k, u) {
  .Call(`jacobi_dn_`, k, u)
}

jacobi_ds <- function(k, u) {
  .Call(`jacobi_ds_`, k, u)
}

jacobi_nc <- function(k, u) {
  .Call(`jacobi_nc_`, k, u)
}

jacobi_nd <- function(k, u) {
  .Call(`jacobi_nd_`, k, u)
}

jacobi_ns <- function(k, u) {
  .Call(`jacobi_ns_`, k, u)
}

jacobi_sc <- function(k, u) {
  .Call(`jacobi_sc_`, k, u)
}

jacobi_sd <- function(k, u) {
  .Call(`jacobi_sd_`, k, u)
}

jacobi_sn <- function(k, u) {
  .Call(`jacobi_sn_`, k, u)
}