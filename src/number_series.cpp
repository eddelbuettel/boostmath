#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/special_functions/bernoulli.hpp>
#include <boost/math/special_functions/prime.hpp>
#include <boost/math/special_functions/fibonacci.hpp>

extern "C" {
  SEXP bernoulli_b2n_(SEXP n_) {
    BEGIN_CPP11
    int n = cpp11::as_cpp<int>(n_);
    double result = boost::math::bernoulli_b2n<double>(n);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP max_bernoulli_b2n_() {
    BEGIN_CPP11
    int result = boost::math::max_bernoulli_b2n<double>::value;
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP unchecked_bernoulli_b2n_(SEXP n_) {
    BEGIN_CPP11
    int n = cpp11::as_cpp<int>(n_);
    double result = boost::math::unchecked_bernoulli_b2n<double>(n);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP bernoulli_b2n_range_(SEXP start_index_, SEXP number_of_bernoullis_b2n_) {
    BEGIN_CPP11
    int start_index = cpp11::as_cpp<int>(start_index_);
    int number_of_bernoullis_b2n = cpp11::as_cpp<int>(number_of_bernoullis_b2n_);
    std::vector<double> results(number_of_bernoullis_b2n);
    boost::math::bernoulli_b2n<double>(start_index, number_of_bernoullis_b2n, results.begin());
    return cpp11::as_sexp(results);
    END_CPP11
  }

  SEXP tangent_t2n_(SEXP n_) {
    BEGIN_CPP11
    int n = cpp11::as_cpp<int>(n_);
    double result = boost::math::tangent_t2n<double>(n);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP tangent_t2n_range_(SEXP start_index_, SEXP number_of_tangent_t2n_) {
    BEGIN_CPP11
    int start_index = cpp11::as_cpp<int>(start_index_);
    int number_of_tangent_t2n = cpp11::as_cpp<int>(number_of_tangent_t2n_);
    std::vector<double> results(number_of_tangent_t2n);
    boost::math::tangent_t2n<double>(start_index, number_of_tangent_t2n, results.begin());
    return cpp11::as_sexp(results);
    END_CPP11
  }

  SEXP prime_(SEXP n_) {
    BEGIN_CPP11
    int n = cpp11::as_cpp<int>(n_);
    int result = boost::math::prime(n);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP max_prime_() {
    BEGIN_CPP11
    int result = boost::math::max_prime;
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP fibonacci_(SEXP n_) {
    BEGIN_CPP11
    int n = cpp11::as_cpp<int>(n_);
    int result = boost::math::fibonacci<double>(n);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP unchecked_fibonacci_(SEXP n_) {
    BEGIN_CPP11
    int n = cpp11::as_cpp<int>(n_);
    int result = boost::math::unchecked_fibonacci<double>(n);
    return cpp11::as_sexp(result);
    END_CPP11
  }
}
