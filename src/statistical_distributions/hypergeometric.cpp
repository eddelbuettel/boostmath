#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/distributions/hypergeometric.hpp>

extern "C" {
  SEXP hypergeometric_pdf_(SEXP x_, SEXP r_, SEXP n_, SEXP N_) {
    BEGIN_CPP11
    uint64_t x = cpp11::as_cpp<uint64_t>(x_);
    uint64_t r = cpp11::as_cpp<uint64_t>(r_);
    uint64_t n = cpp11::as_cpp<uint64_t>(n_);
    uint64_t N = cpp11::as_cpp<uint64_t>(N_);
    double result = boost::math::pdf(boost::math::hypergeometric_distribution<>(r, n, N), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }
  SEXP hypergeometric_lpdf_(SEXP x_, SEXP r_, SEXP n_, SEXP N_) {
    BEGIN_CPP11
    uint64_t x = cpp11::as_cpp<uint64_t>(x_);
    uint64_t r = cpp11::as_cpp<uint64_t>(r_);
    uint64_t n = cpp11::as_cpp<uint64_t>(n_);
    uint64_t N = cpp11::as_cpp<uint64_t>(N_);
    double result = boost::math::logpdf(boost::math::hypergeometric_distribution<>(r, n, N), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }
  SEXP hypergeometric_cdf_(SEXP x_, SEXP r_, SEXP n_, SEXP N_) {
    BEGIN_CPP11
    uint64_t x = cpp11::as_cpp<uint64_t>(x_);
    uint64_t r = cpp11::as_cpp<uint64_t>(r_);
    uint64_t n = cpp11::as_cpp<uint64_t>(n_);
    uint64_t N = cpp11::as_cpp<uint64_t>(N_);
    double result = boost::math::cdf(boost::math::hypergeometric_distribution<>(r, n, N), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }
  SEXP hypergeometric_lcdf_(SEXP x_, SEXP r_, SEXP n_, SEXP N_) {
    BEGIN_CPP11
    uint64_t x = cpp11::as_cpp<uint64_t>(x_);
    uint64_t r = cpp11::as_cpp<uint64_t>(r_);
    uint64_t n = cpp11::as_cpp<uint64_t>(n_);
    uint64_t N = cpp11::as_cpp<uint64_t>(N_);
    double result = boost::math::logcdf(boost::math::hypergeometric_distribution<>(r, n, N), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }
  SEXP hypergeometric_quantile_(SEXP p_, SEXP r_, SEXP n_, SEXP N_) {
    BEGIN_CPP11
    double p = cpp11::as_cpp<double>(p_);
    uint64_t r = cpp11::as_cpp<uint64_t>(r_);
    uint64_t n = cpp11::as_cpp<uint64_t>(n_);
    uint64_t N = cpp11::as_cpp<uint64_t>(N_);
    double result = boost::math::quantile(boost::math::hypergeometric_distribution<>(r, n, N), p);
    return cpp11::as_sexp(result);
    END_CPP11
  }
} // extern "C"
