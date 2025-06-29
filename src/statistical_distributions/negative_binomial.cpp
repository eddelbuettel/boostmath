#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/distributions/negative_binomial.hpp>

extern "C" {
  SEXP negative_binomial_pdf(SEXP x_, SEXP successes_, SEXP success_fraction_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double successes = cpp11::as_cpp<double>(successes_);
    double success_fraction = cpp11::as_cpp<double>(success_fraction_);
    double result = boost::math::pdf(boost::math::negative_binomial_distribution<>(successes, success_fraction), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP negative_binomial_lpdf(SEXP x_, SEXP successes_, SEXP success_fraction_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double successes = cpp11::as_cpp<double>(successes_);
    double success_fraction = cpp11::as_cpp<double>(success_fraction_);
    double result = boost::math::logpdf(boost::math::negative_binomial_distribution<>(successes, success_fraction), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP negative_binomial_cdf(SEXP x_, SEXP successes_, SEXP success_fraction_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double successes = cpp11::as_cpp<double>(successes_);
    double success_fraction = cpp11::as_cpp<double>(success_fraction_);
    double result = boost::math::cdf(boost::math::negative_binomial_distribution<>(successes, success_fraction), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP negative_binomial_lcdf(SEXP x_, SEXP successes_, SEXP success_fraction_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double successes = cpp11::as_cpp<double>(successes_);
    double success_fraction = cpp11::as_cpp<double>(success_fraction_);
    double result = boost::math::logcdf(boost::math::negative_binomial_distribution<>(successes, success_fraction), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP negative_binomial_quantile(SEXP p_, SEXP successes_, SEXP success_fraction_) {
    BEGIN_CPP11
    double p = cpp11::as_cpp<double>(p_);
    double successes = cpp11::as_cpp<double>(successes_);
    double success_fraction = cpp11::as_cpp<double>(success_fraction_);
    double result = boost::math::quantile(boost::math::negative_binomial_distribution<>(successes, success_fraction), p);
    return cpp11::as_sexp(result);
    END_CPP11
  }
}
