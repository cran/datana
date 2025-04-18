% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/describeDataDatana.r
\docType{data}
\name{treevolruca}
\alias{treevolruca}
\title{Tree volume by species in the Rucamanque forest}
\format{
Contains tree-level variables, as follows:
\describe{
  \item{tree.no}{Tree id.}
\item{spp}{Species.}
\item{dbh}{Diameter at breast height, in cm.}
\item{toth}{Total height, in m.}
 \item{d6}{Upper-stem diameter at 6 m, in cm.}
\item{totv}{Tree gross volume, in m\eqn{^{3}}{^3} with bark.}
 }
}
\source{
The data were provided courtesy of Dr Christian Salas
 (Universidad de Chile, Santiago, Chile).
}
\usage{
data(treevolruca)
}
\description{
These are tree-level measurement data of sample trees in the Rucamanque 
experimental forest, 
 near Temuco, in the Araucania region in south-centralChile, measured
  in 1999.  The following
 species are part of the data: laurel (laurelia sempervirens), 
 lingue (Persea lingue), olivillo (Aextocicon puncatum), 
 roble (Nothofagus obliqua), tepa (Laureliosis philippiana), y 
 tineo (Weinmannia trichosperma).
}
\examples{
data(treevolruca)    
head(treevolruca) 
table(treevolruca$spp) 
}
\references{
- Salas C. 2002. Ajuste y validación de ecuaciones de volumen para un relicto
del bosque de Roble-Laurel-Lingue. Bosque 23(2): 81-92. 
\doi{10.4067/S0717-92002002000200009} 
\url{https://eljatib.com/publication/2002-07-01_ajuste_y_validacion_/}
}
\keyword{datasets}
