#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/special_functions/airy.hpp>
#include "../boostmath/macros.hpp"

extern "C" {

UNARY_BOOST_FUNCTION(airy_ai, double);
UNARY_BOOST_FUNCTION(airy_bi, double);
UNARY_BOOST_FUNCTION(airy_ai_prime, double);
UNARY_BOOST_FUNCTION(airy_bi_prime, double);
UNARY_BOOST_FUNCTION(airy_ai_zero, int);
UNARY_BOOST_FUNCTION(airy_bi_zero, int);

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
