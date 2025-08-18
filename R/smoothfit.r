#' The function estimates a simple locally weighted regression.
#'  The main aim of the function is to be used to describe 
#' a graphical pattern between two variables in a scatterplot.
#'
#' @details Notice that both variables must be numeric.
#'
#' @title Function to produce a smooth curve over a scatterplot
#'
#' @param x A numeric vector representing the X-axis variable.
#' @param y A numeric vector representing the Y-axis variable (response).
#' @param linecol A string specifying the smooth line color. The default
#'  is set to "blue".
#' @param lty The type of line to be draw according to the R plot
#' parameters. By default is set to `2` which is a dashed line.
#' @param lwd The wide of the line to be draw according to the
#' R plot parameters. By default is set to `1`.
#' @references
#' - Weisberg S. Applied Linear Regression. 3rd edition. Wiley, New
#' York, NY, USA. 310 p.
#' @return The function returns the above described curve, but in
#' order to be used, you must first to create the scatterplot.
#' @author A somehow related version of this function was first
#' created by Prof. Timothy Gregoire (Yale University), but the
#' current version is due to Christian Salas-Eljatib.
#' @examples
#' df <- datana::annualppCities
#' # Example 1
#' plot(annual.pp~year, data=df, col="gray")
#' smoothfit(x=df$year, y=df$annual.pp)
#' # Example 2
#' df2<-subset(df,city=="Chillan")
#' plot(annual.pp~year, data=df2, col="gray")
#' smoothfit(x=df2$year, y=df2$annual.pp, linecol="red",lwd=3)
#' @rdname smoothfit
#' @export
#'
##+===========================================================
smoothfit <- function(x=x,y=y, linecol="blue", lty=2,lwd=1)
  {  nonparmfit <- stats::fitted(stats::loess( y~x ) )
  xordered <- order(x)
  graphics::lines(x[xordered], nonparmfit[xordered], col=linecol, lty=lty,lwd=lwd)
}
#+===========================================================
