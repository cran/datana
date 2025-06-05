#' Function to delete the last n-characters of a string from
#' the left-hand side.
#'
#' @details It is specially set to arrange data vector having
#' alphanumeric 
#' format.
#' 
#' @title Deletes the first  n-characters of a string
#' @param fac is an object of class string or factor
#' @param n is the number of characters to be deleted of a the
#' string given in 'fac'.
#'
#' @return This function returns an object having n-less characters
#' from the left-hand side.
#' @author Christian Salas-Eljatib
#' @references
#' Salas-Eljatib, C. 2021. Análisis de datos con el programa
#' estadístico R: una introducción
#'  aplicada. Ediciones Universidad Mayor, Santiago, Chile. 170 p. 
#'  \url{https://eljatib.com/rlibro}
#' @examples 
#'
#' plot.id <- c("BNE1","BNE2","PLE1")
#' deleteLeft(plot.id,1)
#' deleteLeft(plot.id,2)
#' deleteLeft(plot.id,3)
#' @rdname deleteLeft
#' @export
#' 
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
deleteLeft <- function(fac, n){
    substr(fac, n+1, nchar(fac))
}
