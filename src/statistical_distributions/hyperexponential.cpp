#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/distributions/hyperexponential.hpp>

extern "C" {
  SEXP hyperexponential_pdf_(SEXP x_, SEXP probabilities_, SEXP rates_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    std::vector<double> probabilities = cpp11::as_cpp<std::vector<double>>(probabilities_);
    std::vector<double> rates = cpp11::as_cpp<std::vector<double>>(rates_);
    double result = boost::math::pdf(boost::math::hyperexponential_distribution<>(probabilities, rates), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP hyperexponential_lpdf_(SEXP x_, SEXP probabilities_, SEXP rates_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    std::vector<double> probabilities = cpp11::as_cpp<std::vector<double>>(probabilities_);
    std::vector<double> rates = cpp11::as_cpp<std::vector<double>>(rates_);
    double result = boost::math::logpdf(boost::math::hyperexponential_distribution<>(probabilities, rates), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP hyperexponential_cdf_(SEXP x_, SEXP probabilities_, SEXP rates_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    std::vector<double> probabilities = cpp11::as_cpp<std::vector<double>>(probabilities_);
    std::vector<double> rates = cpp11::as_cpp<std::vector<double>>(rates_);
    double result = boost::math::cdf(boost::math::hyperexponential_distribution<>(probabilities, rates), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP hyperexponential_lcdf_(SEXP x_, SEXP probabilities_, SEXP rates_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    std::vector<double> probabilities = cpp11::as_cpp<std::vector<double>>(probabilities_);
    std::vector<double> rates = cpp11::as_cpp<std::vector<double>>(rates_);
    double result = boost::math::logcdf(boost::math::hyperexponential_distribution<>(probabilities, rates), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP hyperexponential_quantile_(SEXP p_, SEXP probabilities_, SEXP rates_) {
    BEGIN_CPP11
    double p = cpp11::as_cpp<double>(p_);
    std::vector<double> probabilities = cpp11::as_cpp<std::vector<double>>(probabilities_);
    std::vector<double> rates = cpp11::as_cpp<std::vector<double>>(rates_);
    double result = boost::math::quantile(boost::math::hyperexponential_distribution<>(probabilities, rates), p);
    return cpp11::as_sexp(result);
    END_CPP11
  }
}
