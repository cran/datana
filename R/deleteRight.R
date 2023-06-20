#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# Function: "deleteRight"                                      #
#                                                                    #
# Created  by: Christian Salas-Eljatib                               #
# Date: dec23, 2022                                                   # 
# Santiago, Chile                                                    #
#--------------------------------------------------------------------#
#' This function deletes the last n-characters of a string.
#' 
#' It deletes the last n-characters of a string from the right-hand side.
#'
#' @param fac is an object of class string or factor
#' @param n is the number of characters to be deleted of a the string given in fac.
#'
#' @return This function returns an object having n-less characters from the right-hand side.
#' @author Christian Salas-Eljatib.
#' @examples
#' 
#' last.names.id <- c("Stage-1924","Gregoire-1958","Robinson-1967")
#' deleteRight(last.names.id,5)
#' deleteRight(last.names.id,4)
#' 
deleteRight <- function(fac, n){
  substr(fac, nchar(1), nchar(fac)-n)
}