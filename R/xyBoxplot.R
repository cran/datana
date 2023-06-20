#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# Function: "xyBoxplot"                                             #
# It creates a scattterplot with boxplots for the Y variable
#  depending on ranges of the X-varibale      #
# How this function works?:                                            #
# > xyBoxplot(x, y, col.dots,...)   #
#                                                                      #
# Where:                                                               #
# - x: vector of variable X, or the predictor variable                                                   #
# - y: vector of variable Y, or the response variable
# - col.dots: string with color for the dots of the scatterplot X   #
#  - ylab, xlab:  these options can be specified as usual in R          #
#                                                                      #
# Created  by: Christian Salas-Eljatib                                 #
# Date: jun9, 2021                                                   # 
# Santiago, Chile                                                      #
#----------------------------------------------------------------------#
#' Function for a scatter-plot with boxplots
#'
#' This function creates a scatter-plot with boxplots for the Y-axis variable.
#'
#' @param x A numeric vector representing the X-axis variable
#' @param y A numeric vector representing the Y-axis variable
#' @param col.dots (optional) A string specifying the dot colors. Default is "blue".
#' @param ylab (optional) A string specifying Y-axis label.
#' @param xlab (optional) A string specifying X-axis label.
#'
#' @return Result of calculation
#' @export
#' @importFrom ggplot2 "ggplot"
#'
#' @examples library(datana)
#' data(fishgrowth)
#' df <- fishgrowth
#' xyBoxplot(x=df$age,y=df$length)
#' xyBoxplot(x=df$age,y=df$length,col="red")
xyBoxplot<-function(x=x, y=y, col.dots="blue",
                 xlab=NULL, ylab=NULL){
  
  df <- data.frame(x,y)
  xrange <- x;  yrange <- y
  x.class <- NULL
  cls.x <- stats::quantile(df$x, seq(.1, .9, by=.1))
  df$x.class <- base::findInterval(df$x, cls.x)
  df$x.class <- base::as.factor(df$x.class)
  
  p <- ggplot2::ggplot(df, ggplot2::aes(x, y, group=x.class))+#, fill="green")) + 
    ggplot2::geom_point(alpha=0.10,col=col.dots)+ ggplot2::geom_boxplot(alpha=0.10) 
  p + ggplot2::theme(legend.position = "none")  + 
    ggplot2::xlab(xlab) + ggplot2::ylab(ylab) +
    ggplot2::theme(panel.grid.major = ggplot2::element_blank(), panel.grid.minor = ggplot2::element_blank(),
     panel.background = ggplot2::element_blank(), axis.line = ggplot2::element_line(colour = "black"))
}