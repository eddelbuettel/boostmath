% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rayleigh_distribution.R
\name{rayleigh_distribution}
\alias{rayleigh_distribution}
\alias{rayleigh_pdf}
\alias{rayleigh_lpdf}
\alias{rayleigh_cdf}
\alias{rayleigh_lcdf}
\alias{rayleigh_quantile}
\title{Rayleigh Distribution Functions}
\usage{
rayleigh_pdf(x, scale = 1)

rayleigh_lpdf(x, scale = 1)

rayleigh_cdf(x, scale = 1)

rayleigh_lcdf(x, scale = 1)

rayleigh_quantile(p, scale = 1)
}
\arguments{
\item{x}{quantile}

\item{scale}{scale parameter (default is 1)}

\item{p}{probability (0 <= p <= 1)}
}
\value{
A single numeric value with the computed probability density, log-probability density, cumulative distribution, log-cumulative distribution, or quantile depending on the function called.
}
\description{
Functions to compute the probability density function, cumulative distribution function, and quantile function for the Rayleigh distribution.
}
\examples{
# Rayleigh distribution with scale = 1
rayleigh_pdf(1)
rayleigh_lpdf(1)
rayleigh_cdf(1)
rayleigh_lcdf(1)
rayleigh_quantile(0.5)
}
\seealso{
\href{https://www.boost.org/doc/libs/1_87_0/libs/math/doc/html/math_toolkit/dist_ref/dists/rayleigh.html}{Boost Documentation} for more details on the mathematical background.
}
