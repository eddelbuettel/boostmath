#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/special_functions/acosh.hpp>
#include <boost/math/special_functions/asinh.hpp>
#include <boost/math/special_functions/atanh.hpp>

extern "C" {
  SEXP acosh_(SEXP x_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::acosh(x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP asinh_(SEXP x_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::asinh(x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP atanh_(SEXP x_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::atanh(x);
    return cpp11::as_sexp(result);
    END_CPP11
  }
}
