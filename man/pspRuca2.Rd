% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/describe_datas.R
\docType{data}
\name{pspRuca2}
\alias{pspRuca2}
\title{Coordenadas espaciales y variables a nivel de árbol en parcela de muestreo en predio Rucamanque, Temuco, Chile}
\format{
Variables se describen a continuacion::
\describe{
\item{arbol}{Numero de árbol.}											
\item{especie}{Nombre de la especie, "N. obliqua" es Nothofagus obliqua, "A. punctatum" es Aexitocicon puncatatum, etc.}
\item{estado}{Estado del árbol: 1 vivo, 0 muerto en pie.}
\item{dap}{Diametro a la altura del pecho, en cm.}
\item{coord.x}{Posición cartesiana en el eje X, en m.}
\item{coord.y}{Posición cartesiana en el eje Y, en m.}
\item{clase.copa}{Clase de copa (1: superior, 2: intermedio, 3; inferior).}
 }
}
\source{
Los datos fueron cedidos por el Dr Christian Salas-Eljatib. 
Mayores detalles pueden encontrarse en Salas et al (2006).
}
\usage{
data(pspRuca2)
}
\description{
Medidas a nivel de árbol y coordenadas espaciales en un parcela de muestreo permanente de 1 ha (100 x 100m) en el 
 bosque de Rucamanque, cerca de Temuco, Chile.
}
\examples{
data(pspRuca2)    
head(pspRuca2) 
tapply(pspRuca2$dap,pspRuca2$especie,summary)
}
\references{
Salas C, LeMay V, Nunez P, Pacheco P, and Espinosa A. 2006. Spatial patterns in an old-growth Nothofagus obliqua forest in 
south-central Chile. Forest Ecology and Management 231(1-3): 38-46. \doi{10.1016/j.foreco.2006.04.037}
}
\keyword{datasets}
