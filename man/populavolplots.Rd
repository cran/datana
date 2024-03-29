% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/describe_datas.R
\docType{data}
\name{populavolplots}
\alias{populavolplots}
\title{A population of forest sample plots.}
\format{
Data has a single column:
\describe{
\item{y}{Stand volume of the sample plot, in m\eqn{^{3}}{^3}. Therefore, the  
 volume in m\eqn{^{3}}{^3}/ha can be obtained by multiplying this value by the 
 expansion factor (100).}
 }
}
\source{
The data were typed by Natalia Pizarro, Javiera Zuñiga and Jose Osses, all of them students of Prof Christian Salas-Eljatib.
}
\usage{
data(populavolplots)
}
\description{
Tree standing volume in 576 contiguous 10m*10m square plots. Thus, the 
population covers 5.76 hectares. The data came from a 22 years-old 
radiata pine plantation near Valdivia, Chile.
}
\examples{

data(populavolplots)
summary(populavolplots$volume)
hist(populavolplots$volume)
}
\references{
Wrann JH. 1970. Efectividad de los distintos sistemas de muestreo y metodos de
 calculo en el inventario de un rodal de pino insigne. Tesis Ingeniero Forestal, Universidad Austral de Chile,
 Valdivia, Chile. 51p.
}
\keyword{datasets}
