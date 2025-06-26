#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/special_functions/lambert_w.hpp>

extern "C" {
  SEXP lambert_w0_(SEXP z_) {
    BEGIN_CPP11
    double z = cpp11::as_cpp<double>(z_);
    auto result = boost::math::lambert_w0(z);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP lambert_wm1_(SEXP z_) {
    BEGIN_CPP11
    double z = cpp11::as_cpp<double>(z_);
    auto result = boost::math::lambert_wm1(z);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP lambert_w0_prime_(SEXP z_) {
    BEGIN_CPP11
    double z = cpp11::as_cpp<double>(z_);
    auto result = boost::math::lambert_w0_prime(z);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP lambert_wm1_prime_(SEXP z_) {
    BEGIN_CPP11
    double z = cpp11::as_cpp<double>(z_);
    auto result = boost::math::lambert_wm1_prime(z);
    return cpp11::as_sexp(result);
    END_CPP11
  }
}