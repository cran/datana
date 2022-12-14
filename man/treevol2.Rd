% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/describe_datas.R
\docType{data}
\name{treevol2}
\alias{treevol2}
\title{Volumen, altura, y diametro para arboles de Black Cherry}
\format{
Datos con 31 observaciones y tres variables
\describe{
\item{dap}{diametro a la altura del pecho, en cm}
\item{htot}{altural total, en m}
\item{vtot}{volumen total, en m3}
 }
}
\source{
Ryan, T. A., Joiner, B. L. and Ryan, B. F. (1976) The Minitab Student Handbook. Duxbury Press.
}
\usage{
data(treevol2)
}
\description{
Estos datos provienen de mediciones de volumen, altura y diametro en 31 arboles volteados de black cherry (Prunus serotina).
Son una modificacion la dataframe 'trees' del paquete 'datasets' de R.
}
\examples{
pairs(treevol2, panel = panel.smooth, main = "treevol dataframe")
plot(vtot ~ dap, data = treevol2, log = "xy")
coplot(log(vtot) ~ log(dap) | htot, data = treevol2,
       panel = panel.smooth)
summary(m1 <- lm(log(vtot) ~ log(dap), data = treevol2))
summary(m2 <- update(m1, ~ . + log(htot), data = treevol2))
anova(m1,m2)
}
\keyword{datasets}
