#' A function that computes validation statistics.
#' 
#' This function computes validation statistics, as the RMSD, AD and AAD of any
#'    response vector 'y.pred' using as real values the vector 'y.obs'. 
#'    The computed statistics are:  root mean square differences (RMSD);
#'    aggregated difference (AD); and  
#'    aggregated of the absolute value differences (AAD). Be sure that both predicted
#'     and observed values are expressed in the same measurement unit. 
#'     Thus, be careful if the model uses a transformation of the response variable.
#'   
#' @param y.pred Predicted values of the variable of interest.
#' @param y.obs Observed values of the variable of interest.
#'
#' @return This function returns the following statistics as a vector: 
#' (RMSD,RMSD.p,AD,AD.p,AAD,AAD.p); where RMSD.p stands for
#' RMSD expressed as a percentage, and the same applied to AD.p and AAD.p.
#' @author Christian Salas-Eljatib.
#' @note Check the reference for further details.
#' @references   Salas C, Ene L, Gregoire TG, Nasset E, Gobakken T. 2010. Modelling tree diameter
#'  from airborne laser scanning derived variables: a comparison of spatial statistical
#'  models. Remote Sensing of Environment 114(6):1277-1285. \doi{10.1016/j.rse.2010.01.020}
#' @examples
#'
#' #creating a fake dataframe
#' set.seed(1234)
#' df <- as.data.frame(cbind(Y=rnorm(30, 30,9), X=rnorm(30, 450,133)))
#' df
#' #fitting a candidate model
#' mod1 <- lm(Y~X, data=df)
#' #using the function
#' valesta(y.obs=df$Y,y.pred=fitted(mod1))
#' @rdname valesta
#' @export
#' 
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
valesta <- function(y.obs=y.obs,y.pred=y.pred){
  n=length(y.pred)
  res.y=y.obs-y.pred
  res.y.2=(y.obs-y.pred)^2
  rmsd=sqrt( sum(res.y.2)/n ) #root mean square differences 
  rmsd.p=(rmsd/(mean(y.obs)))*100
  RMSD=c(rmsd,rmsd.p)
  ad=sum(res.y)/n #aggregated difference (AD) or mean residual
  ad.p=(ad/(mean(y.obs)))*100
  AD=c(ad,ad.p)
  aad=sum(abs(res.y))/n #aggregated of the absolute value differences 
  aad.p=(aad/(mean(y.obs)))*100
  AAD=c(aad,aad.p)
  output=c(RMSD,AD,AAD)
  names(output)=c('RMSD','RMSD.p','AD','AD.p','AAD','AAD.p')
  output
}   