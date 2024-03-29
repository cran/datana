% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/describe_datas.R
\docType{data}
\name{election2}
\alias{election2}
\title{Elección presidential en el estado de Florida (USA) en el 2000.}
\format{
Contiene tres variables, como sigue:
\describe{
  \item{gore}{Votos para Gore.}
  \item{bush}{Votos para Bush.}
\item{buchaman}{Votos para Buchaman.}
 }
}
\source{
Los datos se obtuvieron desde el paquete 'alr4' de R.
}
\usage{
data(election2)
}
\description{
Votos para cada candidato (i.e., Bush, Gore y Buchanan) por condado en la elección presidencial del 2000 en el estado de Florida (USA).
}
\examples{
head(election2)    
colSums(election2)
}
\references{
Weisberg S. 2014. Applied Linear Regression. 4th edition. Hoboken NJ: Wiley
}
\keyword{datasets}
