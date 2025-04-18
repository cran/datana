% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/describeDataDatana.r
\docType{data}
\name{pcontorta}
\alias{pcontorta}
\title{Contains spatial location of Pinus contorta trees in sample plots.}
\format{
Contains eight variables, as follows:
\describe{
  \item{plot.id}{Plot sample ID.}
  \item{tree.id}{Tree identificator number in each plot. Same indv/id for 
  multi-stem trees.}
\item{y.coord}{coordinate of S latitude.}
\item{x.coord}{coordinate of W longitude.}
\item{substrate}{Ground cover in which each pine grow. Bare soil, 
Festuca pallescens, Baccharis magellanica, 
Oreopulus glacialis, Acaena integerrima and others species.}
\item{drc}{Diameter at the root collar on trees, in mm.}
\item{h}{Height of trees, in cm.}
\item{canopy.area}{Proyection of canopy area of each tree, 
in square meters.}
}
}
\source{
The data are provided courtesy of Drs Anibal Pauchard and Rafael Garcia at 
 the Laboratorio de Invasiones Biologicas,
 Universidad de Concepción (Concepción, Chile).
}
\usage{
data(pcontorta)
}
\description{
These are tree-level measurement data, with cartesian location of each tree, 
from Pinus contorta invasion in 
Patagonian steppe in Coyhaique in southhern Chile, measured in 2011. 
There are 3 plots, each
 of 10.000 m\eqn{^{2}}{^2}.
}
\examples{
data(pcontorta)    
head(pcontorta)
unique(pcontorta$plot.id) 
}
\references{
Pauchard A, Escudero A, García RA, de la Cruz M, Langdon B, Cavieres LA,
  Esquivel J. 2016.
 Pine invasions in treeless environments: dispersal overruns microsite
  heterogeneity. 
 Ecology and Evolution. 6(2): 447-459.
}
\keyword{datasets}
