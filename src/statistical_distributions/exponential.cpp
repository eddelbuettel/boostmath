#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/distributions/exponential.hpp>

extern "C" {
  SEXP exponential_pdf_(SEXP x_, SEXP lambda_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double lambda = cpp11::as_cpp<double>(lambda_);
    double result = boost::math::pdf(boost::math::exponential_distribution<>(lambda), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP exponential_lpdf_(SEXP x_, SEXP lambda_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double lambda = cpp11::as_cpp<double>(lambda_);
    double result = boost::math::logpdf(boost::math::exponential_distribution<>(lambda), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP exponential_cdf_(SEXP x_, SEXP lambda_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double lambda = cpp11::as_cpp<double>(lambda_);
    double result = boost::math::cdf(boost::math::exponential_distribution<>(lambda), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP exponential_lcdf_(SEXP x_, SEXP lambda_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double lambda = cpp11::as_cpp<double>(lambda_);
    double result = boost::math::logcdf(boost::math::exponential_distribution<>(lambda), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP exponential_quantile_(SEXP p_, SEXP lambda_) {
    BEGIN_CPP11
    double p = cpp11::as_cpp<double>(p_);
    double lambda = cpp11::as_cpp<double>(lambda_);
    double result = boost::math::quantile(boost::math::exponential_distribution<>(lambda), p);
    return cpp11::as_sexp(result);
    END_CPP11
  }
}
