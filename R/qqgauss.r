#' The function creates a QQ plot for a given random
#' variable `y` and a Gaussian probability density function.
#' This graph is a scatterplot between the sample
#' quantiles of the data and the theoretical quantiles,
#' following the Gaussian pdf.
#'
#' @details Notice that the reference pdf model is
#' the Gaussian one, i.e., uses the `qnorm()` function.
#'
#' @title Function for producing a QQ plot for a Gaussian
#' probability density function.
#'
#' @param y A numeric vector representing the Y-random variable 
#' @param linecol A string specifying the 1:1 straight-line color.
#' The default is set to "red".
#' @param ylab (optional) A string specifying Y-axis label.
#' If not provide it, uses the default setting. 
#' @param xlab (optional) A string specifying X-axis label.
#' If not provide it, uses the default setting. 
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
#' @return The function returns the above described graph.
#' @author Christian Salas-Eljatib
#' @examples
#' df <- datana::maple
#' head(df)
#' m1<-lm(leaf~dbh,data=df)
#' # Example 1, a residual plot
#' qqgauss(residuals(m1))
#' @rdname qqgauss
#' @export
#' 
##+===========================================================
qqgauss<-function(y=y, 
                  linecol="red",
                  xlab=NULL, ylab=NULL,eng=TRUE,
                   ...){

xlab.h<-c("Theoretical quantiles");ylab.h<-c("Sample quantiles")
    if(eng==FALSE){
  xlab.h<-c("Cuantiles te\u00F3ricos");ylab.h<-c("Cuantiles muestrales")
  }
    
  stats::qqnorm(y,las=1,bty="l",main="",
          ylab=ylab.h,xlab = xlab.h,...)
  stats::qqline(y, col = linecol,...)
}
#+===========================================================
