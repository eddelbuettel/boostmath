#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/special_functions/erf.hpp>

extern "C" {
  SEXP erf_(SEXP x_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::erf(x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP erfc_(SEXP x_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::erfc(x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP erf_inv_(SEXP p_) {
    BEGIN_CPP11
    double p = cpp11::as_cpp<double>(p_);
    double result = boost::math::erf_inv(p);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP erfc_inv_(SEXP p_) {
    BEGIN_CPP11
    double p = cpp11::as_cpp<double>(p_);
    double result = boost::math::erfc_inv(p);
    return cpp11::as_sexp(result);
    END_CPP11
  }
}
