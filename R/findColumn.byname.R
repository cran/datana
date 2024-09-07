#' Sometimes in data manipulation we face the task of locating the position
#' of a specific variable within a dataframe.  The function finds the position in 
#' which a column name is within an object.
#' 
#' @details Although the function finds the position of a specific variable, can also 
#' be used for more than one variable.
#'  
#' @title Finds the position of a specific variable.
#' @param data is a dataframe
#' @param col.name is a string specifying the name of the variable 
#'
#' @return This function returns the number of a specific column-name. 
#' @author Christian Salas-Eljatib
#' @note It can be used for a vector of specified column-names as well.
#' @examples
#'
#' df <- data.frame(varX=1:5, varY=letters[1:5], varZ=rep("a",5), varK=rep("b",5))
#' df
#' #using the function
#' findColumn.byname(df, c("varY","varZ"))
#' findColumn.byname(df, "varK")
#' #Creating an example vector
#' vector <- letters
#' vector
#' findColumn.byname(vector, c("h","z"))
#' @rdname findColumn.byname
#' @export
#' 
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
findColumn.byname<-function(data=data,col.name=col.name){
  class.obj <- class(data)
  if(class.obj=="data.frame"){
    output <- which(colnames(data) %in% c(col.name))
    output
  }else{output <- match(col.name,data)
  output}
}