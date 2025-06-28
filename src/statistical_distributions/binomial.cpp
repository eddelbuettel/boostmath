#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/distributions/binomial.hpp>

extern "C" {
  SEXP binomial_pdf_(SEXP k_, SEXP n_, SEXP prob_) {
    BEGIN_CPP11
    int k = cpp11::as_cpp<int>(k_);
    int n = cpp11::as_cpp<int>(n_);
    double prob = cpp11::as_cpp<double>(prob_);
    double result = boost::math::pdf(boost::math::binomial_distribution<>(n, prob), k);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP binomial_lpdf_(SEXP k_, SEXP n_, SEXP prob_) {
    BEGIN_CPP11
    int k = cpp11::as_cpp<int>(k_);
    int n = cpp11::as_cpp<int>(n_);
    double prob = cpp11::as_cpp<double>(prob_);
    double result = boost::math::logpdf(boost::math::binomial_distribution<>(n, prob), k);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP binomial_cdf_(SEXP k_, SEXP n_, SEXP prob_) {
    BEGIN_CPP11
    int k = cpp11::as_cpp<int>(k_);
    int n = cpp11::as_cpp<int>(n_);
    double prob = cpp11::as_cpp<double>(prob_);
    double result = boost::math::cdf(boost::math::binomial_distribution<>(n, prob), k);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP binomial_lcdf_(SEXP k_, SEXP n_, SEXP prob_) {
    BEGIN_CPP11
    int k = cpp11::as_cpp<int>(k_);
    int n = cpp11::as_cpp<int>(n_);
    double prob = cpp11::as_cpp<double>(prob_);
    double result = boost::math::logcdf(boost::math::binomial_distribution<>(n, prob), k);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP binomial_quantile_(SEXP p_, SEXP n_, SEXP prob_) {
    BEGIN_CPP11
    double p = cpp11::as_cpp<double>(p_);
    int n = cpp11::as_cpp<int>(n_);
    double prob = cpp11::as_cpp<double>(prob_);
    double result = boost::math::quantile(boost::math::binomial_distribution<>(n, prob), p);
    return cpp11::as_sexp(result);
    END_CPP11
  }
}
