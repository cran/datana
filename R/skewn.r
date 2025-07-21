#' The skewness is about the departure from symmetry of a frequency 
#' distribution. Therefore,
#'  It is about asymmetry. One way to assess asymmetry of a random
#'   variable is to compute
#'  an statistics representing its skewness. The current function
#'   an dimensionless statistics
#'  of the skewness of given vector. 
#'   
#' @details The skewness of a random variable is the third moment 
#' of the standardized variable.
#'  There are several ways of parameterizing an skewness estimator,
#'   such as depending on the 
#'  third moment and the standard deviation of the random variable.
#'   
#' @title Computes the skewness of a numeric vector
#' @param x A numeric vector representing a random variable. 
#' @param na.rm Logical value to remove NA values. The default is set to TRUE.
#' 
#' @return  The value of the the skewness of given vector
#'  
#' @author Christian Salas-Eljatib.
#' @examples
#' y.var<-rnorm(100);x.var<-rbeta(100,.2,2)
#' skewn(y.var)
#' skewn(x.var)
#'
#' @rdname skewn
#' @export
#' 
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
skewn <-  function(x, na.rm=TRUE){#}, pearson=FALSE){
  m3 <- mean((x-mean(x,na.rm=na.rm))^3,na.rm=na.rm)
  out <- m3/(stats::sd(x,na.rm=na.rm)^3)
#   if(pearson==TRUE){
# m.x<- mean(x,na.rm=na.rm)
# md.x<- stats:median(x,na.rm=na.rm)
# sd.x<- stats::sd(x,na.rm=na.rm)
# out<- 3*(m.x-md.x)/sd.x}
out
}
