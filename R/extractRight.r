#' Function to extract the last n-characters of a string from the
#' right-hand side.
#'
#' @details It is specially set to arrange data vector
#' having alphanumeric format.
#' 
#' @title Extracts the last n-characters of a string
#' @param fac is an object of class string or factor
#' @param n is the number of characters to be deleted of a the
#' string given in 'fac'.
#'
#' @return This function returns an object having the last n
#' characters from the right-hand side.
#' @author Christian Salas-Eljatib
#' @references
#' Salas-Eljatib, C. 2021. Análisis de datos con el programa
#' estadístico R: una introducción
#'  aplicada. Ediciones Universidad Mayor, Santiago, Chile. 170 p. 
#'  \url{https://eljatib.com/rlibro}
#' @examples
#'
#' last.names.id <- c("Stage-1924","Gregoire-1958","Robinson-1967")
#' extractRight(last.names.id,4)
#' extractRight(last.names.id,2)
#' @rdname extractRight
#' @export
#' 
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
extractRight <- function(fac, n){
  substr(fac, nchar(fac)-n+1, nchar(fac))
}
