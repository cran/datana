% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/describe_datas.R
\docType{data}
\name{treevol}
\alias{treevol}
\title{Diameter, height and volume for Black Cherry Trees}
\format{
A data frame with 31 observations and three variables
\describe{
\item{dbh}{Diameter at breast height, in cm}
\item{htot}{Total height, in m}
\item{volume}{Volume of timber, in m\eqn{^{3}}{^3}}
 }
}
\source{
Ryan, T. A., Joiner, B. L. and Ryan, B. F. (1976) The Minitab Student Handbook. Duxbury Press.
}
\usage{
data(treevol)
}
\description{
This data set provides measurements of the diameter, height and volume
 of timber in 31 felled black cherry trees. It is a slight modification
  of the dataframe 'trees' of the 'datasets' R package.
}
\examples{
pairs(treevol, panel = panel.smooth, main = "treevol data frame")
plot(volume ~ dbh, data = treevol, log = "xy")
coplot(log(volume) ~ log(dbh) | htot, data = treevol,
       panel = panel.smooth)
summary(m1 <- lm(log(volume) ~ log(dbh), data = treevol))
summary(m2 <- update(m1, ~ . + log(htot), data = treevol))
anova(m1,m2)
}
\keyword{datasets}
