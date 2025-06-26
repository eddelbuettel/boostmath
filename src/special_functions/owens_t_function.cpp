#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/special_functions/owens_t.hpp>

extern "C" {
  SEXP owens_t_(SEXP h_, SEXP a_) {
    BEGIN_CPP11
    double h = cpp11::as_cpp<double>(h_);
    double a = cpp11::as_cpp<double>(a_);
    auto result = boost::math::owens_t(h, a);
    return cpp11::as_sexp(result);
    END_CPP11
  }
}
