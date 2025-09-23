#' Creates a scatterplot between the observed values and
#' the predicted ones from a fitted model. 
#'
#' @details Notice that the straight-line is draw using
#' an intercept=0, and a slope=1. 
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
#' @title Observed versus predicted values plot.
#'
#' @param y.obs observed values of the variable of interest
#' @param y.pred predicted values of the variable of interest
#' @param col A string specifying the color of the data points. The
#' default is "black".
#' @param linecol A string specifying the straight line color. The
#' default is set to "red".
#' @param ylab (optional) A string specifying Y-axis label.
#' @param xlab (optional) A string specifying X-axis label.
#' @param ylim (optional) A range (min,max) for the limits
#' of the Y-axis. By default is set to be 0 and the maximum
#' value of the both observed and predicted values, multiplied by
#' the option `coef.max.val`.  
#' @param xlim (optional) A range (min,max) for the limits
#' of the X-axis.  By default is set to be 0 and the maximum
#' value of the both observed and predicted values, multiplied by
#' the option `coef.max.val`. 
#' @param coef.max.val (optional) A number to be used for
#' multiplying the maximum vale of the variable (either the
#' observed or the predicted values). By default is set to `1.1`.
#' @param eng logical; if `TRUE` (by default), the language of the
#' statistics will be in English; if "FALSE" will be in Spanish.
#' @param ... other graphical parameters (see par and
#' section 'Details' below).
#' @references
#' - Salas-Eljatib C. 2021. Análisis de datos con el programa
#' estadístico R:
#' una introducción aplicada.
#' Ediciones Universidad Mayor. Santiago, Chile. 170 p.
#'  \url{https://eljatib.com}
#' @references
#' - Piñeiro G, Perelman S, Guerschman JP, Paruelo JM. 2008. 
#' How to evaluate models: Observed vs. predicted or
#' predicted vs. observed? Ecological Modelling 216(3-4):316-322
#'  \doi{10.1016/j.ecolmodel.2008.05.006}
#' @return The function returns the above described graph.
#' @author Christian Salas-Eljatib
#' @examples
#' df <- datana::maple
#' head(df)
#' m1<-lm(leaf~dbh,data=df)
#' # Example 1, a residual plot
#' obspredplot(y.obs=df$leaf,y.pred=fitted(m1))
#' @rdname obspredplot
#' @export
#' 
##+===========================================================
obspredplot<-function(y.obs=y.obs,y.pred=y.pred,
           col="black", linecol="red",eng=TRUE,xlab=NULL, ylab=NULL,
                      xlim=NULL,ylim=NULL,coef.max.val=1.1,
           ...){
  max.val<-max(c(y.obs,y.pred));  
  range.val<-c(0,max.val*coef.max.val)
    
  if(is.expression(xlab)){has.xlab <-1} else {has.xlab <-0}
  if(is.expression(ylab)){has.ylab <-1} else {has.ylab <-0}

  if(has.xlab==0){  
      if(prod(is.na(xlab))){has.xlab <-0} else {has.xlab <-1}
      }

  if(has.xlab==1){xlab.h<-xlab}
    if(has.xlab==0){xlab.h<-"Predicted values"}

 if(has.ylab==0){     
     if(prod(is.na(ylab))){has.ylab <-0} else {has.ylab <-1}
     }
   if(has.ylab==1){ylab.h<-ylab}
   if(has.ylab==0){ylab.h<-"Observed values"}

    if(eng==FALSE){xlab.h<-"Valores predichos";
        ylab.h<-"Valores observados"}

    if(prod(is.na(xlim))){has.xlim <-0} else {has.xlim <-1}
    if(prod(is.na(ylim))){has.ylim <-0} else {has.ylim <-1}

    if(has.xlim==0){xlim.h<-range.val}
    if(has.ylim==0){ylim.h<-range.val}
    
  graphics::plot(y.pred, y.obs, bty="l",xaxs="i",yaxs="i",
     las=1,xlab = xlab.h,ylab=ylab.h,col=col,
     xlim=xlim.h,ylim=ylim.h,...)
    graphics::abline(0,1,col=linecol,...) 
}
#+===========================================================
