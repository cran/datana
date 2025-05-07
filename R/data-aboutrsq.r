#' About the R-Squared statistics: the Anscombe quartet dataset
#'
#' @description
#' A dataset that contains four pairs of columns with the same descriptive
#'  statistics; however, there is a difference when representing the points 
#'  through a graph.
#' @usage
#' data(aboutrsq)
#' @format The data frame contains four variables as follows:
#' \describe{
#' \item{X1}{Integers values that represent X-axis for Y1, Y2 and Y3 column}											
#' \item{Y1}{Float values that represent Y-axis for X1 column}
#' \item{Y2}{Float values that represent Y-axis for X1 column}
#' \item{Y3}{Float values that represent Y-axis for X1 column}
#' \item{X2}{Integers values that represent X-axis for Y4 column}
#' \item{Y4}{Float values that represent Y-axis for X2 column}
#'  }
#' @source 
#' Data were assembled by Dr Christian Salas-Eljatib (Santiago, Chile).
#' @references
#' Anscombe FJ. 1973. Graphs in statistical analysis. 
#' The American Statistician 27:17-21.
#'  \doi{10.2307/2682899}
#' @examples
#' data(aboutrsq)    
#' head(aboutrsq) 
'aboutrsq'
