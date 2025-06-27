#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/differentiation/finite_difference.hpp>

extern "C" {
  SEXP finite_difference_derivative_(SEXP f_, SEXP x_, SEXP order_) {
    BEGIN_CPP11
    cpp11::function f(f_);
    double x = cpp11::as_cpp<double>(x_);
    size_t order = cpp11::as_cpp<size_t>(order_);

    auto func = [&f](double x) {
      return cpp11::as_cpp<double>(f(x));
    };

    double result;

    switch (order) {
      case 1:
        result = boost::math::differentiation::finite_difference_derivative<decltype(func), double, 1>(func, x);
        break;
      case 2:
        result = boost::math::differentiation::finite_difference_derivative<decltype(func), double, 2>(func, x);
        break;
      case 4:
        result = boost::math::differentiation::finite_difference_derivative<decltype(func), double, 4>(func, x);
        break;
      case 6:
        result = boost::math::differentiation::finite_difference_derivative<decltype(func), double, 6>(func, x);
        break;
      case 8:
        result = boost::math::differentiation::finite_difference_derivative<decltype(func), double, 8>(func, x);
        break;
    }

    return cpp11::as_sexp(result);
    END_CPP11
  }
}
