#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/distributions/inverse_gaussian.hpp>

extern "C" {
  SEXP inverse_gaussian_pdf_(SEXP x_, SEXP mu_, SEXP lambda_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double mu = cpp11::as_cpp<double>(mu_);
    double lambda = cpp11::as_cpp<double>(lambda_);
    double result = boost::math::pdf(boost::math::inverse_gaussian_distribution<>(mu, lambda), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP inverse_gaussian_lpdf_(SEXP x_, SEXP mu_, SEXP lambda_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double mu = cpp11::as_cpp<double>(mu_);
    double lambda = cpp11::as_cpp<double>(lambda_);
    double result = boost::math::logpdf(boost::math::inverse_gaussian_distribution<>(mu, lambda), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP inverse_gaussian_cdf_(SEXP x_, SEXP mu_, SEXP lambda_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double mu = cpp11::as_cpp<double>(mu_);
    double lambda = cpp11::as_cpp<double>(lambda_);
    double result = boost::math::cdf(boost::math::inverse_gaussian_distribution<>(mu, lambda), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP inverse_gaussian_lcdf_(SEXP x_, SEXP mu_, SEXP lambda_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double mu = cpp11::as_cpp<double>(mu_);
    double lambda = cpp11::as_cpp<double>(lambda_);
    double result = boost::math::logcdf(boost::math::inverse_gaussian_distribution<>(mu, lambda), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP inverse_gaussian_quantile_(SEXP p_, SEXP mu_, SEXP lambda_) {
    BEGIN_CPP11
    double p = cpp11::as_cpp<double>(p_);
    double mu = cpp11::as_cpp<double>(mu_);
    double lambda = cpp11::as_cpp<double>(lambda_);
    double result = boost::math::quantile(boost::math::inverse_gaussian_distribution<>(mu, lambda), p);
    return cpp11::as_sexp(result);
    END_CPP11
  }
} // extern "C"
