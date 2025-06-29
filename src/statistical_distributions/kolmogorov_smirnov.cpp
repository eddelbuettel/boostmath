#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/distributions/kolmogorov_smirnov.hpp>

extern "C" {
  SEXP kolmogorov_smirnov_pdf_(SEXP x_, SEXP n_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    int n = cpp11::as_cpp<int>(n_);
    double result = boost::math::pdf(boost::math::kolmogorov_smirnov_distribution<>(n), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP kolmogorov_smirnov_lpdf_(SEXP x_, SEXP n_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    int n = cpp11::as_cpp<int>(n_);
    double result = log(boost::math::pdf(boost::math::kolmogorov_smirnov_distribution<>(n), x));
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP kolmogorov_smirnov_cdf_(SEXP x_, SEXP n_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    int n = cpp11::as_cpp<int>(n_);
    double result = boost::math::cdf(boost::math::kolmogorov_smirnov_distribution<>(n), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP kolmogorov_smirnov_lcdf_(SEXP x_, SEXP n_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    int n = cpp11::as_cpp<int>(n_);
    double result = log(boost::math::cdf(boost::math::kolmogorov_smirnov_distribution<>(n), x));
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP kolmogorov_smirnov_quantile_(SEXP p_, SEXP n_) {
    BEGIN_CPP11
    double p = cpp11::as_cpp<double>(p_);
    int n = cpp11::as_cpp<int>(n_);
    double result = boost::math::quantile(boost::math::kolmogorov_smirnov_distribution<>(n), p);
    return cpp11::as_sexp(result);
    END_CPP11
  }
} // extern "C"
