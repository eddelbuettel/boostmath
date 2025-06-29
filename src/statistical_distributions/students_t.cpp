#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/distributions/students_t.hpp>

extern "C" {
  SEXP students_t_pdf_(SEXP x_, SEXP df_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double df = cpp11::as_cpp<double>(df_);
    double result = boost::math::pdf(boost::math::students_t_distribution<>(df), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP students_t_lpdf_(SEXP x_, SEXP df_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double df = cpp11::as_cpp<double>(df_);
    double result = boost::math::logpdf(boost::math::students_t_distribution<>(df), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP students_t_cdf_(SEXP x_, SEXP df_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double df = cpp11::as_cpp<double>(df_);
    double result = boost::math::cdf(boost::math::students_t_distribution<>(df), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP students_t_lcdf_(SEXP x_, SEXP df_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double df = cpp11::as_cpp<double>(df_);
    double result = boost::math::logcdf(boost::math::students_t_distribution<>(df), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP students_t_quantile_(SEXP p_, SEXP df_) {
    BEGIN_CPP11
    double p = cpp11::as_cpp<double>(p_);
    double df = cpp11::as_cpp<double>(df_);
    double result = boost::math::quantile(boost::math::students_t_distribution<>(df), p);
    return cpp11::as_sexp(result);
    END_CPP11
  }
} // extern "C"
