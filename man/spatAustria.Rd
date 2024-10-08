% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/describe_datas.R
\docType{data}
\name{spatAustria}
\alias{spatAustria}
\title{Tree locations for several plots of Norway spruce in Austria}
\format{
Contains cartesian position of trees, and covariates, in sample plots, as follows:
\describe{
\item{plot.code}{Plot identificator}
  \item{tree.code}{Tree identificator}
\item{spp.name}{species abreviation as follows: PCAB=Picea abies, FASY= Fagus sylvatica, QCPE=Quercus petraea , PNSY= Pinus Sylvestris, LADC=Larix decidua}
\item{x.coord}{Cartesian position in the X-axis, in m}
\item{y.coord}{Cartesian position in the Y-axis, in m}
\item{year}{Measurement year}
\item{dbh}{diameter at breast-height, in cm}
 }
}
\usage{
data(spatAustria)
}
\description{
The Cartesian position, species, year, ID tree , and diameter of trees within a plot were measured.
}
\examples{
data(spatAustria)    
head(spatAustria)
pos<-spatAustria
oldpar<-par(mar=c(4,4,0,0))
bord<-data.frame(x=c(min(pos$x.coord),max(pos$x.coord),min(pos$x.coord),max(pos$x.coord)),
               y=c(min(pos$y.coord),min(pos$y.coord),max(pos$y.coord),min(pos$y.coord)))
plot(bord,type="n", xlab="x (m)", ylab="y (m)", asp=1, bty='n')
points(pos$x.coord,pos$y.coord,col=pos$plot.code,cex=0.5) 
par(oldpar)
}
\references{
- Kindermann G. Kristofel F, Neumann M, Rossler G, Ledermann T & Schueler. 2018. 109 years of forest growth measurements from
 individual Norway spruce trees. Sci. Data 5:180077 \doi{10.1038/sdata.2018.77}
}
\keyword{datasets}
