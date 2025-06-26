#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/special_functions/sin_pi.hpp>
#include <boost/math/special_functions/cos_pi.hpp>
#include <boost/math/special_functions/log1p.hpp>
#include <boost/math/special_functions/expm1.hpp>
#include <boost/math/special_functions/cbrt.hpp>
#include <boost/math/special_functions/sqrt1pm1.hpp>
#include <boost/math/special_functions/powm1.hpp>
#include <boost/math/special_functions/hypot.hpp>
#include <boost/math/special_functions/rsqrt.hpp>

extern "C" {
  SEXP sin_pi_(SEXP x_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::sin_pi(x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP cos_pi_(SEXP x_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::cos_pi(x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP log1p_(SEXP x_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::log1p(x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP expm1_(SEXP x_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::expm1(x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP cbrt_(SEXP x_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::cbrt(x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP sqrt1pm1_(SEXP x_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::sqrt1pm1(x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP powm1_(SEXP x_, SEXP y_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double y = cpp11::as_cpp<double>(y_);
    double result = boost::math::powm1(x, y);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP hypot_(SEXP x_, SEXP y_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double y = cpp11::as_cpp<double>(y_);
    double result = boost::math::hypot(x, y);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP rsqrt_(SEXP x_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::rsqrt(x);
    return cpp11::as_sexp(result);
    END_CPP11
  }
}
