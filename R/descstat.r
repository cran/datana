#' Function to create a descriptive statistics table for continuous 
#'  variables from a dataframe.
#' 
#' @details The resulting table offers the main central and dispersion 
#' statistics.
#' 
#' @title Creates a descriptive statistics table for continuous
#' variables.
#' @param data a dataframe containing numeric variables as columns.
#' @param decnum the number of decimals to be used in the output. The
#' default is set to 3.
#' @param eng logical; if "TRUE" (by default), the language of the
#' statistics will be in English; if "FALSE" will be in Spanish.
#' descriptive statistics. The default is to "FALSE".
#' @param full logical; if "TRUE", the output includes some extra
#' descriptive statistics. The default is to "FALSE".
#'
#' @return This function wraps descriptive statistics into a
#' summarize table having the following statistics: sample size,
#' minimum, maximum, mean, median, SD, and coefficient of variation. 
#'  If the "full" option is set to "TRUE", the following
#' statistics will be added to the table: 25th and 75th 
#'   percentiles, the interquartile range, skewness, and kurtosis.
#' @author Christian Salas-Eljatib and Tomas Cayul.
#' @references
#' - Salas-Eljatib C. 2021. Análisis de datos con el programa estadístico R:
#' una introducción aplicada. Ediciones Universidad Mayor. Santiago, Chile.
#' \url{https://eljatib.com}
#' @examples
#'
#' df <- datana::idahohd
#' head(df)
#' df.h<-df[,c("dbh","height")]
#' ## using the function
#' descstat(data=df.h)
#' descstat(data=df.h,decnum=1,eng=FALSE)
#' descstat(df.h,2)
#' @rdname descstat
#' @export
#' 
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
descstat <- function(data=data,decnum=3,eng=TRUE,full=FALSE){
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
  stat.names<-c("n","Minimum","Maximum","Mean","Median",
                    "Std. Dev.","CV(%)")
  if(eng==FALSE){
    stat.names<-c("n","Minimo","Maximo","Media","Mediana",
                    "Desv. St.","CV(%)")
  }

  names.out.here<-stat.names

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
     if(eng==FALSE){
    row.names(output) <- c(names.out.here,"Percentil 25",
                "Percentil 75",'Rango Interc.',"Asimetria","Curtosis")}
    output=data.frame(output)
    names(output)=names(data)   
    output=round(output,decnum)  
  }
output
}
