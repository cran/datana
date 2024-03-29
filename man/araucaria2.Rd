% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/describe_datas.R
\docType{data}
\name{araucaria2}
\alias{araucaria2}
\title{Variables de estado de rodal para parcelas de muestreo en bosques de Araucaria araucana el sur de Chile.}
\format{
Contiene las siguientes variables a nivel de parcela:
\describe{
  \item{rodal}{Número del rodal.}
  \item{parcela}{Número identificador de la parcela de muestreo.}
  \item{x.utm}{Coordenada UTM en  el ejex-X, en km}
  \item{y.utm}{Coordenada UTM en  el ejex-Y, en km}
    \item{pendiente}{Pendiente, en \%}
\item{exposicion}{Exposición, en grados.}
    \item{altitud}{Altitud, en msnm}    
  \item{nha}{Densidad, en arb/ha}
 \item{gha}{Área basal, en m\eqn{^{2}}{^2}/ha}
\item{hdom}{Altura dominante, en m}
\item{vha}{Volumen bruto, en m\eqn{^{3}}{^3}/ha} 
 \item{dg}{Diámetro medio cuadrático, en cm}
 }
}
\source{
Los datos a nivel de árbol fueron cedidos por el Dr Nelson Ojeda (Universidad de La Frontera, Temuco, Chile) y
más antecedentes pueden encontrarse en Salas et al (2010).
}
\usage{
data(araucaria2)
}
\description{
Variables de estado de rodal para parcelas de muestreo establecidas en bosques de Araucaria araucana  
 en el sur de Chile.  Estas variables se basan en mediciones a nivel de árbol
 realizadas en parcelas de muestreo de superficie de 1000 m\eqn{^{2}}{^2}.  Hay dos rodales y las mediciones
 fueron realizadas en el 2009.
}
\examples{
head(araucaria2) 
tapply(araucaria2$parcela,araucaria2$rodal,length)
}
\references{
Salas C, Ene L, Ojeda N, Soto H. 2010. Metodos estadísticos paramétricos y no paramétricos
   para predecir variables de rodal basados en Landsat ETM+: una comparación en un bosque
    de Araucaria araucana en Chile. Bosque 31(3):179-194.
}
\keyword{datasets}
