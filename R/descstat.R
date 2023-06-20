#' A function that prepares a descriptive statistics table for continuous variables.
#' 
#' Function that creates a descriptive statistics table for all continuous variables in a dataframe excluding missing values.
#' 
#' @param data a dataframe containing variables as columns.
#' @param decnum the number of decimals to be used in the output.
#'
#' @return This function wraps descriptive statistics into a summarize table having the following
#'   descriptive statistics: sample size, minimum, maximum, mean, median, SD, and coefficient of variation (%). 
#' @author Christian Salas-Eljatib and Tomas Cayul.
#' @examples
#'
#' #creating a fake dataframe
#' set.seed(1234)
#' df <- as.data.frame(cbind(variable1=rnorm(5, 0), variable2=rnorm(5, 2)))
#' ## adding one missing value
#' df[3,1] <- NA
#' df
#' #using the function
#' descstat(data=df)
#' descstat(data=df,decnum=1)
#' descstat(df,2)
#' @rdname descstat
#' @export
#' 
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
descstat <- function(data=data,decnum=NA){
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
  row.names(output) <- c("n","Minimum","Maximum","Mean","Median", "Std. Dev.","CV %")
  output=data.frame(output)
  names(output)=names(data)   
  output=round(output,decnum)  
  output
}