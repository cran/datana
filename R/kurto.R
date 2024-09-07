#' The kurtosis is about the tailedness, or the degree of heaviness of the tails, in the frequency 
#' distribution. The function computes an estimator of the kurtosis. 
#' 
#' @details The kurtosis of a random variable is the fourth moment of the standardized variable.
#'  There are several ways of parameterizing a kurtosis estimator, such as depending on the 
#'  fourth moment and the standard deviation of the random variable.
#' 
#' @title Computes the sample kurtosis of a distribution
#' @param x a numeric vector of a random variable. 
#' @param na.rm logical operator to remove NA values. The default is set to TRUE.
#' 
#' @return  An estimator of the kurtosis.
#'  
#' @author Christian Salas-Eljatib
#' @examples
#' y.var<-rnorm(100);x.var<-rbeta(100,.2,2)
#' kurto(y.var)
#' kurto(x.var)
#'
#' @rdname kurto
#' @export
#' 
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
kurto <- function(x, na.rm=TRUE) {  
m4 <- mean((x-mean(x, na.rm=na.rm))^4, na.rm=na.rm) 
out <- m4/(stats::sd(x, na.rm=na.rm)^4)-3  
out
}
