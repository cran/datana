#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# Function: "extractRight"                                      #
#                                                               #
# Created  by: Christian Salas-Eljatib                          #
# Date: dec23, 2022                                             # 
# Santiago, Chile                                               #
#---------------------------------------------------------------#
#' This function extracts the last n-characters of a string.
#' 
#' It extracts the last n-characters of a string from the right-hand side.
#'
#' @param fac is an object (vector or scalar) of class string or factor
#' @param n is the number of characters to be extracted of a the string given in 'fac'.
#'
#' @return This function returns an object having the last-n characters of the object 'fac'
#' @author Christian Salas-Eljatib.
#' @examples
#' 
#' last.names.id <- c("Stage-1924","Gregoire-1958","Robinson-1967")
#' extractRight(last.names.id,5)
#' years <- extractRight(last.names.id,4)
#' years
#'  
extractRight <- function(fac, n){
  substr(fac, nchar(fac)-n+1, nchar(fac))
}