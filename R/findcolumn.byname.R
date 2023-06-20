#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# Function: "findcolumn.byname"                                      #
#                                                                    #
# Created  by: Christian Salas-Eljatib                               #
# Date: dec23, 2022                                                   # 
# Santiago, Chile                                                    #
#--------------------------------------------------------------------#
#' A function that finds the position of a specific variable.
#'
#' This function finds the column-position of a specified column-name in an object (either a data frame or vector).
#' 
#' @param data a dataframe containing variables as columns
#' @param col.name is a string specifying the name of the variable 
#'
#' @return The number representing the column position in the dataframe of the requested 
#' column-name. It can also be used for several names, thus, will return a vector of numbers. 
#' @author Christian Salas-Eljatib
#' @note It can be used for a vector of specified column-names as well.
#' @examples
#' data(deadForestCA)
#' df <- deadForestCA
#' names(df)
#' findColumn.byname(df, "Defz2")
#' findColumn.byname(df, c("Defnorm","mort.bin"))
#'   
findColumn.byname<-function(data=data,col.name=col.name){
  class.obj <- class(data)
  if(class.obj=="data.frame"){
    output <- which(colnames(data) %in% c(col.name))
    output
  }else{output <- match(col.name,data)
  output}
}
