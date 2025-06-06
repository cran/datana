% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deleteRight.r
\name{deleteRight}
\alias{deleteRight}
\title{Deletes the last n-characters of a string}
\usage{
deleteRight(fac, n)
}
\arguments{
\item{fac}{is an object of class string or factor}

\item{n}{is the number of characters to be deleted of a the
string given
in 'fac'.}
}
\value{
This function returns an object having n-less characters
from the right-hand side.
}
\description{
Function to delete the last n-characters of a string from
the right-hand side.
}
\details{
It is specially set to arrange data vector having
alphanumeric
format.
}
\examples{

last.names.id <- c("Stage-1924","Gregoire-1958","Robinson-1967")
deleteRight(last.names.id,5)
deleteRight(last.names.id,4)
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
