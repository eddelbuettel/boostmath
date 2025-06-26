#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/special_functions/sinc.hpp>
#include <boost/math/special_functions/sinhc.hpp>

extern "C" {
  SEXP sinc_pi_(SEXP x_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::sinc_pi(x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP sinhc_pi_(SEXP x_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::sinhc_pi(x);
    return cpp11::as_sexp(result);
    END_CPP11
  }
}
