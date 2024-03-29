% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/describe_datas.R
\docType{data}
\name{pspRuca}
\alias{pspRuca}
\title{Tree-level measurements and spatial coordinates in a sample plot in the Rucamanque experimental forest, Temuco, Chile.}
\format{
The data frame contains four variables as follows:
\describe{
\item{tree.no}{tree number}											
\item{spp}{Species name, "N. obliqua" is Nothofagus obliqua, "A. punctatum" is Aexitocicon puncatatum, etc.}
\item{status}{1 alive, 0 standing-dead}
\item{dbh}{diameter at breast-height, in cm}
\item{x.coord}{Cartesian position at the X-axis, in m}
\item{y.coord}{Cartesian position at the Y-axis, in m}
\item{crown.class}{Crown class (1: superior, 2: intermediate, 3; inferior)}
 }
}
\source{
Data were provided by Dr Christian Salas-Eljatib (Chile). Further details can be 
found at Salas et al (2006).
}
\usage{
data(pspRuca)
}
\description{
Tree level measurements and spatial coordinates in a permanent sample plot of 1 ha (100 x 100m) in the Rucamanque 
experimental forests, near Temuco, Chile.
}
\examples{
data(pspRuca)    
head(pspRuca) 
tapply(pspRuca$dbh,pspRuca$spp,summary)
}
\references{
Salas C, LeMay V, Nunez P, Pacheco P, and Espinosa A. 2006. Spatial patterns in an old-growth Nothofagus obliqua forest in 
south-central Chile. Forest Ecology and Management 231(1-3): 38-46. \doi{10.1016/j.foreco.2006.04.037}
}
\keyword{datasets}
