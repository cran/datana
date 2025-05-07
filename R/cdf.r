#' @title Function to compute the cumulative distribution of a variable
#' 
#' @description Builds the cumulative distribution of a vector, using
#'  a step% of
#'  the data as fixed-intervals. 
#'  
#' @details By default the cumulative distribution is build using 5% of
#'  the data as intervals, that is to say, from 0.05 (i.e., 5%) to 
#'  0.95 (i.e., 95%).
#'  
#' @param y a vector of a random variable
#' @param step a numeric proportion of the data used as increment interval 
#' for building
#' the cdf of the random variable. The default value for 'step' is 0.05, 
#' representing a 5%. 
#' 
#' @return returns a dataframe having two columns: the first contains 
#' the random variable values and the second the cumulative distribution
#'  for the variable.
#' @author Christian Salas-Eljatib       
#' @references
#' Salas-Eljatib, C. 2021. Análisis de datos con el programa estadístico R:
#'  una introducción
#'  aplicada. Ediciones Universidad Mayor, Santiago, Chile. 170 p.
#'   \url{https://eljatib.com/rlibro}
#' @examples 
#' y.var <- rnorm(10)
#' cdf(y.var)
#' cdf(y.var, step=0.1)
#' @rdname cdf
#' @export
#' 
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
cdf<-function(y=y,step=0.05){
  yname <- deparse(substitute(y))
  y<-sort(stats::na.omit(y))
  pr.acum.y<-(1:length(y)-step)/length(y)
  out <- data.frame(y,pr.acum.y)
  names(out) <- c(paste0(yname),paste0("cum.dist.",yname))
  return(out)
}
