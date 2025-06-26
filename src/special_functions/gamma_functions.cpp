#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/special_functions/gamma.hpp>
#include <boost/math/special_functions/digamma.hpp>
#include <boost/math/special_functions/trigamma.hpp>
#include <boost/math/special_functions/polygamma.hpp>

extern "C" {
  SEXP tgamma_(SEXP z_) {
    BEGIN_CPP11
    double z = cpp11::as_cpp<double>(z_);
    double result = boost::math::tgamma(z);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP tgamma1pm1_(SEXP dz_) {
    BEGIN_CPP11
    double dz = cpp11::as_cpp<double>(dz_);
    double result = boost::math::tgamma1pm1(dz);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP lgamma_(SEXP z_) {
    BEGIN_CPP11
    double z = cpp11::as_cpp<double>(z_);
    double result = boost::math::lgamma(z);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP digamma_(SEXP z_) {
    BEGIN_CPP11
    double z = cpp11::as_cpp<double>(z_);
    double result = boost::math::digamma(z);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP trigamma_(SEXP z_) {
    BEGIN_CPP11
    double z = cpp11::as_cpp<double>(z_);
    double result = boost::math::trigamma(z);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP polygamma_(SEXP n_, SEXP z_) {
    BEGIN_CPP11
    int n = cpp11::as_cpp<int>(n_);
    double z = cpp11::as_cpp<double>(z_);
    double result = boost::math::polygamma(n, z);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP tgamma_ratio_(SEXP a_, SEXP b_) {
    BEGIN_CPP11
    double a = cpp11::as_cpp<double>(a_);
    double b = cpp11::as_cpp<double>(b_);
    double result = boost::math::tgamma_ratio(a, b);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP tgamma_delta_ratio_(SEXP a_, SEXP delta_) {
    BEGIN_CPP11
    double a = cpp11::as_cpp<double>(a_);
    double delta = cpp11::as_cpp<double>(delta_);
    double result = boost::math::tgamma_delta_ratio(a, delta);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP gamma_p_(SEXP a_, SEXP z_) {
    BEGIN_CPP11
    double a = cpp11::as_cpp<double>(a_);
    double z = cpp11::as_cpp<double>(z_);
    double result = boost::math::gamma_p(a, z);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP gamma_q_(SEXP a_, SEXP z_) {
    BEGIN_CPP11
    double a = cpp11::as_cpp<double>(a_);
    double z = cpp11::as_cpp<double>(z_);
    double result = boost::math::gamma_q(a, z);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP tgamma_lower_(SEXP a_, SEXP z_) {
    BEGIN_CPP11
    double a = cpp11::as_cpp<double>(a_);
    double z = cpp11::as_cpp<double>(z_);
    double result = boost::math::tgamma_lower(a, z);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP tgamma_upper_(SEXP a_, SEXP z_) {
    BEGIN_CPP11
    double a = cpp11::as_cpp<double>(a_);
    double z = cpp11::as_cpp<double>(z_);
    double result = boost::math::tgamma(a, z);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP gamma_q_inv_(SEXP a_, SEXP q_) {
    BEGIN_CPP11
    double a = cpp11::as_cpp<double>(a_);
    double q = cpp11::as_cpp<double>(q_);
    double result = boost::math::gamma_q_inv(a, q);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP gamma_p_inv_(SEXP a_, SEXP p_) {
    BEGIN_CPP11
    double a = cpp11::as_cpp<double>(a_);
    double p = cpp11::as_cpp<double>(p_);
    double result = boost::math::gamma_p_inv(a, p);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP gamma_q_inva_(SEXP x_, SEXP q_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double q = cpp11::as_cpp<double>(q_);
    double result = boost::math::gamma_q_inva(x, q);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP gamma_p_inva_(SEXP x_, SEXP p_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double p = cpp11::as_cpp<double>(p_);
    double result = boost::math::gamma_p_inva(x, p);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP gamma_p_derivative_(SEXP a_, SEXP z_) {
    BEGIN_CPP11
    double a = cpp11::as_cpp<double>(a_);
    double z = cpp11::as_cpp<double>(z_);
    double result = boost::math::gamma_p_derivative(a, z);
    return cpp11::as_sexp(result);
    END_CPP11
  }
}
