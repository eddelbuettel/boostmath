#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/distributions/bernoulli.hpp>

extern "C" {
  SEXP bernoulli_pdf_(SEXP x_, SEXP p_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double p = cpp11::as_cpp<double>(p_);
    double result = boost::math::pdf(boost::math::bernoulli_distribution<>(p), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP bernoulli_lpdf_(SEXP x_, SEXP p_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double p = cpp11::as_cpp<double>(p_);
    double result = boost::math::logpdf(boost::math::bernoulli_distribution<>(p), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP bernoulli_cdf_(SEXP x_, SEXP p_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double p = cpp11::as_cpp<double>(p_);
    double result = boost::math::cdf(boost::math::bernoulli_distribution<>(p), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP bernoulli_lcdf_(SEXP x_, SEXP p_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double p = cpp11::as_cpp<double>(p_);
    double result = boost::math::logcdf(boost::math::bernoulli_distribution<>(p), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP bernoulli_quantile_(SEXP p_, SEXP q_) {
    BEGIN_CPP11
    double p = cpp11::as_cpp<double>(p_);
    double q = cpp11::as_cpp<double>(q_);
    double result = boost::math::quantile(boost::math::bernoulli_distribution<>(q), p);
    return cpp11::as_sexp(result);
    END_CPP11
  }
}
