% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-primarias.r
\docType{data}
\name{primarias}
\alias{primarias}
\title{Elección primaria para la presidencia de Chile}
\format{
Este set de datos contiene las siguientes columnas:
\describe{
\item{region.no}{Región administrativa de Chile.}
\item{region}{Nombre de la región.}
\item{provincia}{Provincia.}
\item{distrito}{Distrito.}
\item{comuna}{Comuna.}
\item{circu.elec}{Circunscripción electoral.}
\item{local}{Local de votación.}
\item{tipo.mesa}{tipo de mesa.}
\item{mesa}{Código identificador de la mesa.}
\item{mesas.fusionadas}{Mesas fusionadas.}
\item{nro.voto}{.}
\item{lista}{Lista política del candidato.}
\item{pacto}{Pacto político del candidato.}
\item{partido}{Partido político del candidato.}
\item{candidato}{Nombre del candidato.}
\item{votos}{Número total de votos.}
}
}
\source{
Los datos fueron obtenidos desde el servicio electoral de Chile (SERVEL)
en el web \url{https://www.servel.cl}. El nombre del archivo
era Resultados Primarias Presidenciales 2021 CHILE.xlsx, y fue descargado
el 4 de octubre del 2022. Los datos fueron ordenados, y solo aquellas
filas que contenian información en la columna 'votos' son parte de
la dataframe.
}
\usage{
data(primarias)
}
\description{
Datos a nivel de mesa de la votación para elecciones primarias para
Presidente de Chile en 2021.
}
\examples{
data(primarias)
head(primarias)
table(primarias$region)
table(primarias$region,primarias$candidato)
tapply(primarias$votos,primarias$candidato,sum)
}
\keyword{datasets}
