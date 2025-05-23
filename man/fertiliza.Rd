% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-fertiliza.r
\docType{data}
\name{fertiliza}
\alias{fertiliza}
\title{Fertilization experiment data.}
\format{
Contains two variables, as follows:
\describe{
\item{treat}{Treatment level.}
\item{volume}{Plot-level volume, in m\eqn{^{3}}{^3}.}
}
}
\source{
The data were provided by Dr Christian Salas-Eljatib (Universidad de Chile,
Santiago, Chile).
}
\usage{
data(fertiliza)
}
\description{
Data contains volume data at plot-level for a fertilization
experiment.
}
\examples{
data(fertiliza)
head(fertiliza)
class(fertiliza$treat)
unique(fertiliza$treat)
means.g <- tapply(fertiliza$volume,fertiliza$treat,mean);means.g
sds.g <- tapply(fertiliza$volume,fertiliza$treat,sd);sds.g
ns.g <- tapply(fertiliza$volume,fertiliza$treat,length);ns.g
}
\references{
not yet
}
\keyword{datasets}
