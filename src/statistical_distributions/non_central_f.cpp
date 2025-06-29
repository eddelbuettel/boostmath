#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/distributions/non_central_f.hpp>

extern "C" {
  SEXP non_central_f_pdf_(SEXP x_, SEXP df1_, SEXP df2_, SEXP lambda_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double df1 = cpp11::as_cpp<double>(df1_);
    double df2 = cpp11::as_cpp<double>(df2_);
    double lambda = cpp11::as_cpp<double>(lambda_);
    double result = boost::math::pdf(boost::math::non_central_f_distribution<>(df1, df2, lambda), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP non_central_f_lpdf_(SEXP x_, SEXP df1_, SEXP df2_, SEXP lambda_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double df1 = cpp11::as_cpp<double>(df1_);
    double df2 = cpp11::as_cpp<double>(df2_);
    double lambda = cpp11::as_cpp<double>(lambda_);
    double result = boost::math::logpdf(boost::math::non_central_f_distribution<>(df1, df2, lambda), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP non_central_f_cdf_(SEXP x_, SEXP df1_, SEXP df2_, SEXP lambda_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double df1 = cpp11::as_cpp<double>(df1_);
    double df2 = cpp11::as_cpp<double>(df2_);
    double lambda = cpp11::as_cpp<double>(lambda_);
    double result = boost::math::cdf(boost::math::non_central_f_distribution<>(df1, df2, lambda), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP non_central_f_lcdf_(SEXP x_, SEXP df1_, SEXP df2_, SEXP lambda_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double df1 = cpp11::as_cpp<double>(df1_);
    double df2 = cpp11::as_cpp<double>(df2_);
    double lambda = cpp11::as_cpp<double>(lambda_);
    double result = boost::math::logcdf(boost::math::non_central_f_distribution<>(df1, df2, lambda), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP non_central_f_quantile_(SEXP p_, SEXP df1_, SEXP df2_, SEXP lambda_) {
    BEGIN_CPP11
    double p = cpp11::as_cpp<double>(p_);
    double df1 = cpp11::as_cpp<double>(df1_);
    double df2 = cpp11::as_cpp<double>(df2_);
    double lambda = cpp11::as_cpp<double>(lambda_);
    double result = boost::math::quantile(boost::math::non_central_f_distribution<>(df1, df2, lambda), p);
    return cpp11::as_sexp(result);
    END_CPP11
  }
} // extern "C"
