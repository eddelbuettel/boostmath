#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/special_functions/airy.hpp>

extern "C" {
  SEXP airy_ai_(SEXP x_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::airy_ai(x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP airy_bi_(SEXP x_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::airy_bi(x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP airy_ai_prime_(SEXP x_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::airy_ai_prime(x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP airy_bi_prime_(SEXP x_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::airy_bi_prime(x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP airy_ai_zero_(SEXP m_) {
    BEGIN_CPP11
    int m = cpp11::as_cpp<int>(m_);
    double result = boost::math::airy_ai_zero<double>(m);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP airy_bi_zero_(SEXP m_) {
    BEGIN_CPP11
    int m = cpp11::as_cpp<int>(m_);
    double result = boost::math::airy_bi_zero<double>(m);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP airy_ai_zero_multiple_(SEXP start_index_, SEXP number_of_zeros_) {
    BEGIN_CPP11
    int start_index = cpp11::as_cpp<int>(start_index_);
    uint64_t number_of_zeros = cpp11::as_cpp<uint64_t>(number_of_zeros_);
    std::vector<double> result(number_of_zeros);
    boost::math::airy_ai_zero<double>(start_index, number_of_zeros, result.begin());
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP airy_bi_zero_multiple_(SEXP start_index_, SEXP number_of_zeros_) {
    BEGIN_CPP11
    int start_index = cpp11::as_cpp<int>(start_index_);
    uint64_t number_of_zeros = cpp11::as_cpp<uint64_t>(number_of_zeros_);
    std::vector<double> result(number_of_zeros);
    boost::math::airy_bi_zero<double>(start_index, number_of_zeros, result.begin());
    return cpp11::as_sexp(result);
    END_CPP11
  }
}
