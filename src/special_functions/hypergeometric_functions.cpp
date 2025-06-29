#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/special_functions/hypergeometric_1F0.hpp>
#include <boost/math/special_functions/hypergeometric_0F1.hpp>
#include <boost/math/special_functions/hypergeometric_2F0.hpp>
#include <boost/math/special_functions/hypergeometric_1F1.hpp>
#include <boost/math/special_functions/hypergeometric_pFq.hpp>

extern "C" {
  SEXP hypergeometric_1F0_(SEXP a_, SEXP z_) {
    BEGIN_CPP11
    double a = cpp11::as_cpp<double>(a_);
    double z = cpp11::as_cpp<double>(z_);
    double result = boost::math::hypergeometric_1F0(a, z);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP hypergeometric_0F1_(SEXP b_, SEXP z_) {
    BEGIN_CPP11
    double b = cpp11::as_cpp<double>(b_);
    double z = cpp11::as_cpp<double>(z_);
    double result = boost::math::hypergeometric_0F1(b, z);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP hypergeometric_2F0_(SEXP a1_, SEXP a2_, SEXP z_) {
    BEGIN_CPP11
    double a1 = cpp11::as_cpp<double>(a1_);
    double a2 = cpp11::as_cpp<double>(a2_);
    double z = cpp11::as_cpp<double>(z_);
    double result = boost::math::hypergeometric_2F0(a1, a2, z);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP hypergeometric_1F1_(SEXP a_, SEXP b_, SEXP z_) {
    BEGIN_CPP11
    double a = cpp11::as_cpp<double>(a_);
    double b = cpp11::as_cpp<double>(b_);
    double z = cpp11::as_cpp<double>(z_);
    double result = boost::math::hypergeometric_1F1(a, b, z);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP hypergeometric_1F1_regularized_(SEXP a_, SEXP b_, SEXP z_) {
    BEGIN_CPP11
    double a = cpp11::as_cpp<double>(a_);
    double b = cpp11::as_cpp<double>(b_);
    double z = cpp11::as_cpp<double>(z_);
    double result = boost::math::hypergeometric_1F1_regularized(a, b, z);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP log_hypergeometric_1F1_(SEXP a_, SEXP b_, SEXP z_) {
    BEGIN_CPP11
    double a = cpp11::as_cpp<double>(a_);
    double b = cpp11::as_cpp<double>(b_);
    double z = cpp11::as_cpp<double>(z_);
    int value_sign;
    double value = boost::math::log_hypergeometric_1F1(a, b, z, &value_sign);
    cpp11::writable::doubles result;
    result.push_back(value);
    result.attr("sign") = value_sign;

    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP hypergeometric_pFq_(SEXP a_, SEXP b_, SEXP z_) {
    BEGIN_CPP11
    std::vector<double> a = cpp11::as_cpp<std::vector<double>>(a_);
    std::vector<double> b = cpp11::as_cpp<std::vector<double>>(b_);
    double z = cpp11::as_cpp<double>(z_);
    double result = boost::math::hypergeometric_pFq(a, b, z);
    return cpp11::as_sexp(result);
    END_CPP11
  }
}
