% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-sludge2.r
\docType{data}
\name{sludge2}
\alias{sludge2}
\title{Sludge data are at different cities, with a value of concentration zinc.}
\format{
Contiene las siguinetes cuatro variables:
\describe{
\item{ciudad}{Nombre de la ciudad.}
\item{tasa}{Tasa de concentracion de lodo.}
\item{zinc}{Concentracion de Zinc, en ppm.}
\item{trt.comb}{Identificador de la combinacion de niveles entre los
factores ciudad y tasa.}
}
}
\source{
The data were provided from.. still remember.
}
\usage{
data(sludge2)
}
\description{
Datos de contenido de Zinc en el tratamiento de lodos
}
\examples{
data(sludge2)    
table(sludge2$ciudad,sludge2$tasa) 
levels(sludge2$ciudad)
tapply(sludge2$zinc, list(sludge2$ciudad,sludge2$tasa), mean)
}
\references{
not yet
}
\keyword{datasets}
