#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/distributions/weibull.hpp>

extern "C" {
  SEXP weibull_pdf_(SEXP x_, SEXP shape_, SEXP scale_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double shape = cpp11::as_cpp<double>(shape_);
    double scale = cpp11::as_cpp<double>(scale_);
    double result = boost::math::pdf(boost::math::weibull_distribution<>(shape, scale), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP weibull_lpdf_(SEXP x_, SEXP shape_, SEXP scale_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double shape = cpp11::as_cpp<double>(shape_);
    double scale = cpp11::as_cpp<double>(scale_);
    double result = boost::math::logpdf(boost::math::weibull_distribution<>(shape, scale), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP weibull_cdf_(SEXP x_, SEXP shape_, SEXP scale_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double shape = cpp11::as_cpp<double>(shape_);
    double scale = cpp11::as_cpp<double>(scale_);
    double result = boost::math::cdf(boost::math::weibull_distribution<>(shape, scale), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP weibull_lcdf_(SEXP x_, SEXP shape_, SEXP scale_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double shape = cpp11::as_cpp<double>(shape_);
    double scale = cpp11::as_cpp<double>(scale_);
    double result = boost::math::logcdf(boost::math::weibull_distribution<>(shape, scale), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP weibull_quantile_(SEXP p_, SEXP shape_, SEXP scale_) {
    BEGIN_CPP11
    double p = cpp11::as_cpp<double>(p_);
    double shape = cpp11::as_cpp<double>(shape_);
    double scale = cpp11::as_cpp<double>(scale_);
    double result = boost::math::quantile(boost::math::weibull_distribution<>(shape, scale), p);
    return cpp11::as_sexp(result);
    END_CPP11
  }
} // extern "C"
