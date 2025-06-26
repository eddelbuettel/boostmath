#include <Rinternals.h>
#include <R_ext/Visibility.h>

extern "C" {
  // number_series.cpp
  SEXP bernoulli_b2n_(SEXP n_);
  SEXP max_bernoulli_b2n_();
  SEXP unchecked_bernoulli_b2n_(SEXP n_);
  SEXP bernoulli_b2n_range_(SEXP start_index_, SEXP number_of_bernoullis_b2n_);
  SEXP tangent_t2n_(SEXP n_);
  SEXP tangent_t2n_range_(SEXP start_index_, SEXP number_of_tangent_t2n_);
  SEXP prime_(SEXP n_);
  SEXP max_prime_();
  SEXP fibonacci_(SEXP n_);
  SEXP unchecked_fibonacci_(SEXP n_);

  // gamma_functions.cpp
  SEXP tgamma_(SEXP z_);
  SEXP tgamma1pm1_(SEXP dz_);
  SEXP lgamma_(SEXP z_);
  SEXP digamma_(SEXP z_);
  SEXP trigamma_(SEXP z_);
  SEXP polygamma_(SEXP n_, SEXP z_);
  SEXP tgamma_ratio_(SEXP a_, SEXP b_);
  SEXP tgamma_delta_ratio_(SEXP a_, SEXP delta_);
  SEXP gamma_p_(SEXP a_, SEXP z_);
  SEXP gamma_q_(SEXP a_, SEXP z_);
  SEXP tgamma_lower_(SEXP a_, SEXP z_);
  SEXP tgamma_upper_(SEXP a_, SEXP z_);
  SEXP gamma_q_inv_(SEXP a_, SEXP q_);
  SEXP gamma_p_inv_(SEXP a_, SEXP p_);
  SEXP gamma_q_inva_(SEXP x_, SEXP q_);
  SEXP gamma_p_inva_(SEXP x_, SEXP p_);
  SEXP gamma_p_derivative_(SEXP a_, SEXP x_);

  // factorials_and_binomial_coefficients.cpp
  SEXP factorial_(SEXP i_);
  SEXP unchecked_factorial_(SEXP i_);
  SEXP max_factorial_();
  SEXP double_factorial_(SEXP i_);
  SEXP rising_factorial_(SEXP x_, SEXP i_);
  SEXP falling_factorial_(SEXP x_, SEXP i_);
  SEXP binomial_coefficient_(SEXP n_, SEXP k_);

  // beta_functions.cpp
  SEXP beta_(SEXP a_, SEXP b_);
  SEXP ibeta_(SEXP a_, SEXP b_, SEXP x_);
  SEXP ibetac_(SEXP a_, SEXP b_, SEXP x_);
  SEXP beta_incomplete_(SEXP a_, SEXP b_, SEXP x_);
  SEXP betac_(SEXP a_, SEXP b_, SEXP x_);
  SEXP ibeta_inv_(SEXP a_, SEXP b_, SEXP p_);
  SEXP ibetac_inv_(SEXP a_, SEXP b_, SEXP q_);
  SEXP ibeta_inva_(SEXP b_, SEXP x_, SEXP p_);
  SEXP ibetac_inva_(SEXP b_, SEXP x_, SEXP q_);
  SEXP ibeta_invb_(SEXP a_, SEXP x_, SEXP p_);
  SEXP ibetac_invb_(SEXP a_, SEXP x_, SEXP q_);
  SEXP ibeta_derivative_(SEXP a_, SEXP b_, SEXP x_);

  // error_functions.cpp
  SEXP erf_(SEXP x_);
  SEXP erfc_(SEXP x_);
  SEXP erf_inv_(SEXP p_);
  SEXP erfc_inv_(SEXP p_);

  // polynomials.cpp
  SEXP legendre_p_(SEXP n_, SEXP x_);
  SEXP legendre_p_prime_(SEXP n_, SEXP x_);
  SEXP legendre_p_zeros_(SEXP l_);
  SEXP legendre_p_m_(SEXP n_, SEXP m_, SEXP x_);
  SEXP legendre_q_(SEXP n_, SEXP x_);
  SEXP legendre_next_(SEXP l_, SEXP x_, SEXP Pl_, SEXP Plm1_);
  SEXP legendre_next_m_(SEXP l_, SEXP m_, SEXP x_, SEXP Pl_, SEXP Plm1_);
  SEXP laguerre_(SEXP n_, SEXP x_);
  SEXP laguerre_m_(SEXP n_, SEXP m_, SEXP x_);
  SEXP laguerre_next_(SEXP n_, SEXP x_, SEXP Ln_, SEXP Lnm1_);
  SEXP laguerre_next_m_(SEXP n_, SEXP m_, SEXP x_, SEXP Ln_, SEXP Lnm1_);
  SEXP hermite_(SEXP n_, SEXP x_);
  SEXP hermite_next_(SEXP n_, SEXP x_, SEXP Hn_, SEXP Hnm1_);
  SEXP chebyshev_next_(SEXP x_, SEXP Tn_, SEXP Tn_1_);
  SEXP chebyshev_t_(SEXP n_, SEXP x_);
  SEXP chebyshev_u_(SEXP n_, SEXP x_);
  SEXP chebyshev_t_prime_(SEXP n_, SEXP x_);
  SEXP chebyshev_clenshaw_recurrence_(SEXP c_, SEXP x_);
  SEXP chebyshev_clenshaw_recurrence_ab_(SEXP c_, SEXP a_, SEXP b_, SEXP x_);
  SEXP spherical_harmonic_r_(SEXP n_, SEXP m_, SEXP theta_, SEXP phi_);
  SEXP spherical_harmonic_i_(SEXP n_, SEXP m_, SEXP theta_, SEXP phi_);
  SEXP gegenbauer_(SEXP n_, SEXP lambda_, SEXP x_);
  SEXP gegenbauer_prime_(SEXP n_, SEXP lambda_, SEXP x_);
  SEXP gegenbauer_derivative_(SEXP n_, SEXP lambda_, SEXP x_, SEXP k_);
  SEXP jacobi_(SEXP n_, SEXP alpha_, SEXP beta_, SEXP x_);
  SEXP jacobi_derivative_(SEXP n_, SEXP alpha_, SEXP beta_, SEXP x_, SEXP k_) ;
  SEXP jacobi_prime_(SEXP n_, SEXP alpha_, SEXP beta_, SEXP x_);
  SEXP jacobi_double_prime_(SEXP n_, SEXP alpha_, SEXP beta_, SEXP x_);

  // bessel_functions.cpp
  SEXP cyl_bessel_j_(SEXP v_, SEXP x_);
  SEXP cyl_neumann_(SEXP v_ , SEXP x_);
  SEXP cyl_bessel_j_zero_(SEXP v_, SEXP m_);
  SEXP cyl_neumann_zero_(SEXP v_, SEXP m_);
  SEXP cyl_bessel_j_zero_multiple_(SEXP v_, SEXP start_index_, SEXP number_of_zeros_);
  SEXP cyl_neumann_zero_multiple_(SEXP v_, SEXP start_index_, SEXP number_of_zeros_);
  SEXP cyl_bessel_i_(SEXP v_, SEXP x_);
  SEXP cyl_bessel_k_(SEXP v_, SEXP x_);
  SEXP sph_bessel_(SEXP v_, SEXP x_);
  SEXP sph_neumann_(SEXP v_, SEXP x_);
  SEXP cyl_bessel_j_prime_(SEXP v_, SEXP x_);
  SEXP cyl_neumann_prime_(SEXP v_, SEXP x_);
  SEXP cyl_bessel_i_prime_(SEXP v_, SEXP x_);
  SEXP cyl_bessel_k_prime_(SEXP v_, SEXP x_);
  SEXP sph_bessel_prime_(SEXP v_, SEXP x_);
  SEXP sph_neumann_prime_(SEXP v_, SEXP x_);

  // airy_functions.cpp
  SEXP airy_ai_(SEXP x_);
  SEXP airy_bi_(SEXP x_);
  SEXP airy_ai_prime_(SEXP x_);
  SEXP airy_bi_prime_(SEXP x_);
  SEXP airy_ai_zero_(SEXP m_);
  SEXP airy_bi_zero_(SEXP m_);
  SEXP airy_ai_zero_multiple_(SEXP start_index_, SEXP number_of_zeros_);
  SEXP airy_bi_zero_multiple_(SEXP start_index_, SEXP number_of_zeros_);

  //  elliptic_integrals.cpp
  SEXP ellint_rf_(SEXP x_, SEXP y_, SEXP z_);
  SEXP ellint_rd_(SEXP x_, SEXP y_, SEXP z_);
  SEXP ellint_rj_(SEXP x_, SEXP y_, SEXP z_, SEXP p_);
  SEXP ellint_rc_(SEXP x_, SEXP y_);
  SEXP ellint_rg_(SEXP x_, SEXP y_, SEXP z_);
  SEXP ellint_1_incomplete_(SEXP k_, SEXP phi_);
  SEXP ellint_1_(SEXP k_);
  SEXP ellint_2_incomplete_(SEXP k_, SEXP phi_);
  SEXP ellint_2_(SEXP k_);
  SEXP ellint_3_incomplete_(SEXP k_, SEXP n_, SEXP phi_);
  SEXP ellint_3_(SEXP k_, SEXP n_);

  static const R_CallMethodDef CallEntries[] = {
    // gamma_functions.cpp
    {"tgamma_",     (DL_FUNC) &tgamma_,     1},
    {"tgamma1pm1_", (DL_FUNC) &tgamma1pm1_, 1},
    {"lgamma_",     (DL_FUNC) &lgamma_,     1},
    {"digamma_",    (DL_FUNC) &digamma_,    1},
    {"trigamma_",   (DL_FUNC) &trigamma_,   1},
    {"polygamma_",  (DL_FUNC) &polygamma_,  2},
    {"tgamma_ratio_", (DL_FUNC) &tgamma_ratio_, 2},
    {"tgamma_delta_ratio_", (DL_FUNC) &tgamma_delta_ratio_, 2},
    {"gamma_p_",    (DL_FUNC) &gamma_p_,    2},
    {"gamma_q_",    (DL_FUNC) &gamma_q_,    2},
    {"tgamma_lower_", (DL_FUNC) &tgamma_lower_, 2},
    {"tgamma_upper_", (DL_FUNC) &tgamma_upper_, 2},
    {"gamma_q_inv_", (DL_FUNC) &gamma_q_inv_, 2},
    {"gamma_p_inv_", (DL_FUNC) &gamma_p_inv_, 2},
    {"gamma_q_inva_", (DL_FUNC) &gamma_q_inva_, 2},
    {"gamma_p_inva_", (DL_FUNC) &gamma_p_inva_, 2},
    {"gamma_p_derivative_", (DL_FUNC) &gamma_p_derivative_, 2},

    // number_series.cpp
    {"bernoulli_b2n_", (DL_FUNC) &bernoulli_b2n_, 1},
    {"max_bernoulli_b2n_", (DL_FUNC) &max_bernoulli_b2n_, 0},
    {"unchecked_bernoulli_b2n_", (DL_FUNC) &unchecked_bernoulli_b2n_, 1},
    {"bernoulli_b2n_range_", (DL_FUNC) &bernoulli_b2n_range_, 2},
    {"tangent_t2n_", (DL_FUNC) &tangent_t2n_, 1},
    {"tangent_t2n_range_", (DL_FUNC) &tangent_t2n_range_, 2},
    {"prime_",      (DL_FUNC) &prime_,      1},
    {"max_prime_",  (DL_FUNC) &max_prime_,  0},
    {"fibonacci_",  (DL_FUNC) &fibonacci_,  1},
    {"unchecked_fibonacci_", (DL_FUNC) &unchecked_fibonacci_, 1},

    // factorials_and_binomial_coefficients.cpp
    {"factorial_", (DL_FUNC) &factorial_, 1},
    {"unchecked_factorial_", (DL_FUNC) &unchecked_factorial_, 1},
    {"max_factorial_", (DL_FUNC) &max_factorial_, 0},
    {"double_factorial_", (DL_FUNC) &double_factorial_, 1},
    {"rising_factorial_", (DL_FUNC) &rising_factorial_, 2},
    {"falling_factorial_", (DL_FUNC) &falling_factorial_, 2},
    {"binomial_coefficient_", (DL_FUNC) &binomial_coefficient_, 2},

    // beta_functions.cpp
    {"beta_", (DL_FUNC) &beta_, 2},
    {"ibeta_", (DL_FUNC) &ibeta_, 3},
    {"ibetac_", (DL_FUNC) &ibetac_, 3},
    {"beta_incomplete_", (DL_FUNC) &beta_incomplete_, 3},
    {"betac_", (DL_FUNC) &betac_, 3},
    {"ibeta_inv_", (DL_FUNC) &ibeta_inv_, 3},
    {"ibetac_inv_", (DL_FUNC) &ibetac_inv_, 3},
    {"ibeta_inva_", (DL_FUNC) &ibeta_inva_, 3},
    {"ibetac_inva_", (DL_FUNC) &ibetac_inva_, 3},
    {"ibeta_invb_", (DL_FUNC) &ibeta_invb_, 3},
    {"ibetac_invb_", (DL_FUNC) &ibetac_invb_, 3},
    {"ibeta_derivative_", (DL_FUNC) &ibeta_derivative_, 3},

    // error_functions.cpp
    {"erf_", (DL_FUNC) &erf_, 1},
    {"erfc_", (DL_FUNC) &erfc_, 1},
    {"erf_inv_", (DL_FUNC) &erf_inv_, 1},
    {"erfc_inv_", (DL_FUNC) &erfc_inv_, 1},

    // polynomials.cpp
    {"legendre_p_", (DL_FUNC) &legendre_p_, 2},
    {"legendre_p_prime_", (DL_FUNC) &legendre_p_prime_, 2},
    {"legendre_p_zeros_", (DL_FUNC) &legendre_p_zeros_, 1},
    {"legendre_p_m_", (DL_FUNC) &legendre_p_m_, 3},
    {"legendre_q_", (DL_FUNC) &legendre_q_, 2},
    {"legendre_next_", (DL_FUNC) &legendre_next_, 4},
    {"legendre_next_m_", (DL_FUNC) &legendre_next_m_, 5},
    {"laguerre_", (DL_FUNC) &laguerre_, 2},
    {"laguerre_m_", (DL_FUNC) &laguerre_m_, 3},
    {"laguerre_next_", (DL_FUNC) &laguerre_next_, 4},
    {"laguerre_next_m_", (DL_FUNC) &laguerre_next_m_, 5},
    {"hermite_", (DL_FUNC) &hermite_, 2},
    {"hermite_next_", (DL_FUNC) &hermite_next_, 4},
    {"chebyshev_next_", (DL_FUNC) &chebyshev_next_, 3},
    {"chebyshev_t_", (DL_FUNC) &chebyshev_t_, 2},
    {"chebyshev_u_", (DL_FUNC) &chebyshev_u_, 2},
    {"chebyshev_t_prime_", (DL_FUNC) &chebyshev_t_prime_, 2},
    {"chebyshev_clenshaw_recurrence_", (DL_FUNC) &chebyshev_clenshaw_recurrence_, 2},
    {"chebyshev_clenshaw_recurrence_ab_", (DL_FUNC) &chebyshev_clenshaw_recurrence_ab_, 4},
    {"spherical_harmonic_r_", (DL_FUNC) &spherical_harmonic_r_, 4},
    {"spherical_harmonic_i_", (DL_FUNC) &spherical_harmonic_i_, 4},
    {"gegenbauer_", (DL_FUNC) &gegenbauer_, 3},
    {"gegenbauer_prime_", (DL_FUNC) &gegenbauer_prime_, 3},
    {"gegenbauer_derivative_", (DL_FUNC) &gegenbauer_derivative_, 4},
    {"jacobi_", (DL_FUNC) &jacobi_, 4},
    {"jacobi_derivative_", (DL_FUNC) &jacobi_derivative_, 4},
    {"jacobi_prime_", (DL_FUNC) &jacobi_prime_, 3},
    {"jacobi_double_prime_", (DL_FUNC) &jacobi_double_prime_, 3},

    // bessel_functions.cpp
    {"cyl_bessel_j_", (DL_FUNC) &cyl_bessel_j_, 2},
    {"cyl_neumann_", (DL_FUNC) &cyl_neumann_, 2},
    {"cyl_bessel_j_zero_", (DL_FUNC) &cyl_bessel_j_zero_, 2},
    {"cyl_neumann_zero_", (DL_FUNC) &cyl_neumann_zero_, 2},
    {"cyl_bessel_j_zero_multiple_", (DL_FUNC) &cyl_bessel_j_zero_multiple_, 3},
    {"cyl_neumann_zero_multiple_", (DL_FUNC) &cyl_neumann_zero_multiple_, 3},
    {"cyl_bessel_i_", (DL_FUNC) &cyl_bessel_i_, 2},
    {"cyl_bessel_k_", (DL_FUNC) &cyl_bessel_k_, 2},
    {"sph_bessel_", (DL_FUNC) &sph_bessel_, 2},
    {"sph_neumann_", (DL_FUNC) &sph_neumann_, 2},
    {"cyl_bessel_j_prime_", (DL_FUNC) &cyl_bessel_j_prime_, 2},
    {"cyl_neumann_prime_", (DL_FUNC) &cyl_neumann_prime_, 2},
    {"cyl_bessel_i_prime_", (DL_FUNC) &cyl_bessel_i_prime_, 2},
    {"cyl_bessel_k_prime_", (DL_FUNC) &cyl_bessel_k_prime_, 2},
    {"sph_bessel_prime_", (DL_FUNC) &sph_bessel_prime_, 2},
    {"sph_neumann_prime_", (DL_FUNC) &sph_neumann_prime_, 2},

    // airy_functions.cpp
    {"airy_ai_", (DL_FUNC) &airy_ai_, 1},
    {"airy_bi_", (DL_FUNC) &airy_bi_, 1},
    {"airy_ai_prime_", (DL_FUNC) &airy_ai_prime_, 1},
    {"airy_bi_prime_", (DL_FUNC) &airy_bi_prime_, 1},
    {"airy_ai_zero_", (DL_FUNC) &airy_ai_zero_, 1},
    {"airy_bi_zero_", (DL_FUNC) &airy_bi_zero_, 1},
    {"airy_ai_zero_multiple_", (DL_FUNC) &airy_ai_zero_multiple_, 2},
    {"airy_bi_zero_multiple_", (DL_FUNC) &airy_bi_zero_multiple_, 2},

    // elliptic_integrals.cpp
    {"ellint_rf_", (DL_FUNC) &ellint_rf_, 3},
    {"ellint_rd_", (DL_FUNC) &ellint_rd_, 3},
    {"ellint_rj_", (DL_FUNC) &ellint_rj_, 4},
    {"ellint_rc_", (DL_FUNC) &ellint_rc_, 2},
    {"ellint_rg_", (DL_FUNC) &ellint_rg_, 3},
    {"ellint_1_incomplete_", (DL_FUNC) &ellint_1_incomplete_, 2},
    {"ellint_1_", (DL_FUNC) &ellint_1_, 1},
    {"ellint_2_incomplete_", (DL_FUNC) &ellint_2_incomplete_, 2},
    {"ellint_2_", (DL_FUNC) &ellint_2_, 1},
    {"ellint_3_incomplete_", (DL_FUNC) &ellint_3_incomplete_, 3},
    {"ellint_3_", (DL_FUNC) &ellint_3_, 2},

    {NULL, NULL, 0}
  };

  attribute_visible void R_init_boostmath(DllInfo* dll){
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
    R_forceSymbols(dll, TRUE);
  }
}
