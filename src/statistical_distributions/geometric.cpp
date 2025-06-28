#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/distributions/geometric.hpp>

extern "C" {
  SEXP geometric_pdf_(SEXP x_, SEXP prob_) {
    BEGIN_CPP11
    int x = cpp11::as_cpp<int>(x_);
    double prob = cpp11::as_cpp<double>(prob_);
    double result = boost::math::pdf(boost::math::geometric_distribution<>(prob), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP geometric_lpdf_(SEXP x_, SEXP prob_) {
    BEGIN_CPP11
    int x = cpp11::as_cpp<int>(x_);
    double prob = cpp11::as_cpp<double>(prob_);
    double result = boost::math::logpdf(boost::math::geometric_distribution<>(prob), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP geometric_cdf_(SEXP x_, SEXP prob_) {
    BEGIN_CPP11
    int x = cpp11::as_cpp<int>(x_);
    double prob = cpp11::as_cpp<double>(prob_);
    double result = boost::math::cdf(boost::math::geometric_distribution<>(prob), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP geometric_lcdf_(SEXP x_, SEXP prob_) {
    BEGIN_CPP11
    int x = cpp11::as_cpp<int>(x_);
    double prob = cpp11::as_cpp<double>(prob_);
    double result = boost::math::logcdf(boost::math::geometric_distribution<>(prob), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP geometric_quantile_(SEXP p_, SEXP prob_) {
    BEGIN_CPP11
    double p = cpp11::as_cpp<double>(p_);
    double prob = cpp11::as_cpp<double>(prob_);
    double result = boost::math::quantile(boost::math::geometric_distribution<>(prob), p);
    return cpp11::as_sexp(result);
    END_CPP11
  }
}
