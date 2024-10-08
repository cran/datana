% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/describe_datas.R
\docType{data}
\name{plantsHawaii}
\alias{plantsHawaii}
\title{Maximum plant size in the Hawaiian archipelago.}
\format{
Contains six variables, as follows:
\describe{
  \item{scientific.name}{Genus and epithet of each individual following The Plant List v. 1.1 (2013).}
  \item{family}{Family of each individual following The Plant List v. 1.1 (2013).}
\item{native.status}{Categorical variable ('native', 'alien', 'uncertain') indicating alien status of each individual following Wagner et al. (2005).}
\item{n}{Number of individuals used to estimate maximum plant size.}
\item{d.95}{Maximum plant size, estimated as D950.1 (King et al. 2006).}
\item{d.max.3}{Maximum plant size, estimated as Dmax3 (King et al. 2006).}
 }
}
\source{
The data were obtained from the DRYAD repository at \doi{10.5061/dryad.1kk02qr}.
}
\usage{
data(plantsHawaii)
}
\description{
Maximum plant size of 58 tree, shrub and tree fern species that occur 
in 530 forest plots across the Hawaiian archipelago.
}
\examples{
data(plantsHawaii)    
head(plantsHawaii) 
}
\references{
- Craven D, Knight T, Barton K, Bialic-Murphy L, Cordell S, Giardina C, Gillespie T, Ostertag R, Sack L,Chase J.
2018. OpenNahele: the open Hawaiian forest plot database. Biodiversity Data Journal 6: e28406.
}
\keyword{datasets}
