% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/beta_functions.R
\name{beta_functions}
\alias{beta_functions}
\alias{beta_boost}
\alias{ibeta}
\alias{ibetac}
\alias{betac}
\alias{ibeta_inv}
\alias{ibetac_inv}
\alias{ibeta_inva}
\alias{ibetac_inva}
\alias{ibeta_invb}
\alias{ibetac_invb}
\alias{ibeta_derivative}
\title{Beta Functions}
\usage{
beta_boost(a, b, x = NULL)

ibeta(a, b, x)

ibetac(a, b, x)

betac(a, b, x)

ibeta_inv(a, b, p)

ibetac_inv(a, b, q)

ibeta_inva(b, x, p)

ibetac_inva(b, x, q)

ibeta_invb(a, x, p)

ibetac_invb(a, x, q)

ibeta_derivative(a, b, x)
}
\arguments{
\item{a}{First parameter of the beta function}

\item{b}{Second parameter of the beta function}

\item{x}{Upper limit of integration (0 <= x <= 1)}

\item{p}{Probability value (0 <= p <= 1)}

\item{q}{Probability value (0 <= q <= 1)}
}
\value{
A single numeric value with the computed beta function, normalised incomplete beta function, or their complements, depending on the function called.
}
\description{
Functions to compute the Euler beta function, normalised incomplete beta function, and their complements, as well as their inverses and derivatives.
}
\examples{
\dontrun{
# Euler beta function B(2, 3)
beta_boost(2, 3)
# Normalised incomplete beta function I_x(2, 3) for x = 0.5
ibeta(2, 3, 0.5)
# Normalised complement of the incomplete beta function 1 - I_x(2, 3) for x = 0.5
ibetac(2, 3, 0.5)
# Full incomplete beta function B_x(2, 3) for x = 0.5
beta_boost(2, 3, 0.5)
# Full complement of the incomplete beta function 1 - B_x(2, 3) for x = 0.5
betac(2, 3, 0.5)
# Inverse of the normalised incomplete beta function I_x(2, 3) = 0.5
ibeta_inv(2, 3, 0.5)
# Inverse of the normalised complement of the incomplete beta function I_x(2, 3) = 0.5
ibetac_inv(2, 3, 0.5)
# Inverse of the normalised complement of the incomplete beta function I_x(a, b)
# with respect to a for x = 0.5 and q = 0.5
ibetac_inva(3, 0.5, 0.5)
# Inverse of the normalised incomplete beta function I_x(a, b)
# with respect to b for x = 0.5 and p = 0.5
ibeta_invb(0.8, 0.5, 0.5)
# Inverse of the normalised complement of the incomplete beta function I_x(a, b)
# with respect to b for x = 0.5 and q = 0.5
ibetac_invb(2, 0.5, 0.5)
# Derivative of the incomplete beta function with respect to x for a = 2, b = 3, x = 0.5
ibeta_derivative(2, 3, 0.5)
}
}
\seealso{
\href{https://www.boost.org/doc/libs/1_87_0/libs/math/doc/html/math_toolkit/sf_beta.html}{Boost Documentation} for more details on the mathematical background.
}
