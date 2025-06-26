#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/special_functions/legendre.hpp>
#include <boost/math/special_functions/laguerre.hpp>
#include <boost/math/special_functions/hermite.hpp>
#include <boost/math/special_functions/chebyshev.hpp>
#include <boost/math/special_functions/spherical_harmonic.hpp>
#include <boost/math/special_functions/gegenbauer.hpp>
#include <boost/math/special_functions/jacobi.hpp>

extern "C" {
  SEXP legendre_p_(SEXP n_, SEXP x_) {
    BEGIN_CPP11
    uint64_t n = cpp11::as_cpp<uint64_t>(n_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::legendre_p(n, x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP legendre_p_prime_(SEXP n_, SEXP x_) {
    BEGIN_CPP11
    uint64_t n = cpp11::as_cpp<uint64_t>(n_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::legendre_p_prime(n, x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP legendre_p_zeros_(SEXP l_) {
    BEGIN_CPP11
    int l = cpp11::as_cpp<int>(l_);
    std::vector<double> zeros = boost::math::legendre_p_zeros<double>(l);
    return cpp11::as_sexp(zeros);
    END_CPP11
  }

  SEXP legendre_p_m_(SEXP n_, SEXP m_, SEXP x_) {
    BEGIN_CPP11
    uint64_t n = cpp11::as_cpp<uint64_t>(n_);
    uint64_t m = cpp11::as_cpp<uint64_t>(m_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::legendre_p(n, m, x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP legendre_q_(SEXP n_, SEXP x_) {
    BEGIN_CPP11
    uint64_t n = cpp11::as_cpp<uint64_t>(n_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::legendre_q(n, x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP legendre_next_(SEXP l_, SEXP x_, SEXP Pl_, SEXP Plm1_) {
    BEGIN_CPP11
    int l = cpp11::as_cpp<int>(l_);
    double x = cpp11::as_cpp<double>(x_);
    double Pl = cpp11::as_cpp<double>(Pl_);
    double Plm1 = cpp11::as_cpp<double>(Plm1_);
    double result = boost::math::legendre_next(l, x, Pl, Plm1);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP legendre_next_m_(SEXP l_, SEXP m_, SEXP x_, SEXP Pl_, SEXP Plm1_) {
    BEGIN_CPP11
    int l = cpp11::as_cpp<int>(l_);
    uint64_t m = cpp11::as_cpp<uint64_t>(m_);
    double x = cpp11::as_cpp<double>(x_);
    double Pl = cpp11::as_cpp<double>(Pl_);
    double Plm1 = cpp11::as_cpp<double>(Plm1_);
    double result = boost::math::legendre_next(l, m, x, Pl, Plm1);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP laguerre_(SEXP n_, SEXP x_) {
    BEGIN_CPP11
    uint64_t n = cpp11::as_cpp<uint64_t>(n_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::laguerre(n, x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP laguerre_m_(SEXP n_, SEXP m_, SEXP x_) {
    BEGIN_CPP11
    uint64_t n = cpp11::as_cpp<uint64_t>(n_);
    uint64_t m = cpp11::as_cpp<uint64_t>(m_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::laguerre(n, m, x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP laguerre_next_(SEXP n_, SEXP x_, SEXP Ln_, SEXP Lnm1_) {
    BEGIN_CPP11
    uint64_t n = cpp11::as_cpp<uint64_t>(n_);
    double x = cpp11::as_cpp<double>(x_);
    double Ln = cpp11::as_cpp<double>(Ln_);
    double Lnm1 = cpp11::as_cpp<double>(Lnm1_);
    double result = boost::math::laguerre_next(n, x, Ln, Lnm1);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP laguerre_next_m_(SEXP n_, SEXP m_, SEXP x_, SEXP Ln_, SEXP Lnm1_) {
    BEGIN_CPP11
    uint64_t n = cpp11::as_cpp<uint64_t>(n_);
    uint64_t m = cpp11::as_cpp<uint64_t>(m_);
    double x = cpp11::as_cpp<double>(x_);
    double Ln = cpp11::as_cpp<double>(Ln_);
    double Lnm1 = cpp11::as_cpp<double>(Lnm1_);
    double result = boost::math::laguerre_next(n, m, x, Ln, Lnm1);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP hermite_(SEXP n_, SEXP x_) {
    BEGIN_CPP11
    uint64_t n = cpp11::as_cpp<uint64_t>(n_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::hermite(n, x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP hermite_next_(SEXP n_, SEXP x_, SEXP Hn_, SEXP Hnm1_) {
    BEGIN_CPP11
    uint64_t n = cpp11::as_cpp<uint64_t>(n_);
    double x = cpp11::as_cpp<double>(x_);
    double Hn = cpp11::as_cpp<double>(Hn_);
    double Hnm1 = cpp11::as_cpp<double>(Hnm1_);
    double result = boost::math::hermite_next(n, x, Hn, Hnm1);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP chebyshev_next_(SEXP x_, SEXP Tn_, SEXP Tn_1_) {
    BEGIN_CPP11
    double x = cpp11::as_cpp<double>(x_);
    double Tn = cpp11::as_cpp<double>(Tn_);
    double Tn_1 = cpp11::as_cpp<double>(Tn_1_);
    double result = boost::math::chebyshev_next(x, Tn, Tn_1);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP chebyshev_t_(SEXP n_, SEXP x_) {
    BEGIN_CPP11
    uint64_t n = cpp11::as_cpp<uint64_t>(n_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::chebyshev_t(n, x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP chebyshev_u_(SEXP n_, SEXP x_) {
    BEGIN_CPP11
    uint64_t n = cpp11::as_cpp<uint64_t>(n_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::chebyshev_u(n, x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP chebyshev_t_prime_(SEXP n_, SEXP x_) {
    BEGIN_CPP11
    uint64_t n = cpp11::as_cpp<uint64_t>(n_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::chebyshev_t_prime(n, x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP chebyshev_clenshaw_recurrence_(SEXP c_, SEXP x_) {
    BEGIN_CPP11
    std::vector<double> c = cpp11::as_cpp<std::vector<double>>(c_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::chebyshev_clenshaw_recurrence(c.data(), c.size(), x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP chebyshev_clenshaw_recurrence_ab_(SEXP c_, SEXP a_, SEXP b_, SEXP x_) {
    BEGIN_CPP11
    std::vector<double> c = cpp11::as_cpp<std::vector<double>>(c_);
    double a = cpp11::as_cpp<double>(a_);
    double b = cpp11::as_cpp<double>(b_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::chebyshev_clenshaw_recurrence(c.data(), c.size(), a, b, x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP spherical_harmonic_r_(SEXP n_, SEXP m_, SEXP theta_, SEXP phi_) {
    BEGIN_CPP11
    uint64_t n = cpp11::as_cpp<uint64_t>(n_);
    int m = cpp11::as_cpp<int>(m_);
    double theta = cpp11::as_cpp<double>(theta_);
    double phi = cpp11::as_cpp<double>(phi_);
    double result = boost::math::spherical_harmonic_r(n, m, theta, phi);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP spherical_harmonic_i_(SEXP n_, SEXP m_, SEXP theta_, SEXP phi_) {
    BEGIN_CPP11
    uint64_t n = cpp11::as_cpp<uint64_t>(n_);
    int m = cpp11::as_cpp<int>(m_);
    double theta = cpp11::as_cpp<double>(theta_);
    double phi = cpp11::as_cpp<double>(phi_);
    double result = boost::math::spherical_harmonic_i(n, m, theta, phi);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP gegenbauer_(SEXP n_, SEXP lambda_, SEXP x_) {
    BEGIN_CPP11
    uint64_t n = cpp11::as_cpp<uint64_t>(n_);
    double lambda = cpp11::as_cpp<double>(lambda_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::gegenbauer(n, lambda, x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP gegenbauer_prime_(SEXP n_, SEXP lambda_, SEXP x_) {
    BEGIN_CPP11
    uint64_t n = cpp11::as_cpp<uint64_t>(n_);
    double lambda = cpp11::as_cpp<double>(lambda_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::gegenbauer_prime(n, lambda, x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP gegenbauer_derivative_(SEXP n_, SEXP lambda_, SEXP x_, SEXP k_) {
    BEGIN_CPP11
    uint64_t n = cpp11::as_cpp<uint64_t>(n_);
    double lambda = cpp11::as_cpp<double>(lambda_);
    double x = cpp11::as_cpp<double>(x_);
    uint64_t k = cpp11::as_cpp<uint64_t>(k_);
    double result = boost::math::gegenbauer_derivative(n, lambda, x, k);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP jacobi_(SEXP n_, SEXP alpha_, SEXP beta_, SEXP x_) {
    BEGIN_CPP11
    uint64_t n = cpp11::as_cpp<uint64_t>(n_);
    double alpha = cpp11::as_cpp<double>(alpha_);
    double beta = cpp11::as_cpp<double>(beta_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::jacobi(n, alpha, beta, x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP jacobi_derivative_(SEXP n_, SEXP alpha_, SEXP beta_, SEXP x_, SEXP k_) {
    BEGIN_CPP11
    uint64_t n = cpp11::as_cpp<uint64_t>(n_);
    double alpha = cpp11::as_cpp<double>(alpha_);
    double beta = cpp11::as_cpp<double>(beta_);
    double x = cpp11::as_cpp<double>(x_);
    uint64_t k = cpp11::as_cpp<uint64_t>(k_);
    double result = boost::math::jacobi_derivative(n, alpha, beta, x, k);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP jacobi_prime_(SEXP n_, SEXP alpha_, SEXP beta_, SEXP x_) {
    BEGIN_CPP11
    uint64_t n = cpp11::as_cpp<uint64_t>(n_);
    double alpha = cpp11::as_cpp<double>(alpha_);
    double beta = cpp11::as_cpp<double>(beta_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::jacobi_prime(n, alpha, beta, x);
    return cpp11::as_sexp(result);
    END_CPP11
  }

  SEXP jacobi_double_prime_(SEXP n_, SEXP alpha_, SEXP beta_, SEXP x_) {
    BEGIN_CPP11
    uint64_t n = cpp11::as_cpp<uint64_t>(n_);
    double alpha = cpp11::as_cpp<double>(alpha_);
    double beta = cpp11::as_cpp<double>(beta_);
    double x = cpp11::as_cpp<double>(x_);
    double result = boost::math::jacobi_double_prime(n, alpha, beta, x);
    return cpp11::as_sexp(result);
    END_CPP11
  }
}
