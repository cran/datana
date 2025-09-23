#' The function creates a scatterplot with a superposing smoothed 
#' line as a way to reveal any potential pattern between the
#' variables.
#'
#' @details Notice that the smoothed-line is derived from a rather
#' standard algorithm (i.e., loess), implemented in the function
#' `smoothfit`, thus it is only an approximation.
#'
#' Commonly used graphical parameters are:
#' `col` The colors for lines and points. Multiple colors can be specified so that each point can be given its own color. If there are fewer colors than points they are recycled in the standard fashion. Lines will all be plotted in the first colour specified.
#' `bg` a vector of background colors for open plot symbols, see points. Note: this is not the same setting as par("bg").
#' `pch` a vector of plotting characters or symbols: see points.
#' `cex` a numerical vector giving the amount by which plotting characters and symbols should be scaled relative to the default.
#' This works as a multiple of par("cex"). NULL and NA are
#' equivalent to 1.0. Note that this does not
#' affect annotation: see below.
#' `lty` a vector of line types, see `par`.
#' `cex.main`, `col.lab`, `font.sub`, etc settings for main- and sub-title and axis annotation, see title and `par`.
#' `lwd` a vector of line widths, see `par`.
#' @title Function for building a scatterplot with a superposing
#' smoothed line
#'
#' @param x A numeric vector representing the X-axis variable.
#' @param y A numeric vector representing the Y-axis variable (response).
#' @param col A string specifying the color of the data points. The
#' default is "black".
#' @param linecol A string specifying the smooth line color. The
#' default is set to "red".
#' @param lwd the width of the smooth line to be drawn. The
#' default is set to `2`.
#' @param ylab (optional) A string specifying Y-axis label.
#' @param xlab (optional) A string specifying X-axis label.
#' @param ... other graphical parameters (see par and
#' section 'Details' below).
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
plotrend<-function(x=x, y=y, #col.dots="black",
                   col="black",linecol="red",lwd=2,
                   xlab=NULL, ylab=NULL,
                   ...){
  #df <- data.frame(x,y)
  if(is.expression(xlab)){has.xlab <-1} else {has.xlab <-0}
  if(is.expression(ylab)){has.ylab <-1} else {has.ylab <-0}

  if(has.xlab==0){  
      if(prod(is.na(xlab))){has.xlab <-0} else {has.xlab <-1}
      }
  ## has.xlab
  if(has.xlab==1){xlab.h<-xlab}
    if(has.xlab==0){xlab.h<-deparse(substitute(x))}#names(df)[1]}

 if(has.ylab==0){     
     if(prod(is.na(ylab))){has.ylab <-0} else {has.ylab <-1}
     }
   if(has.ylab==1){ylab.h<-ylab}
   if(has.ylab==0){ylab.h<-deparse(substitute(y))}#names(df)[2]}
  ## xlab.h;ylab.h
  ## if(prod(is.na(xlim))){has.xlim <-0} else {has.xlim <-1}
  ## has.xlim
  ## if(has.xlim==1){xlim.h<-xlim}
  ## if(has.xlim==0){xlim.h<-c(range(x)[1]*.9,range(x)[2]*1.1)}
  ## xlim.h
  ## if(prod(is.na(ylim))){has.ylim <-0} else {has.ylim <-1}
  ## if(has.ylim==1){ylim.h<-ylim}
  ## has.ylim
  ## if(has.ylim==0){ylim.h<-c(range(y)[1]*.9,range(y)[2]*1.1)}
  ## ylim.h
  
  #ylab.h
  graphics::plot(x, y, xlab = xlab.h, ylab = ylab.h,
                 #pch = pch.dots,#cex = cex.dots,
                 bty="l",#xaxs = "i",yaxs = "i",
                 col=col,#xlim=xlim.h,ylim=ylim.h,
                 las=1,...)
  smoothfit(x=x, y=y,linecol=linecol,lwd=lwd,...) 
}
#+===========================================================
