#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/distributions/pareto.hpp>

extern "C" {
  SEXP pareto_pdf_(SEXP x_, SEXP scale_, SEXP shape_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double scale = cpp11::as_cpp<double>(scale_);
    double shape = cpp11::as_cpp<double>(shape_);
    double result = boost::math::pdf(boost::math::pareto_distribution<>(scale, shape), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP pareto_lpdf_(SEXP x_, SEXP scale_, SEXP shape_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double scale = cpp11::as_cpp<double>(scale_);
    double shape = cpp11::as_cpp<double>(shape_);
    double result = boost::math::logpdf(boost::math::pareto_distribution<>(scale, shape), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP pareto_cdf_(SEXP x_, SEXP scale_, SEXP shape_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double scale = cpp11::as_cpp<double>(scale_);
    double shape = cpp11::as_cpp<double>(shape_);
    double result = boost::math::cdf(boost::math::pareto_distribution<>(scale, shape), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP pareto_lcdf_(SEXP x_, SEXP scale_, SEXP shape_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double scale = cpp11::as_cpp<double>(scale_);
    double shape = cpp11::as_cpp<double>(shape_);
    double result = boost::math::logcdf(boost::math::pareto_distribution<>(scale, shape), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP pareto_quantile_(SEXP p_, SEXP scale_, SEXP shape_) {
    BEGIN_CPP11
    double p = cpp11::as_cpp<double>(p_);
    double scale = cpp11::as_cpp<double>(scale_);
    double shape = cpp11::as_cpp<double>(shape_);
    double result = boost::math::quantile(boost::math::pareto_distribution<>(scale, shape), p);
    return cpp11::as_sexp(result);
    END_CPP11
  }
} // extern "C"
