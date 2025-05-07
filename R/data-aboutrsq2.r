#' Sobre el estadístico R2: los datos del cuarteto de Anscombe  
#'
#' @description
#' Dataset que contiene cuatro pares de columnas con la mismos 
#' estadísticos descriptivos,
#'  sin embargo, si existe diferencia al representar los puntos
#'   mediante un gráfico. 
#' @usage
#' data(aboutrsq2)
#' @format Variables se describen a continuación::
#' \describe{
#' \item{X1}{Valores enteros que representan el eje X para las 
#' columnas Y1, Y2 e Y3}								
#' \item{Y1}{Valores flotantes que representan el eje Y para la columna X1}
#' \item{Y2}{Valores flotantes que representan el eje Y para la columna X1}
#' \item{Y3}{Valores flotantes que representan el eje Y para la columna X1}
#' \item{X2}{Valores enteros que representan el eje X para las columnas Y4}
#' \item{Y4}{Valores flotantes que representan el eje Y para la columna X2}
#'  }
#' @source 
#' Datos fueron contribuidos por el Prof. Christian Salas-Eljatib 
#' (Universidad de Chile, Santiago, Chile).
#' @references
#' Anscombe FJ. 1973. Graphs in statistical analysis.
#'  The American Statistician 27:17-21. 
#'  \doi{10.2307/2682899}
#' @examples
#' data(aboutrsq2)    
#' head(aboutrsq2) 
'aboutrsq2'
