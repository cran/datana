% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-rendesc2.r
\docType{data}
\name{rendesc2}
\alias{rendesc2}
\title{Rendimiento escolar por estudiante en Chile 2024}
\format{
Variables se describen a continuación:
\describe{
\item{region}{Región de Chile del registro}
\item{comuna}{Comuna de la \code{region} correspondiente}
\item{mrun}{Identificador anónimo del estudiante}
\item{cod.depe}{Código de dependencia administrativa del establecimiento
(\code{1} = municipal, \code{2} = particular subvencionado, \code{3} = particular pagado)}
\item{gen.alu}{Género del estudiante (\code{1} = hombre, \code{2} = mujer)}
\item{edad.alu}{Edad del estudiante}
\item{prom.gral}{Promedio general de notas (escala de 1.0 a 7.0)}
\item{asistencia}{Porcentaje de asistencia anual del estudiante}
\item{sit.fin}{Situación final del estudiante (\code{P} = promovido, \code{R} = reprobado)}
}
}
\source{
Ministerio de Educación de Chile (MINEDUC), portal de datos abiertos:
\url{https://datosabiertos.mineduc.cl/}. Los datos fueron
digitados por Saúl Ketterer, estudiante del Prof. Christian Salas-Eljatib.
}
\usage{
data(rendesc2)
}
\description{
Base de datos con información anónima de rendimiento escolar por estudiante,
correspondiente al año 2024. Contiene 687033 observaciones de estudiantes
de Enseñanza Media Humanístico Científica modalidad Jóvenes, pertenecientes
a establecimientos municipales, particulares subvencionados y particulares
pagados. Cada fila representa un estudiante y sus características básicas,
incluyendo su promedio general, asistencia y situación final del curso.
}
\examples{
data(rendesc2)
head(rendesc2)
}
\references{
\itemize{
\item MINEDUC (2024). Datos de rendimiento por estudiante.
Subsecretaria de Educación.
}
}
\keyword{datasets}
