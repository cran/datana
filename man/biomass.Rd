% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/describe_datas.R
\docType{data}
\name{biomass}
\alias{biomass}
\title{Contains tree-level biomass data for several species in Canada.}
\format{
\describe{
  \item{treenum}{tree number.}
  \item{spp}{species common name.}
  \item{dbh}{diameter at breast height, in cm.}
  \item{height}{total height, in m.}
  \item{totbiom}{total biomass, in kg.}
  \item{bolebiom}{stem biomass, in kg.}
  \item{branchbiom}{branches biomass, in kg.}
  \item{foliagebiom}{foliage biomass, in kg.}
 }
}
\source{
The data are provided courtesy of Prof. Timothy Gregoire at
the School of Forestry and Environmental Studies at Yale University (New Haven, CT, USA).
}
\usage{
biomass
}
\description{
These are tree-level variables for several species in Canada.
}
\examples{
data(biomass)    
head(biomass) 
}
\keyword{datasets}
