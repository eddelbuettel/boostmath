#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/special_functions/bessel.hpp>
#include <boost/math/special_functions/bessel_prime.hpp>

extern "C" {
  SEXP cyl_bessel_j_(SEXP v_ , SEXP x_) {
    BEGIN_CPP11
    double v = cpp11::as_cpp<double>(v_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::cyl_bessel_j(v, x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP cyl_neumann_(SEXP v_ , SEXP x_) {
    BEGIN_CPP11
    double v = cpp11::as_cpp<double>(v_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::cyl_neumann(v, x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP cyl_bessel_j_zero_(SEXP v_, SEXP m_) {
    BEGIN_CPP11
    double v = cpp11::as_cpp<double>(v_);
    int m = cpp11::as_cpp<int>(m_);
    double result = boost::math::cyl_bessel_j_zero(v, m);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP cyl_neumann_zero_(SEXP v_, SEXP m_) {
    BEGIN_CPP11
    double v = cpp11::as_cpp<double>(v_);
    int m = cpp11::as_cpp<int>(m_);
    double result = boost::math::cyl_neumann_zero(v, m);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP cyl_bessel_j_zero_multiple_(SEXP v_, SEXP start_index_, SEXP number_of_zeros_) {
    BEGIN_CPP11
    double v = cpp11::as_cpp<double>(v_);
    int start_index = cpp11::as_cpp<int>(start_index_);
    uint64_t number_of_zeros = cpp11::as_cpp<uint64_t>(number_of_zeros_);
    std::vector<double> result(number_of_zeros);
    boost::math::cyl_bessel_j_zero(v, start_index, number_of_zeros, result.begin());
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP cyl_neumann_zero_multiple_(SEXP v_, SEXP start_index_, SEXP number_of_zeros_) {
    BEGIN_CPP11
    double v = cpp11::as_cpp<double>(v_);
    int start_index = cpp11::as_cpp<int>(start_index_);
    uint64_t number_of_zeros = cpp11::as_cpp<uint64_t>(number_of_zeros_);
    std::vector<double> result(number_of_zeros);
    boost::math::cyl_neumann_zero(v, start_index, number_of_zeros, result.begin());
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP cyl_bessel_i_(SEXP v_, SEXP x_) {
    BEGIN_CPP11
    double v = cpp11::as_cpp<double>(v_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::cyl_bessel_i(v, x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP cyl_bessel_k_(SEXP v_, SEXP x_) {
    BEGIN_CPP11
    double v = cpp11::as_cpp<double>(v_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::cyl_bessel_k(v, x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP sph_bessel_(SEXP v_, SEXP x_) {
    BEGIN_CPP11
    uint64_t v = cpp11::as_cpp<uint64_t>(v_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::sph_bessel(v, x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP sph_neumann_(SEXP v_, SEXP x_) {
    BEGIN_CPP11
    uint64_t v = cpp11::as_cpp<uint64_t>(v_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::sph_neumann(v, x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP cyl_bessel_j_prime_(SEXP v_, SEXP x_) {
    BEGIN_CPP11
    double v = cpp11::as_cpp<double>(v_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::cyl_bessel_j_prime(v, x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP cyl_neumann_prime_(SEXP v_, SEXP x_) {
    BEGIN_CPP11
    double v = cpp11::as_cpp<double>(v_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::cyl_neumann_prime(v, x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP cyl_bessel_i_prime_(SEXP v_, SEXP x_) {
    BEGIN_CPP11
    double v = cpp11::as_cpp<double>(v_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::cyl_bessel_i_prime(v, x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP cyl_bessel_k_prime_(SEXP v_, SEXP x_) {
    BEGIN_CPP11
    double v = cpp11::as_cpp<double>(v_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::cyl_bessel_k_prime(v, x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP sph_bessel_prime_(SEXP v_, SEXP x_) {
    BEGIN_CPP11
    double v = cpp11::as_cpp<double>(v_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::sph_bessel_prime(v, x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP sph_neumann_prime_(SEXP v_, SEXP x_) {
    BEGIN_CPP11
    double v = cpp11::as_cpp<double>(v_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::sph_neumann_prime(v, x);
    return cpp11::as_sexp(result);
    END_CPP11
  }
}
