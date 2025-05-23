% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-airnyc2.r
\docType{data}
\name{airnyc2}
\alias{airnyc2}
\title{Calidad del aire en la ciudad de Nueva York.}
\format{
Contiene 6 variables:
\describe{
\item{ozone}{Ozono (ppb).}
\item{solar}{Solar R (largo).}
\item{wind}{Viento (mph).}
\item{temp}{Temperatura (grados F).}
\item{month}{Mes del año (1--12).}
\item{day}{Dia del mes (1--31).}
}
}
\source{
Los datos fueron obtenidos desde la librería 'datasets'.
}
\usage{
data(airnyc2)
}
\description{
Calidad del aire diario medido en New York, de Mayo a Septiembre de 1973.
}
\examples{
data(airnyc2)    
head(airnyc2) 
}
\references{
Chambers J, Cleveland W, Kleiner B, Tukey P. 1983. Graphical Methods for
Data Analysis. Belmont. CA: Wadsworth.
}
\keyword{datasets}
