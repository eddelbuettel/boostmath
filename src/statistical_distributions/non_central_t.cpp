#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/distributions/non_central_t.hpp>

extern "C" {
  SEXP non_central_t_pdf_(SEXP x_, SEXP df_, SEXP delta_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double df = cpp11::as_cpp<double>(df_);
    double delta = cpp11::as_cpp<double>(delta_);
    double result = boost::math::pdf(boost::math::non_central_t_distribution<>(df, delta), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP non_central_t_lpdf_(SEXP x_, SEXP df_, SEXP delta_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double df = cpp11::as_cpp<double>(df_);
    double delta = cpp11::as_cpp<double>(delta_);
    double result = boost::math::logpdf(boost::math::non_central_t_distribution<>(df, delta), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP non_central_t_cdf_(SEXP x_, SEXP df_, SEXP delta_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double df = cpp11::as_cpp<double>(df_);
    double delta = cpp11::as_cpp<double>(delta_);
    double result = boost::math::cdf(boost::math::non_central_t_distribution<>(df, delta), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP non_central_t_lcdf_(SEXP x_, SEXP df_, SEXP delta_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double df = cpp11::as_cpp<double>(df_);
    double delta = cpp11::as_cpp<double>(delta_);
    double result = boost::math::logcdf(boost::math::non_central_t_distribution<>(df, delta), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP non_central_t_quantile_(SEXP p_, SEXP df_, SEXP delta_) {
    BEGIN_CPP11
    double p = cpp11::as_cpp<double>(p_);
    double df = cpp11::as_cpp<double>(df_);
    double delta = cpp11::as_cpp<double>(delta_);
    double result = boost::math::quantile(boost::math::non_central_t_distribution<>(df, delta), p);
    return cpp11::as_sexp(result);
    END_CPP11
  }
} // extern "C"
