% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gamma_functions.R
\name{gamma_functions}
\alias{gamma_functions}
\alias{tgamma}
\alias{tgamma1pm1}
\alias{lgamma_boost}
\alias{digamma_boost}
\alias{trigamma_boost}
\alias{polygamma}
\alias{tgamma_ratio}
\alias{tgamma_delta_ratio}
\alias{gamma_p}
\alias{gamma_q}
\alias{tgamma_lower}
\alias{tgamma_upper}
\alias{gamma_q_inv}
\alias{gamma_p_inv}
\alias{gamma_q_inva}
\alias{gamma_p_inva}
\alias{gamma_p_derivative}
\title{Gamma Functions}
\usage{
tgamma(z)

tgamma1pm1(z)

lgamma_boost(z)

digamma_boost(z)

trigamma_boost(z)

polygamma(n, z)

tgamma_ratio(a, b)

tgamma_delta_ratio(a, delta)

gamma_p(a, z)

gamma_q(a, z)

tgamma_lower(a, z)

tgamma_upper(a, z)

gamma_q_inv(a, q)

gamma_p_inv(a, p)

gamma_q_inva(z, q)

gamma_p_inva(z, p)

gamma_p_derivative(a, z)
}
\arguments{
\item{z}{Input numeric value for the gamma function}

\item{n}{Order of the polygamma function (non-negative integer)}

\item{a}{Argument for the incomplete gamma functions}

\item{b}{Denominator argument for the ratio of gamma functions}

\item{delta}{Increment for the ratio of gamma functions}

\item{q}{Probability value for the incomplete gamma functions}

\item{p}{Probability value for the incomplete gamma functions}
}
\value{
A single numeric value with the computed gamma function, logarithm, digamma, trigamma, polygamma, or incomplete gamma functions.
}
\description{
Functions to compute the gamma function, its logarithm, digamma, trigamma, polygamma, and various incomplete gamma functions.
}
\examples{
\dontrun{
# Gamma function for z = 5
tgamma(5)
# Gamma function for (1 + z) - 1, where z = 5
tgamma1pm1(5)
# Logarithm of the gamma function for z = 5
lgamma_boost(5)
# Digamma function for z = 5
digamma_boost(5)
# Trigamma function for z = 5
trigamma_boost(5)
# Polygamma function of order 1 for z = 5
polygamma(1, 5)
# Ratio of gamma functions for a = 5, b = 3
tgamma_ratio(5, 3)
# Ratio of gamma functions with delta for a = 5, delta = 2
tgamma_delta_ratio(5, 2)
# Normalised lower incomplete gamma function P(a, z) for a = 5, z = 2
gamma_p(5, 2)
# Normalised upper incomplete gamma function Q(a, z) for a = 5, z = 2
gamma_q(5, 2)
# Full lower incomplete gamma function for a = 5, z = 2
tgamma_lower(5, 2)
# Full upper incomplete gamma function for a = 5, z = 2
tgamma_upper(5, 2)
# Inverse of the normalised upper incomplete gamma function for a = 5, q = 0.5
gamma_q_inv(5, 0.5)
# Inverse of the normalised lower incomplete gamma function for a = 5, p = 0.5
gamma_p_inv(5, 0.5)
# Inverse of the normalised upper incomplete gamma function with respect to a for z = 2, q = 0.5
gamma_q_inva(2, 0.5)
# Inverse of the normalised lower incomplete gamma function with respect to a for z = 2, p = 0.5
gamma_p_inva(2, 0.5)
# Derivative of the normalised upper incomplete gamma function for a = 5, z = 2
gamma_p_derivative(5, 2)
}
}
\seealso{
\href{https://www.boost.org/doc/libs/1_87_0/libs/math/doc/html/math_toolkit/sf_gamma.html}{Boost Documentation} for more details on the mathematical background.
}
