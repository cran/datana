% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/describeDataDatana.r
\docType{data}
\name{treegr2}
\alias{treegr2}
\title{Crecimiento en diámetro y altura de árboles muestras de Grand-fir
 (Abies grandis)}
\format{
Contiene las siguientes siete columnas:
\describe{
  \item{num.arb}{Número identificador del árbol. Unico para cada árbol 
  muestra.}
  \item{bosque}{Tipo forestal.}
  \item{habitat}{Clasificación de tipo de habitat.}
  \item{cod.arb}{Un código que combina a las siguientes columnas: 
  num.arb-bosque-habitat}
  \item{edad}{Edad, en años.}
  \item{dap}{Diámetro a la altura del pecho, en cm. Note que los 
  decimales es debido a 
    que esta variable originalmente fue medida en pulgadas.}
  \item{atot}{Altura total, in m. Note que los decimales es debido 
  a que esta variable
   fue originalmente medida en pies.}
 }
}
\source{
Originalmente los datos fueron cedidos por el Dr Albert Stage (Q.E.P.D) 
al Profesor Andrew Robinson (University
 of Idaho, USA), quien los usaba para explicar el ajuste de modelos 
 estadísticos. El Dr Christian Salas-Eljatib fue un estudiante de postgrado 
 en estadística del Prof. Robinson en la Univ. of Idaho.
}
\usage{
data(treegr2)
}
\description{
Crecimiento en diámetro y altura de 66 árboles de Grand-fir. Los datos 
fueron derivados a partir de árboles muestras de analisis fustal
 colectados por el Dr Albert Stage (US Forest Service, Moscow, ID, USA.)
}
\examples{
data(treegr2)    
head(treegr2) 
}
\references{
Stage AR. 1963. A mathematical approach to polymorphic site index curves for 
 Grand fir. Forest Science 9(2):167–180.
}
\keyword{datasets}
