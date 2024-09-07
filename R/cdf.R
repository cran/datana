#' Cumulative distribution for a given random variable.
#'
#' @details The cumulative distribution of the random variable is build every 5% of
#'  the data at hand, that is to say, from 0.05 (i.e., 5%) to 0.95 (i.e., 95%).
#'  
#' @title Computes the cumulative distribution for a given random variable
#' @param y a vector of a random variable
#' 
#' @return The function returns a dataframe having two columns: the first contains 
#' the random variable values and the second the cumulative distribution for the variable.
#' @author Christian Salas-Eljatib       
#' @examples 
#' y.var <- rnorm(10)
#' cdf(y.var)
#' @rdname cdf
#' @export
#' 
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
cdf<-function(y=y){
  yname <- deparse(substitute(y))
  y<-sort(stats::na.omit(y))
  pr.acum.y<-(1:length(y)-0.5)/length(y)
  out <- data.frame(y,pr.acum.y)
  names(out) <- c(paste0(yname),paste0("cum.dist.",yname))
  return(out)
}