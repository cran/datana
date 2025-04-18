% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/describeDataDatana.r
\docType{data}
\name{biomass2}
\alias{biomass2}
\title{Biomasa a nivel de árbol para especies arboreas de Canadá}
\format{
\describe{
  \item{arbol}{Número del árbol.}
  \item{spp}{Nombre común de la especie.}
  \item{dap}{Diámetro a la altura del pecho (1.3 m), en cm.}
  \item{atot}{Altura total, en m.}
  \item{wtot}{Biomasa total, en kg.}
  \item{wfus}{Biomasa del fuste, en kg.}
  \item{wramas}{Biomasa de las ramas, en kg.}
  \item{whojas}{Biomasa del follaje, en kg.}
 }
}
\source{
Los datos fueron The data are provided courtesy of Prof. Timothy Gregoire at
the School of Forestry and Environmental Studies at Yale 
University (New Haven, CT, USA).
}
\usage{
biomass2
}
\description{
Biomasa a nivel de árbol y otras variables, para varias
especies que crecen en bosques de Canadá.
}
\examples{
data(biomass2)    
head(biomass2) 
tapply(biomass2$wtot,biomass2$spp,summary)  
}
\keyword{datasets}
