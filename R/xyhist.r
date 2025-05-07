#' The function produces a scatterplot between the 'y'-axis variable and
#'  the 'x'-axis variable, but also adding the marginal histograms
#'  for both variables.
#'
#' @details Both the response variable (Y-axis) and the predictor
#'  variable (X-axis) must be
#'  numeric.
#'
#' @title A scatterplot with marginal histograms
#' @param x A numeric vector representing the X-axis variable
#' @param y A numeric vector representing the Y-axis variable
#' @param col.x (optional) A string specifying the color of the histogram
#' of the X-variable. Default is "blue".
#' @param col.y (optional) A string specifying the color of the histogram
#' of the Y-variable. Default is "red".
#' @param ylab (optional) A string specifying Y-axis label. Default is "yvar".
#' @param xlab (optional) A string specifying X-axis label. Default is "xvar".
#' @param y.lim (optional) A vector of two elements with the limits of the
#'  Y-axis. Default is the range of the Y-variable.
#' @param x.lim (optional) A vector of two elements with the limits of the
#'  Y-axis. Default is the range of the X-variable.
#'
#' @references
#' - Salas-Eljatib C. 2021. Análisis de datos con el programa estadístico R:
#'  una introducción aplicada.
#' Ediciones Universidad Mayor. Santiago, Chile.
#'  \url{https://eljatib.com}
#' @return The function returns the above described graph.
#' @author Christian Salas-Eljatib
#' @export
#' @importFrom graphics hist
#'
#' @examples
#' data(treevolroble)
#' df <- treevolroble
#' head(df)
#' xyhist(x=df$dbh,y=df$toth)
#' xyhist(x=df$dbh,y=df$toth, xlab="Variable X",  ylab="Variable Y")
#' xyhist(x=df$dbh,y=df$toth, xlab="Variable X", ylab="Variable Y",
#'   col.x = "gray",col.y="white")
xyhist<-function(x=x, y=y, col.x="blue",col.y="red",
                 xlab=NULL, ylab=NULL,x.lim=NULL,y.lim=NULL){

  xvar<-x; yvar <- y;
  xrange <- c(0, max(xvar))
  yrange <- c(0, max(yvar))
  N=length(xvar)

  x<-(graphics::hist(xvar,plot=FALSE)$counts/N)*100;
  names(x) <- graphics::hist(xvar,plot=FALSE)$mids
  max.xHist<-max(x);

  op <- graphics::par( mfrow=c(1,1), mai=c(0.7,0.7,0.1,0.1),
             mgp=c(2.5,1,0),las=1 )
  on.exit(graphics::par(op))

  xhist <- graphics::hist(xvar,  plot=FALSE)
  yhist <- graphics::hist(yvar, plot=FALSE)
  top <- max(c(xhist$counts, yhist$counts))
  nf <- graphics::layout(matrix(c(2,0,1,3),2,2,byrow=TRUE), c(3,1), c(1,3),
                         TRUE)

  par1<-graphics::par(mar=c(3.5,3.5,1,1))

  graphics::plot(xvar, yvar, xlab=xlab, ylab=ylab,xlim = x.lim,ylim = y.lim)
  par2<-graphics::par(mar=c(0,3,1,1))

  graphics::barplot(xhist$counts, axes=FALSE, ylim=c(0, top), space=0,
          col=col.x)
  graphics::par(mar=c(3,0,1,1))
  graphics::barplot(yhist$counts, axes=FALSE, xlim=c(0, top), space=0,
          horiz=TRUE,  col=col.y)
}
