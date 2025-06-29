#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/distributions/uniform.hpp>

extern "C" {
  SEXP uniform_pdf_(SEXP x_, SEXP lower_, SEXP upper_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double lower = cpp11::as_cpp<double>(lower_);
    double upper = cpp11::as_cpp<double>(upper_);
    double result = boost::math::pdf(boost::math::uniform_distribution<>(lower, upper), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP uniform_lpdf_(SEXP x_, SEXP lower_, SEXP upper_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double lower = cpp11::as_cpp<double>(lower_);
    double upper = cpp11::as_cpp<double>(upper_);
    double result = boost::math::logpdf(boost::math::uniform_distribution<>(lower, upper), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP uniform_cdf_(SEXP x_, SEXP lower_, SEXP upper_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double lower = cpp11::as_cpp<double>(lower_);
    double upper = cpp11::as_cpp<double>(upper_);
    double result = boost::math::cdf(boost::math::uniform_distribution<>(lower, upper), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP uniform_lcdf_(SEXP x_, SEXP lower_, SEXP upper_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double lower = cpp11::as_cpp<double>(lower_);
    double upper = cpp11::as_cpp<double>(upper_);
    double result = boost::math::logcdf(boost::math::uniform_distribution<>(lower, upper), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP uniform_quantile_(SEXP p_, SEXP lower_, SEXP upper_) {
    BEGIN_CPP11
    double p = cpp11::as_cpp<double>(p_);
    double lower = cpp11::as_cpp<double>(lower_);
    double upper = cpp11::as_cpp<double>(upper_);
    double result = boost::math::quantile(boost::math::uniform_distribution<>(lower, upper), p);
    return cpp11::as_sexp(result);
    END_CPP11
  }
} // extern "C"
