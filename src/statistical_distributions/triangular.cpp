#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/distributions/triangular.hpp>

extern "C" {
  SEXP triangular_pdf_(SEXP x_, SEXP lower_, SEXP mode_, SEXP upper_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double lower = cpp11::as_cpp<double>(lower_);
    double mode = cpp11::as_cpp<double>(mode_);
    double upper = cpp11::as_cpp<double>(upper_);
    double result = boost::math::pdf(boost::math::triangular_distribution<>(lower, mode, upper), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP triangular_lpdf_(SEXP x_, SEXP lower_, SEXP mode_, SEXP upper_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double lower = cpp11::as_cpp<double>(lower_);
    double mode = cpp11::as_cpp<double>(mode_);
    double upper = cpp11::as_cpp<double>(upper_);
    double result = boost::math::logpdf(boost::math::triangular_distribution<>(lower, mode, upper), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP triangular_cdf_(SEXP x_, SEXP lower_, SEXP mode_, SEXP upper_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double lower = cpp11::as_cpp<double>(lower_);
    double mode = cpp11::as_cpp<double>(mode_);
    double upper = cpp11::as_cpp<double>(upper_);
    double result = boost::math::cdf(boost::math::triangular_distribution<>(lower, mode, upper), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP triangular_lcdf_(SEXP x_, SEXP lower_, SEXP mode_, SEXP upper_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double lower = cpp11::as_cpp<double>(lower_);
    double mode = cpp11::as_cpp<double>(mode_);
    double upper = cpp11::as_cpp<double>(upper_);
    double result = boost::math::logcdf(boost::math::triangular_distribution<>(lower, mode, upper), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP triangular_quantile_(SEXP p_, SEXP lower_, SEXP mode_, SEXP upper_) {
    BEGIN_CPP11
    double p = cpp11::as_cpp<double>(p_);
    double lower = cpp11::as_cpp<double>(lower_);
    double mode = cpp11::as_cpp<double>(mode_);
    double upper = cpp11::as_cpp<double>(upper_);
    double result = boost::math::quantile(boost::math::triangular_distribution<>(lower, mode, upper), p);
    return cpp11::as_sexp(result);
    END_CPP11
  }
} // extern "C"
