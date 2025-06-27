#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/quadrature/tanh_sinh.hpp>
#include <boost/math/quadrature/exp_sinh.hpp>
#include <boost/math/quadrature/sinh_sinh.hpp>

extern "C" {
  SEXP tanh_sinh_(SEXP f_, SEXP a_, SEXP b_, SEXP tol_, SEXP max_refinements_) {
    BEGIN_CPP11
    cpp11::function f(f_);
    double a = cpp11::as_cpp<double>(a_);
    double b = cpp11::as_cpp<double>(b_);
    double tol = cpp11::as_cpp<double>(tol_);
    size_t max_refinements = cpp11::as_cpp<size_t>(max_refinements_);

    auto func = [&f](double x) {
      return cpp11::as_cpp<double>(f(x));
    };

    boost::math::quadrature::tanh_sinh<double> integrator(max_refinements);

    double result = integrator.integrate(func, a, b, tol);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP sinh_sinh_(SEXP f_, SEXP tol_, SEXP max_refinements_) {
    BEGIN_CPP11
    cpp11::function f(f_);
    double tol = cpp11::as_cpp<double>(tol_);
    size_t max_refinements = cpp11::as_cpp<size_t>(max_refinements_);

    auto func = [&f](double x) {
      return cpp11::as_cpp<double>(f(x));
    };

    boost::math::quadrature::sinh_sinh<double> integrator(max_refinements);

    double result = integrator.integrate(func, tol);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP exp_sinh_(SEXP f_, SEXP a_, SEXP b_, SEXP tol_, SEXP max_refinements_) {
    BEGIN_CPP11
    cpp11::function f(f_);
    double a = cpp11::as_cpp<double>(a_);
    double b = cpp11::as_cpp<double>(b_);
    double tol = cpp11::as_cpp<double>(tol_);
    size_t max_refinements = cpp11::as_cpp<size_t>(max_refinements_);

    auto func = [&f](double x) {
      return cpp11::as_cpp<double>(f(x));
    };

    boost::math::quadrature::exp_sinh<double> integrator(max_refinements);

    double result = integrator.integrate(func, a, b, tol);
    return cpp11::as_sexp(result);
    END_CPP11
  }
}
