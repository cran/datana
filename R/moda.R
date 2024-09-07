#' Computes the mode of a random variable.
#'
#' @details The mode is an statistics representing the most "used" value of
#' the random variable as a way of central position.
#'  
#' @title Computes the mode
#' @param y is a numeric vector.
#'
#' @return The function returns the mode, a numeric scalar. 
#' @author Christian Salas-Eljatib.
#' @examples
#'
#' set.seed(1234)
#' variable <- rnorm(10, mean=45,sd=6)
#' #using the function
#' moda(y=variable)
#' moda(variable)
#' @rdname moda
#' @export
#' 
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
moda <- function(y=y) {
  uniqv <- unique(y)
  uniqv[which.max(tabulate(match(y, uniqv)))]
}