#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# Function: "xyHist"                                             #
# It creates a scattterplot with histograms in both axys      #
# How this function works?:                                            #
# > xyHist(x, y, col.x, col.y,...)   #
#                                                                      #
# Where:                                                               #
# - x: vector of variable X, or the predictor variable                                                   #
# - y: vector of variable Y, or the response variable
# - col.x: string with color for the histogram of variable X   #
# - col.y: string with color for the histogram of variable Y   #
# - ylab, xlab:  these options can be specified as usual in R          #
#                                                                      #
# Created  by: Christian Salas-Eljatib                                 #
# Date: oct8, 2021                                                   # 
# Santiago, Chile                                                      #
#----------------------------------------------------------------------#
#' xyHist: Function for a scatter-plot with marginal histograms
#'
#' It creates a scattter-plot with histograms in both axys.
#'
#' @param x A numeric vector representing the X-axis variable
#' @param y A numeric vector representing the Y-axis variable
#' @param col.x (optional) A string specifying the color of the histogram of the X-variable. Default is "blue".
#' @param col.y (optional) A string specifying the color of the histogram of the Y-variable. Default is "red". 
#' @param ylab (optional) A string specifying Y-axis label. Default is "yvar".
#' @param xlab (optional) A string specifying X-axis label. Default is "xvar".
#' @param y.lim (optional) A vector of two elements with the limits of the Y-axis. Default is the range of the Y-variable.
#' @param x.lim (optional) A vector of two elements with the limits of the Y-axis. Default is the range of the X-variable.
#'
#' @return Result of calculation
#' @rdname xyHist
#' @export
#' @importFrom graphics hist
#'
#' @examples library(datana)
#' data(treevolroble)
#' df <- treevolroble
#' head(df)
#' xyHist(x=df$dbh,y=df$htot) 
#' xyHist(x=df$dbh,y=df$htot, xlab="Variable X",  ylab="Variable Y") 
#' xyHist(x=df$dbh,y=df$htot, xlab="Variable X", ylab="Variable Y", 
#'   col.x = "gray",col.y="white")
xyHist<-function(x=x, y=y, col.x="blue",col.y="red",
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
  nf <- graphics::layout(matrix(c(2,0,1,3),2,2,byrow=TRUE), c(3,1), c(1,3), TRUE)
  
  par1<-graphics::par(mar=c(3.5,3.5,1,1))
  
  graphics::plot(xvar, yvar, xlab=xlab, ylab=ylab,xlim = x.lim,ylim = y.lim)
  par2<-graphics::par(mar=c(0,3,1,1))
  
  graphics::barplot(xhist$counts, axes=FALSE, ylim=c(0, top), space=0,
          col=col.x)
  graphics::par(mar=c(3,0,1,1))
  graphics::barplot(yhist$counts, axes=FALSE, xlim=c(0, top), space=0,
          horiz=TRUE,  col=col.y)
}