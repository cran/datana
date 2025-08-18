#' Function to get the first letter only as upper case of a string.
#'
#' @details It is specially set to arrange an data vector having
#' alphanumeric format.
#' 
#' @title Convert 
#' @param fac is an object of class string or factor
#'
#' @return This function returns an object having the resulting
#' string.
#' @author Christian Salas-Eljatib
#' @references
#' Salas-Eljatib, C. 2021. Análisis de datos con el programa
#' estadístico R: una introducción
#'  aplicada. Ediciones Universidad Mayor, Santiago, Chile. 170 p. 
#'  \url{https://eljatib.com/rlibro}
#' @examples
#' singleupp("PETER")
#' cities <- c("bogota","lima","new york","santiago","madrid")
#' singleupp(cities)
#' @rdname singleupp
#' @export
#' 
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
singleupp <- Vectorize(function(fac){
    x<-tolower(fac)
    s <- strsplit(x, " ")[[1]]
    paste(toupper(substring(s, 1,1)), substring(s, 2), sep="", collapse=" ")})

