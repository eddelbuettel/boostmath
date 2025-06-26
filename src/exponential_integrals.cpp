#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/special_functions/expint.hpp>

extern "C" {
  SEXP expint_en_(SEXP n_, SEXP z_) {
    BEGIN_CPP11
    uint64_t n = cpp11::as_cpp<uint64_t>(n_);
    double z = cpp11::as_cpp<double>(z_);
    double result = boost::math::expint(n, z);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP expint_ei_(SEXP z_) {
    BEGIN_CPP11
    double z = cpp11::as_cpp<double>(z_);
    double result = boost::math::expint(z);
    return cpp11::as_sexp(result);
    END_CPP11
  }
}
