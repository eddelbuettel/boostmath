#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/distributions/arcsine.hpp>

extern "C" {
  SEXP arcsine_pdf_(SEXP x_, SEXP x_min_, SEXP x_max_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double x_min = cpp11::as_cpp<double>(x_min_);
    double x_max = cpp11::as_cpp<double>(x_max_);
    double result = boost::math::pdf(boost::math::arcsine_distribution<>(x_min, x_max), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP arcsine_lpdf_(SEXP x_, SEXP x_min_, SEXP x_max_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double x_min = cpp11::as_cpp<double>(x_min_);
    double x_max = cpp11::as_cpp<double>(x_max_);
    double result = boost::math::logpdf(boost::math::arcsine_distribution<>(x_min, x_max), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP arcsine_cdf_(SEXP x_, SEXP x_min_, SEXP x_max_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double x_min = cpp11::as_cpp<double>(x_min_);
    double x_max = cpp11::as_cpp<double>(x_max_);
    double result = boost::math::cdf(boost::math::arcsine_distribution<>(x_min, x_max), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP arcsine_lcdf_(SEXP x_, SEXP x_min_, SEXP x_max_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double x_min = cpp11::as_cpp<double>(x_min_);
    double x_max = cpp11::as_cpp<double>(x_max_);
    double result = boost::math::logcdf(boost::math::arcsine_distribution<>(x_min, x_max), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP arcsine_quantile_(SEXP p_, SEXP x_min_, SEXP x_max_) {
    BEGIN_CPP11
    double p = cpp11::as_cpp<double>(p_);
    double x_min = cpp11::as_cpp<double>(x_min_);
    double x_max = cpp11::as_cpp<double>(x_max_);
    double result = boost::math::quantile(boost::math::arcsine_distribution<>(x_min, x_max), p);
    return cpp11::as_sexp(result);
    END_CPP11
  }
}
