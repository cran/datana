#' The function creates a scatterplot with superposing boxplots for the Y-axis
#'  variable. To a
#'  simple scatterplot between the response variable 'y' and the predictor
#'  variable 'x',
#'  this function superposes boxplots of the response by groups of the
#'  predictor variable.
#'  The main aim of the above described graph is to get a sense of the
#'   distribution of the
#'  response variable depending upon the  predictor variable.
#'
#' @details Notice that the superposing boxplots for the Y-axis variable are
#' computed
#'  by grouping the X-axis variable in 10 classes. Those classes are set by
#'   computing the ten percentiles
#'  of the X-axis variable, therefore each group has the same number of
#'   observations.
#'
#' @title Function for building a scatterplot with superposing boxplots
#'
#' @param x A numeric vector representing the time variable (X-axis).
#' @param y A numeric vector representing the response variable (Y-axis).
#' @param col.dots (optional) A string specifying the dot colors.
#' Default is "blue".
#' @param ylab (optional) A string specifying Y-axis label.
#' @param xlab (optional) A string specifying X-axis label.
#'
#' @references
#' - Salas-Eljatib C. 2021. Análisis de datos con el programa estadístico R:
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
#' @export
#' @importFrom ggplot2 "ggplot"
#'
#' @examples
#' data(fishgrowth)
#' df <- fishgrowth
#' xyboxplot(x=df$age,y=df$length)
#' xyboxplot(x=df$age,y=df$length)
xyboxplot<-function(x=x, y=y, col.dots="blue",
                 xlab=NULL, ylab=NULL){

  df <- data.frame(x,y)
  xrange <- x;  yrange <- y

  cls.x <- stats::quantile(df$x, seq(.1, .9, by=.1))
  df$x.class <- findInterval(df$x, cls.x)
  df$x.class <- as.factor(df$x.class)

  p <- ggplot2::ggplot(df, ggplot2::aes(x, y, group=df$x.class))+#, fill="green")) +
    ggplot2::geom_point(alpha = 0.10,col=col.dots)+
    ggplot2::geom_boxplot(alpha = 0.10)
  p + ggplot2::theme(legend.position = "none")  + #xlab(d.lab) + ylab(v.lab) +
    ggplot2::xlab(xlab) + ggplot2::ylab(ylab) +
    ggplot2::theme(panel.grid.major = ggplot2::element_blank(),
                   panel.grid.minor = ggplot2::element_blank(),
                   panel.background = ggplot2::element_blank(),
                   axis.line = ggplot2::element_line(colour = "black"))
}
#---------------------------
