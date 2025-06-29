#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/distributions/non_central_beta.hpp>

extern "C" {
  SEXP non_central_beta_pdf_(SEXP x_, SEXP alpha_, SEXP beta_, SEXP lambda_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double alpha = cpp11::as_cpp<double>(alpha_);
    double beta = cpp11::as_cpp<double>(beta_);
    double lambda = cpp11::as_cpp<double>(lambda_);
    double result = boost::math::pdf(boost::math::non_central_beta_distribution<>(alpha, beta, lambda), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP non_central_beta_lpdf_(SEXP x_, SEXP alpha_, SEXP beta_, SEXP lambda_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double alpha = cpp11::as_cpp<double>(alpha_);
    double beta = cpp11::as_cpp<double>(beta_);
    double lambda = cpp11::as_cpp<double>(lambda_);
    double result = boost::math::logpdf(boost::math::non_central_beta_distribution<>(alpha, beta, lambda), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP non_central_beta_cdf_(SEXP x_, SEXP alpha_, SEXP beta_, SEXP lambda_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double alpha = cpp11::as_cpp<double>(alpha_);
    double beta = cpp11::as_cpp<double>(beta_);
    double lambda = cpp11::as_cpp<double>(lambda_);
    double result = boost::math::cdf(boost::math::non_central_beta_distribution<>(alpha, beta, lambda), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP non_central_beta_lcdf_(SEXP x_, SEXP alpha_, SEXP beta_, SEXP lambda_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double alpha = cpp11::as_cpp<double>(alpha_);
    double beta = cpp11::as_cpp<double>(beta_);
    double lambda = cpp11::as_cpp<double>(lambda_);
    double result = boost::math::logcdf(boost::math::non_central_beta_distribution<>(alpha, beta, lambda), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP non_central_beta_quantile_(SEXP p_, SEXP alpha_, SEXP beta_, SEXP lambda_) {
    BEGIN_CPP11
    double p = cpp11::as_cpp<double>(p_);
    double alpha = cpp11::as_cpp<double>(alpha_);
    double beta = cpp11::as_cpp<double>(beta_);
    double lambda = cpp11::as_cpp<double>(lambda_);
    double result = boost::math::quantile(boost::math::non_central_beta_distribution<>(alpha, beta, lambda), p);
    return cpp11::as_sexp(result);
    END_CPP11
  }
} // extern "C"
