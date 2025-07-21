#' Function to upper-case the first n-characters of a string from
#' the left-hand side.
#'
#' @details It is specially set to arrange data vector having
#' alphanumeric (i.e., letters) format.
#' 
#' @title convert the first n-characters of a string to upper-case
#' letters.
#' @param fac is an object of class string or factor
#' @param n is the number of characters to be converted of a the
#' string given in `fac`.
#'
#' @return This function returns an object having the first
#' n-characters from the left-hand side in upper-case.
#' @author Christian Salas-Eljatib
#' @references
#' Salas-Eljatib, C. 2021. Análisis de datos con el programa
#' estadístico R: una introducción
#'  aplicada. Ediciones Universidad Mayor, Santiago, Chile. 170 p. 
#'  \url{https://eljatib.com/rlibro}
#' @examples 
#'
#' fac.x<-"willkommen"
#' upperleft(fac.x)
#' upperleft(fac.x,n = 2)
#' upperleft(fac.x,2)
#' upperleft(fac.x,3)
#' #A longer vector of characters
#' fac.x<-c("willkommen","welcome","bem-vindo","bievenido")
#' upperleft(fac.x,1)
#' @rdname upperleft
#' @export
#' 
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
upperleft <- function(fac,n=1) {
  substr(fac, 1, n) <- toupper(substr(fac, 1, n))
  fac
}
