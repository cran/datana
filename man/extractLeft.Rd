% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extractLeft.r
\name{extractLeft}
\alias{extractLeft}
\title{Extracts the last n-characters of a string}
\usage{
extractLeft(fac, n)
}
\arguments{
\item{fac}{is an object of class string or factor}

\item{n}{is the number of characters to be deleted of a the
string given in 'fac'.}
}
\value{
This function returns an object having the first
n-characters from the left-hand side.
}
\description{
Function to extract the first n-characters of a string from the
left-hand side.
}
\details{
It is specially set to arrange data vector
having alphanumeric format.
}
\examples{

plot.id <- c("BNE1","BNE2","PLE1")
extractLeft(plot.id,1)
extractLeft(plot.id,2)
extractLeft(plot.id,3)
}
\references{
Salas-Eljatib, C. 2021. Análisis de datos con el programa
estadístico R: una introducción
aplicada. Ediciones Universidad Mayor, Santiago, Chile. 170 p.
\url{https://eljatib.com/rlibro}
}
\author{
Christian Salas-Eljatib
}
