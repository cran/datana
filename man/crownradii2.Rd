% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/describe_datas.R
\docType{data}
\name{crownradii2}
\alias{crownradii2}
\title{Radios de copa de árboles}
\format{
Tiene las siguientes columnas:
\describe{
\item{esp}{Codigo de epecie. Ro es Roble, Co es Coigue y Ol is Olivillo.}
\item{dap}{Diametro a la altura del pecho, en cm.}
\item{atot}{Altura total, en m.}
\item{r.n}{Radio de copa hacia el Norte, en m.}
\item{r.e}{Radio de copa hacia el Este, en m.}
 \item{r.s}{Radio de copa hacia el Sure, en m.}
\item{r.w}{Radio de copa hacia el Oeste, en m.}
\item{x.coord}{Posición cartesiana en el eje-X, en m.}
\item{y.coord}{Posición cartesiana en el eje-Y, en m.}
\item{dcopa}{Diametro de copa, en m.}
 }
}
\source{
Data were provided by Dr Christian Salas-Eljatib (Chile).
}
\usage{
data(crownradii2)
}
\description{
Mediciones de radios de copa en puntos cardinales para árboles muestra en el bosque de Rucamanque (Temuco, Chile).
 Los datos fueron colectados en una parcela de muestreo de 250m\eqn{^{2}}{^2}, establecida en un bosque secundario
 de Nothofagus obliqua (roble).
}
\examples{
data(crownradii2)    
head(crownradii2) 
}
\references{
- Salas C. 2001. Caracterización básica del relicto de Biodiversidad 
Rucamanque. Bosque Nativo, 29:3-9. \url{https://eljatib.com/publication/2001-06-01_caracterizacion_basi/}

Salas C, and Garcia O. 2006. Modelling height development of mature Nothofagus obliqua. 
Forest Ecology and Management 229 (1-3): 1–6. \doi{10.1016/j.foreco.2006.04.015}
}
\keyword{datasets}
