#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/distributions/cauchy.hpp>

extern "C" {
  SEXP cauchy_pdf_(SEXP x_, SEXP location_, SEXP scale_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double location = cpp11::as_cpp<double>(location_);
    double scale = cpp11::as_cpp<double>(scale_);
    double result = boost::math::pdf(boost::math::cauchy_distribution<>(location, scale), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP cauchy_lpdf_(SEXP x_, SEXP location_, SEXP scale_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double location = cpp11::as_cpp<double>(location_);
    double scale = cpp11::as_cpp<double>(scale_);
    double result = boost::math::logpdf(boost::math::cauchy_distribution<>(location, scale), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP cauchy_cdf_(SEXP x_, SEXP location_, SEXP scale_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double location = cpp11::as_cpp<double>(location_);
    double scale = cpp11::as_cpp<double>(scale_);
    double result = boost::math::cdf(boost::math::cauchy_distribution<>(location, scale), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP cauchy_lcdf_(SEXP x_, SEXP location_, SEXP scale_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double location = cpp11::as_cpp<double>(location_);
    double scale = cpp11::as_cpp<double>(scale_);
    double result = boost::math::logcdf(boost::math::cauchy_distribution<>(location, scale), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP cauchy_quantile_(SEXP p_, SEXP location_, SEXP scale_) {
    BEGIN_CPP11
    double p = cpp11::as_cpp<double>(p_);
    double location = cpp11::as_cpp<double>(location_);
    double scale = cpp11::as_cpp<double>(scale_);
    double result = boost::math::quantile(boost::math::cauchy_distribution<>(location, scale), p);
    return cpp11::as_sexp(result);
    END_CPP11
  }
}
