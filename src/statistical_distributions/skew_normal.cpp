#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/distributions/skew_normal.hpp>

extern "C" {
  SEXP skew_normal_pdf_(SEXP x_, SEXP location_, SEXP scale_, SEXP shape_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double location = cpp11::as_cpp<double>(location_);
    double scale = cpp11::as_cpp<double>(scale_);
    double shape = cpp11::as_cpp<double>(shape_);
    double result = boost::math::pdf(boost::math::skew_normal_distribution<>(location, scale, shape), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP skew_normal_lpdf_(SEXP x_, SEXP location_, SEXP scale_, SEXP shape_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double location = cpp11::as_cpp<double>(location_);
    double scale = cpp11::as_cpp<double>(scale_);
    double shape = cpp11::as_cpp<double>(shape_);
    double result = boost::math::logpdf(boost::math::skew_normal_distribution<>(location, scale, shape), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP skew_normal_cdf_(SEXP x_, SEXP location_, SEXP scale_, SEXP shape_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double location = cpp11::as_cpp<double>(location_);
    double scale = cpp11::as_cpp<double>(scale_);
    double shape = cpp11::as_cpp<double>(shape_);
    double result = boost::math::cdf(boost::math::skew_normal_distribution<>(location, scale, shape), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP skew_normal_lcdf_(SEXP x_, SEXP location_, SEXP scale_, SEXP shape_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double location = cpp11::as_cpp<double>(location_);
    double scale = cpp11::as_cpp<double>(scale_);
    double shape = cpp11::as_cpp<double>(shape_);
    double result = boost::math::logcdf(boost::math::skew_normal_distribution<>(location, scale, shape), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP skew_normal_quantile_(SEXP p_, SEXP location_, SEXP scale_, SEXP shape_) {
    BEGIN_CPP11
    double p = cpp11::as_cpp<double>(p_);
    double location = cpp11::as_cpp<double>(location_);
    double scale = cpp11::as_cpp<double>(scale_);
    double shape = cpp11::as_cpp<double>(shape_);
    double result = boost::math::quantile(boost::math::skew_normal_distribution<>(location, scale, shape), p);
    return cpp11::as_sexp(result);
    END_CPP11
  }
} // extern "C"
