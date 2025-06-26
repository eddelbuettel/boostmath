#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/special_functions/jacobi_elliptic.hpp>

extern "C" {
  SEXP jacobi_elliptic_(SEXP k_, SEXP u_) {
    BEGIN_CPP11
    double k = cpp11::as_cpp<double>(k_);
    double u = cpp11::as_cpp<double>(u_);
    double pcn;
    double pdn;
    double sn = boost::math::jacobi_elliptic(k, u, &pcn, &pdn);

    using cpp11::literals::operator""_nm;
    cpp11::writable::list result;
    result.push_back({"sn"_nm = sn});
    result.push_back({"cn"_nm = pcn});
    result.push_back({"dn"_nm = pdn});
    
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP jacobi_cd_(SEXP k_, SEXP u_) {
    BEGIN_CPP11
    double k = cpp11::as_cpp<double>(k_);
    double u = cpp11::as_cpp<double>(u_);
    auto result = boost::math::jacobi_cd(k, u);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP jacobi_cn_(SEXP k_, SEXP u_) {
    BEGIN_CPP11
    double k = cpp11::as_cpp<double>(k_);
    double u = cpp11::as_cpp<double>(u_);
    auto result = boost::math::jacobi_cn(k, u);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP jacobi_cs_(SEXP k_, SEXP u_) {
    BEGIN_CPP11
    double k = cpp11::as_cpp<double>(k_);
    double u = cpp11::as_cpp<double>(u_);
    auto result = boost::math::jacobi_cs(k, u);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP jacobi_dc_(SEXP k_, SEXP u_) {
    BEGIN_CPP11
    double k = cpp11::as_cpp<double>(k_);
    double u = cpp11::as_cpp<double>(u_);
    auto result = boost::math::jacobi_dc(k, u);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP jacobi_dn_(SEXP k_, SEXP u_) {
    BEGIN_CPP11
    double k = cpp11::as_cpp<double>(k_);
    double u = cpp11::as_cpp<double>(u_);
    auto result = boost::math::jacobi_dn(k, u);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP jacobi_ds_(SEXP k_, SEXP u_) {
    BEGIN_CPP11
    double k = cpp11::as_cpp<double>(k_);
    double u = cpp11::as_cpp<double>(u_);
    auto result = boost::math::jacobi_ds(k, u);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP jacobi_nc_(SEXP k_, SEXP u_) {
    BEGIN_CPP11
    double k = cpp11::as_cpp<double>(k_);
    double u = cpp11::as_cpp<double>(u_);
    auto result = boost::math::jacobi_nc(k, u);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP jacobi_nd_(SEXP k_, SEXP u_) {
    BEGIN_CPP11
    double k = cpp11::as_cpp<double>(k_);
    double u = cpp11::as_cpp<double>(u_);
    auto result = boost::math::jacobi_nd(k, u);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP jacobi_ns_(SEXP k_, SEXP u_) {
    BEGIN_CPP11
    double k = cpp11::as_cpp<double>(k_);
    double u = cpp11::as_cpp<double>(u_);
    auto result = boost::math::jacobi_ns(k, u);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP jacobi_sc_(SEXP k_, SEXP u_) {
    BEGIN_CPP11
    double k = cpp11::as_cpp<double>(k_);
    double u = cpp11::as_cpp<double>(u_);
    auto result = boost::math::jacobi_sc(k, u);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP jacobi_sd_(SEXP k_, SEXP u_) {
    BEGIN_CPP11
    double k = cpp11::as_cpp<double>(k_);
    double u = cpp11::as_cpp<double>(u_);
    auto result = boost::math::jacobi_sd(k, u);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP jacobi_sn_(SEXP k_, SEXP u_) {
    BEGIN_CPP11
    double k = cpp11::as_cpp<double>(k_);
    double u = cpp11::as_cpp<double>(u_);
    auto result = boost::math::jacobi_sn(k, u);
    return cpp11::as_sexp(result);
    END_CPP11
  }
}