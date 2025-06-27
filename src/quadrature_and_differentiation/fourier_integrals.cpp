#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/quadrature/ooura_fourier_integrals.hpp>

extern "C" {
  SEXP ooura_fourier_sin_(SEXP f_, SEXP omega_, SEXP relative_error_tolerance_, SEXP levels_) {
    BEGIN_CPP11
#ifndef __EMSCRIPTEN__
    cpp11::function f(f_);
    double omega = cpp11::as_cpp<double>(omega_);
    double relative_error_tolerance = cpp11::as_cpp<double>(relative_error_tolerance_);
    size_t levels = cpp11::as_cpp<size_t>(levels_);

    auto func = [&f](double x) {
      return cpp11::as_cpp<double>(f(x));
    };

    boost::math::quadrature::ooura_fourier_sin<double> integrator(relative_error_tolerance, levels);
    std::pair<double, double> result = integrator.integrate(func, omega);
    // Manually call destructor to avoid rchk warnings
    integrator.~ooura_fourier_sin();

    return cpp11::as_sexp(result.first);
#else
    cpp11::stop("Ooura Fourier integrals are not supported on WASM as they require long double precision");
#endif
    END_CPP11
  }

  SEXP ooura_fourier_cos_(SEXP f_, SEXP omega_, SEXP relative_error_tolerance_, SEXP levels_) {
    BEGIN_CPP11
#ifndef __EMSCRIPTEN__
    cpp11::function f(f_);
    double omega = cpp11::as_cpp<double>(omega_);
    double relative_error_tolerance = cpp11::as_cpp<double>(relative_error_tolerance_);
    size_t levels = cpp11::as_cpp<size_t>(levels_);

    auto func = [&f](double x) {
      return cpp11::as_cpp<double>(f(x));
    };

    boost::math::quadrature::ooura_fourier_cos<double> integrator(relative_error_tolerance, levels);
    std::pair<double, double> result = integrator.integrate(func, omega);
    // Manually call destructor to avoid rchk warnings
    integrator.~ooura_fourier_cos();

    return cpp11::as_sexp(result.first);
#else
    cpp11::stop("Ooura Fourier integrals are not supported on WASM as they require long double precision");
#endif
    END_CPP11
  }
}
