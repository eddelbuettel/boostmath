#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/special_functions/bessel.hpp>
#include <boost/math/special_functions/bessel_prime.hpp>
#include "../boostmath/macros.hpp"

BINARY_BOOST_FUNCTION(cyl_bessel_j, double, double);
BINARY_BOOST_FUNCTION(cyl_neumann, double, double);
BINARY_BOOST_FUNCTION(cyl_bessel_j_zero, double, int);
BINARY_BOOST_FUNCTION(cyl_neumann_zero, double, int);
BINARY_BOOST_FUNCTION(cyl_bessel_i, double, double);
BINARY_BOOST_FUNCTION(cyl_bessel_k, double, double);
BINARY_BOOST_FUNCTION(sph_bessel, uint64_t, double);
BINARY_BOOST_FUNCTION(sph_neumann, uint64_t, double);
BINARY_BOOST_FUNCTION(cyl_bessel_j_prime, double, double);
BINARY_BOOST_FUNCTION(cyl_neumann_prime, double, double);
BINARY_BOOST_FUNCTION(cyl_bessel_i_prime, double, double);
BINARY_BOOST_FUNCTION(cyl_bessel_k_prime, double, double);
BINARY_BOOST_FUNCTION(sph_bessel_prime, uint64_t, double);
BINARY_BOOST_FUNCTION(sph_neumann_prime, uint64_t, double);

extern "C" {

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
}
