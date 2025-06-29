#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/distributions/inverse_gamma.hpp>

extern "C" {
  SEXP inverse_gamma_pdf_(SEXP x_, SEXP shape_, SEXP scale_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double shape = cpp11::as_cpp<double>(shape_);
    double scale = cpp11::as_cpp<double>(scale_);
    double result = boost::math::pdf(boost::math::inverse_gamma_distribution<>(shape, scale), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP inverse_gamma_lpdf_(SEXP x_, SEXP shape_, SEXP scale_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double shape = cpp11::as_cpp<double>(shape_);
    double scale = cpp11::as_cpp<double>(scale_);
    double result = boost::math::logpdf(boost::math::inverse_gamma_distribution<>(shape, scale), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP inverse_gamma_cdf_(SEXP x_, SEXP shape_, SEXP scale_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double shape = cpp11::as_cpp<double>(shape_);
    double scale = cpp11::as_cpp<double>(scale_);
    double result = boost::math::cdf(boost::math::inverse_gamma_distribution<>(shape, scale), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP inverse_gamma_lcdf_(SEXP x_, SEXP shape_, SEXP scale_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double shape = cpp11::as_cpp<double>(shape_);
    double scale = cpp11::as_cpp<double>(scale_);
    double result = boost::math::logcdf(boost::math::inverse_gamma_distribution<>(shape, scale), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP inverse_gamma_quantile_(SEXP p_, SEXP shape_, SEXP scale_) {
    BEGIN_CPP11
    double p = cpp11::as_cpp<double>(p_);
    double shape = cpp11::as_cpp<double>(shape_);
    double scale = cpp11::as_cpp<double>(scale_);
    double result = boost::math::quantile(boost::math::inverse_gamma_distribution<>(shape, scale), p);
    return cpp11::as_sexp(result);
    END_CPP11
  }
} // extern "C"
