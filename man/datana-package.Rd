\name{datana-package}
\alias{datana-package}
\alias{datana}
\docType{package}
\title{
\packageTitle{datana}
}
\description{
The datana package provides the datasets and functions that accompany the book "Análisis de datos con el programa estadístico R: una introducción aplicada" by Salas-Eljatib (2021, ISBN: 9789566086109). You can visit the book's website at \url{https://eljatib.com/rlibro}.

Notice that every dataframe has a counterpart but has column names in Spanish. For instance, the dataframe 'crown' has column names in English, but 'crown2' has column names in Spanish. Both data frames have the same data.
%\packageDescription{datana}
}

\details{
The package contains several datasets for exploratory data analysis in an array of disciplines. Furthermore, datana provides functions as tools for descriptive statistics and plotting. 

To see the preferable citation of the package, type citation("datana").

%The DESCRIPTION file:
%\packageDESCRIPTION{datana}
%\packageIndices{datana}
%~~ An overview of how to use the package, including the most %important functions ~~
}

\author{
\packageAuthor{datana}

Maintainer: \packageMaintainer{datana}

Christian Salas-Eljatib is also indebted to several people who have contributed to individual data frames and functions: see credits in help pages.
}

\references{

Salas-Eljatib C. 2021. Análisis de datos con el programa estadístico R: una introducción aplicada. Santiago, Chile: Ediciones Universidad Mayor. ISBN: 9789566086109. \url{https://www.buscalibre.cl/libro-analisis-de-datos-con-el-programa-estadistico-r/9789566086109/p/53775485}

}
%https://tienda.zigzag.cl/9789566086109-analisis-de-datos-con-el-programa-estadistico-r.html

\keyword{ package }
\examples{%#simple examples of the most important functions
##scatter-plot and marginal histograms
data(treevolroble)
df <- treevolroble
xyhist(x=df$dbh,y=df$toth, xlab="Variable X",  ylab="Variable Y")

##scatter-plot and box-plots 
data(fishgrowth)
df <- fishgrowth
xyboxplot(x=df$length,y=df$scale)
}
