\name{datana-package}
\alias{datana-package}
\alias{datana}
\docType{package}
\title{
\packageTitle{datana}
}
\description{
The datana package provides the data and functions that accompany the book "Análisis de datos con el programa estadístico R: una introducción aplicada" by Salas-Eljatib (2021, ISBN: 9789566086109). You can visit the book's website at \url{https://eljatib.com/rlibro}. 

Notice that every data frame (with columns in English) has an identical one but has column names in Spanish. You just need to add '2' (i.e., number two) after the data frame, and you will find the Spanish version of the data. For instance, the data frame 'pinaster' has column names in English, but 'pinaster2' has column names in Spanish. Both data frames have the same data.
%\packageDescription{datana}
}

\details{
The package contains several datasets for exploratory data analysis in various disciplines. Furthermore, datana provides functions as tools for descriptive statistics and plotting. 

To see the preferable citation of the package, type citation("datana").

%The DESCRIPTION file:
%\packageDESCRIPTION{datana}
%\packageIndices{datana}
%~~ An overview of how to use the package, including the most %important functions ~~
}

\author{
%\packageAuthor{datana}

%Maintainer: \packageMaintainer{datana}
The datana development team is led by Christian Salas-Eljatib (\url{https://eljatib.com}), and Nicolas Pino and Joaquin Riquelme-Alarcon have contributed as well. Many others have also helped by providing data frames and enhancing functions: see credits in help pages.
}

\references{

Salas-Eljatib C. 2021. Análisis de datos con el programa estadístico R: una introducción aplicada. Santiago, Chile: Ediciones Universidad Mayor. ISBN: 9789566086109. \url{https://tienda.zigzag.cl/9789566086109-analisis-de-datos-con-el-programa-estadistico-r.html}

}

\keyword{ package }
\examples{%#simple examples of the most important functions
##scatter-plot and marginal histograms
library(datana)
data(treevolroble)
df <- treevolroble
xyHist(x=df$dbh,y=df$htot, xlab="Variable X", ylab="Variable Y")

##scatter-plot and box-plots
data(fishgrowth)
df <- fishgrowth
xyBoxplot(x=df$length,y=df$scale)
}
