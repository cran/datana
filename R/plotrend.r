#' The function creates a scatterplot with a superposing smoothed 
#' line as a way to reveal any potential pattern between the
#' variables.
#'
#' @details Notice that the smoothed-line is derived from a rather
#' standard algorithm (i.e., loess), implemented in the funcion
#' `smoothfit`, thus it is only an approximation.
#'
#' @title Function for building a scatterplot with a superposing
#' smoothed line
#'
#' @param x A numeric vector representing the X-axis variable.
#' @param y A numeric vector representing the Y-axis variable (response).
#' @param ylab (optional) A string specifying Y-axis label.
#' @param xlab (optional) A string specifying X-axis label.
#' @param ylim (optional) A numeric vector having the minimum and maximum, 
#' respectively for the Y-axis variable.
#' @param xlim (optional) A numeric vector having the minimum and maximum, 
#' respectively for the X-axis variable.
#' @param col.dots A string specifying the dot colors. The default
#'  value is "black".
#' @param linecol A string specifying the smooth line color. The default
#'  is set to "blue".
#' @param cex.dots A numeric factor altering the size of the dots. The 
#' default value is 0.7.
#' @param pch.dots A numeric factor altering the shape of the dots.
#' @references
#' - Salas-Eljatib C. 2021. Análisis de datos con el programa
#' estadístico R:
#' una introducción aplicada.
#' Ediciones Universidad Mayor. Santiago, Chile. 170 p.
#'  \url{https://eljatib.com}
#' @references
#' - Salas C, Stage AR, and Robinson AP. 2008. Modeling effects of
#' overstory density and competing
#' vegetation on tree height growth. Forest Science 54(1):107-122.
#'  \doi{10.1093/forestscience/54.1.107}
#' @return The function returns the above described graph.
#' @author Christian Salas-Eljatib
#' @examples
#' df <- datana::maple
#' head(df)
#' m1<-lm(leaf~dbh,data=df)
#' # Example 1, a residual plot
#' plotrend(x=df$dbh,y=residuals(m1))
#' abline(h=0)
#' @rdname plotrend
#' @export
#' 
##+===========================================================
plotrend<-function(x=x, y=y, col.dots="black",linecol="blue",
  xlab=NULL, ylab=NULL,pch.dots=19,xlim=NA,ylim=NA,cex.dots=1){
  df <- data.frame(x,y)
  
  if(prod(is.na(xlab))){has.xlab <-0} else {has.xlab <-1}
  has.xlab
  if(has.xlab==1){xlab.h<-xlab}
  if(has.xlab==0){xlab.h<-names(df)[1]}
  if(prod(is.na(ylab))){has.ylab <-0} else {has.ylab <-1}
  if(has.ylab==1){ylab.h<-ylab}
  if(has.ylab==0){ylab.h<-names(df)[2]}
  xlab.h;ylab.h
  if(prod(is.na(xlim))){has.xlim <-0} else {has.xlim <-1}
  has.xlim
  if(has.xlim==1){xlim.h<-xlim}
  if(has.xlim==0){xlim.h<-c(range(df$x)[1]*.9,range(df$x)[2]*1.1)}
  xlim.h
  if(prod(is.na(ylim))){has.ylim <-0} else {has.ylim <-1}
  if(has.ylim==1){ylim.h<-ylim}
  has.ylim
  if(has.ylim==0){ylim.h<-c(range(df$y)[1]*.9,range(df$y)[2]*1.1)}
  ylim.h
  
  ylab.h
 graphics::plot(df$x, df$y, xlab = xlab.h, ylab = ylab.h, pch = pch.dots, 
         cex = cex.dots,bty="l",xaxs = "i",yaxs = "i",
    col=col.dots,
    xlim=xlim.h,ylim=ylim.h,las=1)
  smoothfit(x=df$x, y=df$y,linecol=linecol,lwd=3) 
}
#+===========================================================
