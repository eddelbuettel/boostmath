#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/special_functions/zeta.hpp>

extern "C" {
  SEXP zeta_(SEXP z_) {
    BEGIN_CPP11
    double z = cpp11::as_cpp<double>(z_);
    auto result = boost::math::zeta(z);
    return cpp11::as_sexp(result);
    END_CPP11
  }
}
