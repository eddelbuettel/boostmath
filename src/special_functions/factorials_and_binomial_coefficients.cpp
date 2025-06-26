#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/special_functions/factorials.hpp>
#include <boost/math/special_functions/binomial.hpp>

extern "C" {
  SEXP factorial_(SEXP i_) {
    BEGIN_CPP11
    uint64_t i = cpp11::as_cpp<uint64_t>(i_);
    double result = boost::math::factorial<double>(i);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP unchecked_factorial_(SEXP i_) {
    BEGIN_CPP11
    uint64_t i = cpp11::as_cpp<uint64_t>(i_);
    double result = boost::math::unchecked_factorial<double>(i);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP max_factorial_() {
    BEGIN_CPP11
    uint64_t result = boost::math::max_factorial<double>::value;
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP double_factorial_(SEXP i_) {
    BEGIN_CPP11
    uint64_t i = cpp11::as_cpp<uint64_t>(i_);
    double result = boost::math::double_factorial<double>(i);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP rising_factorial_(SEXP x_, SEXP i_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    int i = cpp11::as_cpp<int>(i_);
    double result = boost::math::rising_factorial<double>(x, i);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP falling_factorial_(SEXP x_, SEXP i_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    uint64_t i = cpp11::as_cpp<uint64_t>(i_);
    double result = boost::math::falling_factorial<double>(x, i);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP binomial_coefficient_(SEXP n_, SEXP k_) {
    BEGIN_CPP11
    uint64_t n = cpp11::as_cpp<uint64_t>(n_);
    uint64_t k = cpp11::as_cpp<uint64_t>(k_);
    double result = boost::math::binomial_coefficient<double>(n, k);
    return cpp11::as_sexp(result);
    END_CPP11
  }
}
