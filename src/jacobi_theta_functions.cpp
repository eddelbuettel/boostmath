#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/special_functions/jacobi_theta.hpp>

extern "C" {
  SEXP jacobi_theta1_(SEXP x_, SEXP q_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double q = cpp11::as_cpp<double>(q_);
    auto result = boost::math::jacobi_theta1(x, q);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP jacobi_theta1tau_(SEXP x_, SEXP tau_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double tau = cpp11::as_cpp<double>(tau_);
    auto result = boost::math::jacobi_theta1tau(x, tau);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP jacobi_theta2_(SEXP x_, SEXP q_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double q = cpp11::as_cpp<double>(q_);
    auto result = boost::math::jacobi_theta2(x, q);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP jacobi_theta2tau_(SEXP x_, SEXP tau_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double tau = cpp11::as_cpp<double>(tau_);
    auto result = boost::math::jacobi_theta2tau(x, tau);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP jacobi_theta3_(SEXP x_, SEXP q_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double q = cpp11::as_cpp<double>(q_);
    auto result = boost::math::jacobi_theta3(x, q);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP jacobi_theta3tau_(SEXP x_, SEXP tau_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double tau = cpp11::as_cpp<double>(tau_);
    auto result = boost::math::jacobi_theta3tau(x, tau);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP jacobi_theta3m1_(SEXP x_, SEXP q_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double q = cpp11::as_cpp<double>(q_);
    auto result = boost::math::jacobi_theta3m1(x, q);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP jacobi_theta3m1tau_(SEXP x_, SEXP tau_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double tau = cpp11::as_cpp<double>(tau_);
    auto result = boost::math::jacobi_theta3m1tau(x, tau);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP jacobi_theta4_(SEXP x_, SEXP q_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double q = cpp11::as_cpp<double>(q_);
    auto result = boost::math::jacobi_theta4(x, q);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP jacobi_theta4tau_(SEXP x_, SEXP tau_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double tau = cpp11::as_cpp<double>(tau_);
    auto result = boost::math::jacobi_theta4tau(x, tau);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP jacobi_theta4m1_(SEXP x_, SEXP q_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double q = cpp11::as_cpp<double>(q_);
    auto result = boost::math::jacobi_theta4m1(x, q);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP jacobi_theta4m1tau_(SEXP x_, SEXP tau_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double tau = cpp11::as_cpp<double>(tau_);
    auto result = boost::math::jacobi_theta4m1tau(x, tau);
    return cpp11::as_sexp(result);
    END_CPP11
  }
}