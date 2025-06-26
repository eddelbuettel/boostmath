#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/special_functions/ellint_rf.hpp>
#include <boost/math/special_functions/ellint_rd.hpp>
#include <boost/math/special_functions/ellint_rj.hpp>
#include <boost/math/special_functions/ellint_rc.hpp>
#include <boost/math/special_functions/ellint_rg.hpp>
#include <boost/math/special_functions/ellint_1.hpp>
#include <boost/math/special_functions/ellint_2.hpp>
#include <boost/math/special_functions/ellint_3.hpp>

extern "C" {
  SEXP ellint_rf_(SEXP x_, SEXP y_, SEXP z_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double y = cpp11::as_cpp<double>(y_);
    double z = cpp11::as_cpp<double>(z_);
    double result = boost::math::ellint_rf(x, y, z);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP ellint_rd_(SEXP x_, SEXP y_, SEXP z_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double y = cpp11::as_cpp<double>(y_);
    double z = cpp11::as_cpp<double>(z_);
    double result = boost::math::ellint_rd(x, y, z);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP ellint_rj_(SEXP x_, SEXP y_, SEXP z_, SEXP p_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double y = cpp11::as_cpp<double>(y_);
    double z = cpp11::as_cpp<double>(z_);
    double p = cpp11::as_cpp<double>(p_);
    double result = boost::math::ellint_rj(x, y, z, p);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP ellint_rc_(SEXP x_, SEXP y_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double y = cpp11::as_cpp<double>(y_);
    double result = boost::math::ellint_rc(x, y);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP ellint_rg_(SEXP x_, SEXP y_, SEXP z_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double y = cpp11::as_cpp<double>(y_);
    double z = cpp11::as_cpp<double>(z_);
    double result = boost::math::ellint_rg(x, y, z);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP ellint_1_incomplete_(SEXP k_, SEXP phi_) {
    BEGIN_CPP11
    double k = cpp11::as_cpp<double>(k_);
    double phi = cpp11::as_cpp<double>(phi_);
    double result = boost::math::ellint_1(k, phi);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP ellint_1_(SEXP k_) {
    BEGIN_CPP11
    double k = cpp11::as_cpp<double>(k_);
    double result = boost::math::ellint_1(k);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP ellint_2_incomplete_(SEXP k_, SEXP phi_) {
    BEGIN_CPP11
    double k = cpp11::as_cpp<double>(k_);
    double phi = cpp11::as_cpp<double>(phi_);
    double result = boost::math::ellint_2(k, phi);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP ellint_2_(SEXP k_) {
    BEGIN_CPP11
    double k = cpp11::as_cpp<double>(k_);
    double result = boost::math::ellint_2(k);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP ellint_3_incomplete_(SEXP k_, SEXP n_, SEXP phi_) {
    BEGIN_CPP11
    double k = cpp11::as_cpp<double>(k_);
    double n = cpp11::as_cpp<double>(n_);
    double phi = cpp11::as_cpp<double>(phi_);
    double result = boost::math::ellint_3(k, n, phi);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP ellint_3_(SEXP k_, SEXP n_) {
    BEGIN_CPP11
    double k = cpp11::as_cpp<double>(k_);
    double n = cpp11::as_cpp<double>(n_);
    double result = boost::math::ellint_3(k, n);
    return cpp11::as_sexp(result);
    END_CPP11
  }
}
