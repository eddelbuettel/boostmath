#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/distributions/poisson.hpp>

extern "C" {
  SEXP poisson_pdf_(SEXP x_, SEXP lambda_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double lambda = cpp11::as_cpp<double>(lambda_);
    double result = boost::math::pdf(boost::math::poisson_distribution<>(lambda), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP poisson_lpdf_(SEXP x_, SEXP lambda_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double lambda = cpp11::as_cpp<double>(lambda_);
    double result = boost::math::logpdf(boost::math::poisson_distribution<>(lambda), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP poisson_cdf_(SEXP x_, SEXP lambda_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double lambda = cpp11::as_cpp<double>(lambda_);
    double result = boost::math::cdf(boost::math::poisson_distribution<>(lambda), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP poisson_lcdf_(SEXP x_, SEXP lambda_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double lambda = cpp11::as_cpp<double>(lambda_);
    double result = boost::math::logcdf(boost::math::poisson_distribution<>(lambda), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP poisson_quantile_(SEXP p_, SEXP lambda_) {
    BEGIN_CPP11
    double p = cpp11::as_cpp<double>(p_);
    double lambda = cpp11::as_cpp<double>(lambda_);
    double result = boost::math::quantile(boost::math::poisson_distribution<>(lambda), p);
    return cpp11::as_sexp(result);
    END_CPP11
  }
} // extern "C"
