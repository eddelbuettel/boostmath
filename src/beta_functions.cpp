#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/special_functions/beta.hpp>

extern "C" {
  SEXP beta_(SEXP a_, SEXP b_) {
    BEGIN_CPP11
    double a = cpp11::as_cpp<double>(a_);
    double b = cpp11::as_cpp<double>(b_);
    double result = boost::math::beta(a, b);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP ibeta_(SEXP a_, SEXP b_, SEXP x_) {
    BEGIN_CPP11
    double a = cpp11::as_cpp<double>(a_);
    double b = cpp11::as_cpp<double>(b_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::ibeta(a, b, x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP ibetac_(SEXP a_, SEXP b_, SEXP x_) {
    BEGIN_CPP11
    double a = cpp11::as_cpp<double>(a_);
    double b = cpp11::as_cpp<double>(b_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::ibetac(a, b, x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP beta_incomplete_(SEXP a_, SEXP b_, SEXP x_) {
    BEGIN_CPP11
    double a = cpp11::as_cpp<double>(a_);
    double b = cpp11::as_cpp<double>(b_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::beta(a, b, x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP betac_(SEXP a_, SEXP b_, SEXP x_) {
    BEGIN_CPP11
    double a = cpp11::as_cpp<double>(a_);
    double b = cpp11::as_cpp<double>(b_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::betac(a, b, x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP ibeta_inv_(SEXP a_, SEXP b_, SEXP p_) {
    BEGIN_CPP11
    double a = cpp11::as_cpp<double>(a_);
    double b = cpp11::as_cpp<double>(b_);
    double p = cpp11::as_cpp<double>(p_);
    double result = boost::math::ibeta_inv(a, b, p);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP ibetac_inv_(SEXP a_, SEXP b_, SEXP q_) {
    BEGIN_CPP11
    double a = cpp11::as_cpp<double>(a_);
    double b = cpp11::as_cpp<double>(b_);
    double q = cpp11::as_cpp<double>(q_);
    double result = boost::math::ibetac_inv(a, b, q);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP ibeta_inva_(SEXP b_, SEXP x_, SEXP p_) {
    BEGIN_CPP11
    double b = cpp11::as_cpp<double>(b_);
    double x = cpp11::as_cpp<double>(x_);
    double p = cpp11::as_cpp<double>(p_);
    double result = boost::math::ibeta_inva(b, x, p);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP ibetac_inva_(SEXP b_, SEXP x_, SEXP q_) {
    BEGIN_CPP11
    double b = cpp11::as_cpp<double>(b_);
    double x = cpp11::as_cpp<double>(x_);
    double q = cpp11::as_cpp<double>(q_);
    double result = boost::math::ibetac_inva(b, x, q);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP ibeta_invb_(SEXP a_, SEXP x_, SEXP p_) {
    BEGIN_CPP11
    double a = cpp11::as_cpp<double>(a_);
    double x = cpp11::as_cpp<double>(x_);
    double p = cpp11::as_cpp<double>(p_);
    double result = boost::math::ibeta_invb(a, x, p);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP ibetac_invb_(SEXP a_, SEXP x_, SEXP q_) {
    BEGIN_CPP11
    double a = cpp11::as_cpp<double>(a_);
    double x = cpp11::as_cpp<double>(x_);
    double q = cpp11::as_cpp<double>(q_);
    double result = boost::math::ibetac_invb(a, x, q);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP ibeta_derivative_(SEXP a_, SEXP b_, SEXP x_) {
    BEGIN_CPP11
    double a = cpp11::as_cpp<double>(a_);
    double b = cpp11::as_cpp<double>(b_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::ibeta_derivative(a, b, x);
    return cpp11::as_sexp(result);
    END_CPP11
  }
}
