#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/distributions/normal.hpp>

extern "C" {
  SEXP normal_pdf_(SEXP x_, SEXP mean_, SEXP sd_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double mean = cpp11::as_cpp<double>(mean_);
    double sd = cpp11::as_cpp<double>(sd_);
    double result = boost::math::pdf(boost::math::normal_distribution<>(mean, sd), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP normal_lpdf_(SEXP x_, SEXP mean_, SEXP sd_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double mean = cpp11::as_cpp<double>(mean_);
    double sd = cpp11::as_cpp<double>(sd_);
    double result = boost::math::logpdf(boost::math::normal_distribution<>(mean, sd), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP normal_cdf_(SEXP x_, SEXP mean_, SEXP sd_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double mean = cpp11::as_cpp<double>(mean_);
    double sd = cpp11::as_cpp<double>(sd_);
    double result = boost::math::cdf(boost::math::normal_distribution<>(mean, sd), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP normal_lcdf_(SEXP x_, SEXP mean_, SEXP sd_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double mean = cpp11::as_cpp<double>(mean_);
    double sd = cpp11::as_cpp<double>(sd_);
    double result = boost::math::logcdf(boost::math::normal_distribution<>(mean, sd), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP normal_quantile_(SEXP p_, SEXP mean_, SEXP sd_) {
    BEGIN_CPP11
    double p = cpp11::as_cpp<double>(p_);
    double mean = cpp11::as_cpp<double>(mean_);
    double sd = cpp11::as_cpp<double>(sd_);
    double result = boost::math::quantile(boost::math::normal_distribution<>(mean, sd), p);
    return cpp11::as_sexp(result);
    END_CPP11
  }
}
