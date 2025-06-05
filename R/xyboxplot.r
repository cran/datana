#' The function creates a scatterplot with superposing boxplots
#' for the Y-axis variable. To a scatterplot between
#' a response variable 'y' and a predictor variable 'x',
#'  this function superposes boxplots of the response by groups of the
#'  predictor variable.
#'  The main aim of the above described graph is to get a sense of the
#'   distribution of the response variable depending upon
#' the  predictor variable.
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
#' @param x A numeric vector representing the X-axis variable.
#' @param y A numeric vector representing the Y-axis variable (response).
#' @param try.x.ascategory A logical statement, if set to TRUE, the X-axis variable
#' will be treated as categorical for the drawing od the boxplots. The default
#' is set to FALSE.
#' @param ylab (optional) A string specifying Y-axis label.
#' @param xlab (optional) A string specifying X-axis label.
#' @param col.dots A string specifying the dot colors. The default is 
#' set to "blue".
#' @param transp.dots A numeric value to be used as transparency for the
#' dots of the figure to be produced. The defauls is set to 0.2
#' @param transp.boxp A numeric value to be used as transparency for the
#' boxpot of the figure to be produced. The defauls is set to 0.1 
#'
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
#' @export
#' @importFrom ggplot2 "ggplot"
#'
#' @examples
#' df <- datana::fishgrowth
#' xyboxplot(x=df$length,y=df$scale)
#' xyboxplot(x=df$length,y=df$scale,col.dots = "red",
#' xlab="Variable X")
#' xyboxplot(x=df$length,y=df$scale,xlab="Variable X")
#' xyboxplot(x=df$length,y=df$scale,xlab="Variable X",
#' transp.dots = 0.4)
#' xyboxplot(x=df$age,y=df$length,try.x.ascategory = TRUE)
#+===========================================================
xyboxplot<-function(x=x, y=y, col.dots="blue",
                 xlab=NULL, ylab=NULL,try.x.ascategory=FALSE,
                 transp.dots=0.2,transp.boxp=0.1){
    ## ## ##@@@@@@@@@@@ ---- Internal review ---- @@@@@@@@@@@@
    ## ## Firstly, source to the function
    ## ## Secondly, run the following example
    ## db <- datana::fishgrowth;x=db$length;y=db$scale;
    ## transp.dots=0.2;transp.boxp=0.1;col.dots="blue";xlab="xx";ylab="yy"
    ## try.x.ascategory=FALSE
    ## xyboxplot(x=x,y=y)
    ## ## ## ## Thirdly, run a second example
    ## db <- datana::fishgrowth;y=db$length;x=db$age;
    ## try.x.ascategory=TRUE
    ## xyboxplot(x=x,y=y,try.x.ascategory = TRUE)
    ## ## ##@@@@@@@@@@@ ---- End of: internal review ---- @@@@@@@@@@@@
  df <- data.frame(x,y)
  xrange <- x;  yrange <- y

  cls.x <- stats::quantile(df$x, seq(.1, .9, by=.1))

  x.class <- findInterval(df$x, cls.x)
  df$x.class <- x.class
  df$x.class <- as.factor(df$x.class)
  
  if(try.x.ascategory==FALSE){df$x.class<-df$x.class}else{df$x.class<-df$x}
  #  df$x.class <- as.factor(df$x.class)
  #  utils::globalVariables(c("x.class"))
    
  p <- ggplot2::ggplot(df, ggplot2::aes(x, y, group=x.class))+
    ggplot2::geom_point(alpha = transp.dots,col=col.dots)+
    ggplot2::geom_boxplot(alpha = transp.boxp)
  p + ggplot2::theme(legend.position = "none")  + 
    ggplot2::xlab(xlab) + ggplot2::ylab(ylab) +
    ggplot2::theme(panel.grid.major = ggplot2::element_blank(),
                   panel.grid.minor = ggplot2::element_blank(),
                   panel.background = ggplot2::element_blank(),
        axis.line = ggplot2::element_line(colour = "black"))
}
#+===========================================================
