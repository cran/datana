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
#' @param eng logical; if `TRUE` (by default), the language of the
#' statistics will be in English; if "FALSE" will be in Spanish.
#' descriptive statistics. The default is to `FALSE`.
#' @param full logical; if `TRUE`, the output includes some extra
#' descriptive statistics. The default is to `FALSE`.
#' @param reduced logical; if `TRUE`, the output includes the same 
#' descriptive statistics as using the summary() basis R function.
#' @param landscape logical; the default is set to `FALSE`, thus
#' the output table will have the statistics as rows, and in each
#' column the variables. Otherwise, if `TRUE` the variables will
#' be the rows, and each statistics the columns. Therefore this last
#' option is only advisable when `full=FALSE`.
#' @param all.outputs logical; if `TRUE`, the returns several elements
#' as results of the function, which can be of importance for
#' further analyses later on. The default is to `FALSE`.
#'
#' @return This function wraps descriptive statistics into a
#' summarize table having the following statistics: sample size,
#' minimum, maximum, mean, median, SD, and coefficient of variation. 
#'  If the `full` option is set to `TRUE`, the following
#' statistics will be added to the table: 25th and 75th 
#'   percentiles, the interquartile range, skewness, and kurtosis.
#' @author Christian Salas-Eljatib and Tomas Cayul.
#' @references
#' - Salas-Eljatib C. 2021. Análisis de datos con el programa estadístico R:
#' una introducción aplicada. Ediciones Universidad Mayor. Santiago, Chile.
#' \url{https://eljatib.com}
#' @examples
#' df <- datana::idahohd
#' head(df)
#' df.h<-df[,c("dbh","toth")]
#' ## using the function
#' descstat(data=df.h)
#' descstat(data=df.h,decnum=1,eng=FALSE)
#' descstat(df.h,2)
#' descstat(df.h,2,full=TRUE)
#' descstat(df.h,2,reduced=TRUE)
#' descstat(df.h,2,reduced=TRUE,eng=FALSE)
#' descstat(data=df.h[,"dbh"],decnum=1,eng=FALSE,landscape = FALSE)
#' @rdname descstat
#' @export
#' 
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
descstat <- function(data=data,decnum=3,eng=TRUE,full=FALSE,
                     reduced=FALSE,all.outputs=FALSE,landscape=FALSE){
    data <- as.data.frame(data)
#caso de una sola columna    
    if(inherits(dim(data), "NULL")){warning("Because a single variable was used, the name to be used in the output table will be 'data'")}
    
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
    stat.names<-c("n","M\u00Ednimo","M\u00E1ximo","Media","Mediana",
                    "Desv. St.","CV(%)")
  }

  if(full==TRUE){reduced=FALSE}

  if(reduced==TRUE){full=FALSE}
  
  names.out.here<-stat.names
  names.out.here
  
  row.names(output) <- names.out.here
  output=data.frame(output)
  names(output)=names(data)   
  output=round(output,decnum)
  output
  #gm <- apply(data, 2,datana::gmean),na.rm=TRUE)  
  percentiles<-apply(data, 2, stats::quantile,probs=c(0.25,0.75), na.rm=TRUE)
  q1<-percentiles[1];  q2<-percentiles[2];  q3<-percentiles[3];
  iqr <- apply(data, 2, stats::IQR, na.rm=TRUE)
  sk <- apply(data, 2,datana::skewn,na.rm=TRUE)
  kurto <- apply(data, 2,datana::kurto,na.rm=TRUE)

# #!  the output
  if(full==TRUE){
    output=(rbind(n,Minimo,Maximo,Media,Mediana,Desv.Est., 
                  CV,percentiles,iqr,sk,kurto))
  }

  if(reduced==TRUE){
  output=rbind(Minimo,q1,Mediana,q3,Maximo)
  }

# #!  the names for the output  
  if(full==TRUE & reduced==FALSE){
    stat.names<-c(stat.names,"25th Percentile",
                "75th Percentile",'Interq. range',"Skewness","Kurtosis")
  }

  if(full==TRUE & eng==FALSE & reduced==FALSE){
    stat.names<-c(stat.names,"Percentil 25",
              "Percentil 75",'Rango Interc.',"Asimetr\u00Eda","Curtosis")
  }

# #!  the names for the output  
  if(full==FALSE & reduced==TRUE){
      stat.names<-c("Minimum","25th Percentile","Median",
                    "75th Percentile","Maximum")
  }

  if(full==FALSE & reduced==TRUE &eng==FALSE){
      stat.names<-c("M\u00Ednimo","Percentil 25","Mediana",
                    "Percentil 75","M\u00E1ximo")
  }  
  
  stat.names
  variable.names<-names(data)
    row.names(output) <- stat.names  
  output<-data.frame(output)
  names(output)<-names(data)   
  output<-round(output,decnum)
  if(landscape==TRUE){output<-t(output)}
  if(landscape==TRUE & nrow(output)==1){row.names(output)<-variable.names}
  
if(all.outputs==TRUE){
  output<-list(table=output,stat.names=stat.names,variable.names=variable.names)}
  output
}
