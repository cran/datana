#' Function to create a descriptive statistics table for continuous 
#'  variables from a dataframe.
#' 
#' @details The resulting table offers the main central and dispersion 
#' statistics.
#' 
#' @title Creates a descriptive statistics table for continuous variables
#' @param data a dataframe containing numeric variables as columns.
#' @param decnum the number of decimals to be used in the output. 
#' @param full TRUE for a longer output (i.e. more descriptive statistics).
#'  The default is to FALSE.
#'
#' @return This function wraps descriptive statistics into a summarize table 
#' having the following
#'   descriptive statistics: sample size, minimum, maximum, mean, median, SD, 
#'   and coefficient of variation. 
#'   If the full option is set to TRUE, the following statistics are added to
#'    the table: 25th and 75th 
#'   percentiles, the interquartile range, skewness, and kurtosis.
#' @author Christian Salas-Eljatib and Tomas Cayul.
#' @references
#' Salas-Eljatib, C. 2021. Análisis de datos con el programa estadístico R:
#'  una introducción
#'  aplicada. Ediciones Universidad Mayor, Santiago, Chile. 170 p. 
#'  \url{https://eljatib.com/rlibro}
#' @examples
#'
#' #creating a fictitious dataframe
#' set.seed(1234)
#' df <- as.data.frame(cbind(variable1=rnorm(5, 0), variable2=rnorm(5, 2)))
#' ## adding one missing value
#' df[3,1] <- NA
#' df
#' #' #using the function
#' descstat(data=df)
#' descstat(data=df,decnum=1)
#' descstat(df,2)
#' @rdname descstat
#' @export
#' 
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
descstat <- function(data=data,decnum=4,full=FALSE){
  data <- as.data.frame(data)
  if(prod(is.na(decnum))){decnum=3}
  n <- apply(data, 2, function(x){length(x[!is.na(x)])})
  Minimo <- apply(data, 2, min, na.rm=TRUE)
  Maximo <- apply(data, 2, max, na.rm=TRUE)
  Media <- apply(data, 2, mean, na.rm=TRUE)
  Mediana <- apply(data, 2, stats::median, na.rm=TRUE)
  Desv.Est. <- apply(data, 2, stats::sd, na.rm=TRUE)
  CV <- abs(100*Desv.Est./Media)
  output=(rbind(n,Minimo,Maximo,Media,Mediana,Desv.Est., CV))
  names.out.here<-c("n","Minimum","Maximum","Mean","Median",
                    "Std. Dev.","CV(%)")
  row.names(output) <- names.out.here
  output=data.frame(output)
  names(output)=names(data)   
  output=round(output,decnum)  
  #gm <- apply(data, 2,datana::gmean),na.rm=TRUE)  
  percentiles<-apply(data, 2, stats::quantile,probs=c(0.25,0.75), na.rm=TRUE)
  iqr <- apply(data, 2, stats::IQR, na.rm=TRUE)
  sk <- apply(data, 2,datana::skew,na.rm=TRUE)
  kurto <- apply(data, 2,datana::kurto,na.rm=TRUE)
  if(full==FALSE){
   output
  } else {
    output=(rbind(n,Minimo,Maximo,Media,Mediana,Desv.Est., 
                  CV,percentiles,iqr,sk,kurto))
    row.names(output) <- c(names.out.here,"25th Percentile",
                "75th Percentile",'Interq. range',"Skewness","Kurtosis")
    output=data.frame(output)
    names(output)=names(data)   
    output=round(output,decnum)  
  }
  output
}