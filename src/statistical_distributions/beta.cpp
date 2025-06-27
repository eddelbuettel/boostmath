#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/distributions/beta.hpp>

extern "C" {
  SEXP beta_pdf_(SEXP x_, SEXP alpha_, SEXP beta_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double alpha = cpp11::as_cpp<double>(alpha_);
    double beta = cpp11::as_cpp<double>(beta_);
    double result = boost::math::pdf(boost::math::beta_distribution<>(alpha, beta), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP beta_lpdf_(SEXP x_, SEXP alpha_, SEXP beta_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double alpha = cpp11::as_cpp<double>(alpha_);
    double beta = cpp11::as_cpp<double>(beta_);
    double result = boost::math::logpdf(boost::math::beta_distribution<>(alpha, beta), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP beta_cdf_(SEXP x_, SEXP alpha_, SEXP beta_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double alpha = cpp11::as_cpp<double>(alpha_);
    double beta = cpp11::as_cpp<double>(beta_);
    double result = boost::math::cdf(boost::math::beta_distribution<>(alpha, beta), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP beta_lcdf_(SEXP x_, SEXP alpha_, SEXP beta_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double alpha = cpp11::as_cpp<double>(alpha_);
    double beta = cpp11::as_cpp<double>(beta_);
    double result = boost::math::logcdf(boost::math::beta_distribution<>(alpha, beta), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP beta_quantile_(SEXP p_, SEXP alpha_, SEXP beta_) {
    BEGIN_CPP11
    double p = cpp11::as_cpp<double>(p_);
    double alpha = cpp11::as_cpp<double>(alpha_);
    double beta = cpp11::as_cpp<double>(beta_);
    double result = boost::math::quantile(boost::math::beta_distribution<>(alpha, beta), p);
    return cpp11::as_sexp(result);
    END_CPP11
  }
}
