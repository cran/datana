% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/describe_datas.R
\docType{data}
\name{pinaster2}
\alias{pinaster2}
\title{Datos de volumen individual de árboles de Pinus pinaster en Galicia, España.}
\format{
Contiene las siguientes variables a nivel de árbol:
\describe{
  \item{rodal}{Rodal desde donde el árbol fue muestreado}
\item{ind.sitio}{Indice de sitio del rodal, en m.}
\item{arbol}{Numero del árbol.}
\item{dbh}{diámetro a la altura del pecho, en cm.}
\item{htot}{Altura total, en m.}
 \item{d4}{diámetro fustal a los 4 m, en cm.}
\item{vt.cc}{Volumen bruto total con corteza, en m\eqn{^{3}}{^3}.}
\item{vt.sc}{Volumen bruto total sin corteza, en m\eqn{^{3}}{^3}.}
 }
}
\source{
Los datos fueron cedidos por el Dr Christian Salas-Eljatib.
}
\usage{
data(pinaster2)
}
\description{
Variables de volumen, y otras, a nivel de árbol para una muestra de árboles
 de Pinus pinaster en la comarca del Baixo-Miño en Galicia, España.
}
\examples{
data(pinaster2)    
head(pinaster2) 
}
\references{
- Salas C, Nieto L, Irisarri A. 2005. Modelos de volumen para Pinus pinaster Ait. en la comarca del Baixo Mino,
  Galicia, Espana. Quebracho 12: 11-22. \url{https://eljatib.com/publication/2005-12-01_modelos_de_volumen_p/}
}
\keyword{datasets}
