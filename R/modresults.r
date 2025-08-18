#' Function to save the main statistics results froma fitted regression model.
#' 
#' @details The resulting object contains several outputs derived
#' from a regression model.
#' 
#' @title Creates an object having the main fitting statistics from a 
#' regression model.
#' 
#' @param mod An object containing the fitted model by using
#' the `lm()` function.
#' @param print.output A logical option for printing, or displaying, the 
#' saved outputs at the console. The default is set to TRUE, meanwhile if 
#' `print.output`=FALSE, nothing is printed.
#' @param conf.lev A numeric value (between 0.0001 and 0.9999) representing
#' the confidence level to be used for some components of the output. 
#' The default value is 0.95.
#' @param eng The language to be used in the output. English
#'  is the default, meanwhile if `eng`=FALSE, Spanish is used.
#' @importFrom utils head
#'
#' @return This function returns a list having several components 
#' of a fitted regression model.
#' @author A somehow related version of this function was first created
#' by Prof. Timothy Gregoire (Yale University), but the current 
#' version is due to Christian Salas-Eljatib.
#' @references
#' Salas-Eljatib, C. 2021. Análisis de datos con el programa
#' estadístico R: una introducción aplicada. Ediciones Universidad
#' Mayor, Santiago, Chile. 170 p. \url{https://eljatib.com/rlibro}
#' @examples
#'
#' library(datana)
#' df <- datana::maple
#' head(df)
#' datana::descstat(df[,c("total","dbh")])
#' graphics::plot(total ~ dbh, data=df)
#' slr.m1<-stats::lm(total ~ dbh, data=df)
#' ## Example 1 -- store all the results to an object
#' out<-modresults(mod = slr.m1)
#' out$modsumm
#' out$sigma.e
#' out$press
#' out$tcal.coef
#' out$vp.tcal.coef
#' ## Example 2
#' modresults(mod = slr.m1, print.output=TRUE)
#' @rdname modresults
#' @export
#' 
##@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
modresults<-function(mod=mod,print.output=FALSE,conf.lev=0.95,eng=TRUE){

tab.h<-summary(mod)[["coefficients"]]
beta.hat<-tab.h[,1];
se.coef<-summary(mod)$coefficients[,2]
tcal.coef<-summary(mod)$coefficients[,3]
vp.tcal.coef<-summary(mod)$coefficients[,4]
r2 <-summary(mod)$r.squared
ncoef<-length(stats::coef(mod))
sigma.e <- (summary(mod))$sigma
mse <- stats::deviance(mod)/stats::df.residual(mod)



fcal<-summary(mod)$fstatistic[1]
gl.num<-summary(mod)$fstatistic[2]
gl.mod<-summary(mod)$fstatistic[3]
vp.fcal<-stats::anova(mod)["Pr(>F)"][1,1]

    
    if(eng==TRUE & print.output == TRUE){cat("\nSummary output from fitted model\n")}
    if(eng==FALSE & print.output == TRUE){cat("\nTabla resumen de modelo ajustado\n")}
#  message("=====================================================")
ms <- summary(mod)
vc <- stats::vcov(mod)
cint <- stats::confint(mod,level=conf.lev)   

#   if(eng==FALSE){cat("\nTabla ANOVA del modelo ajustado\n")}
    av <- stats::anova(mod)     # store usual ANOVA table
    
    #at("Fitted values from model\n")
    yh <- stats::predict(mod, fit=T, se.fit=TRUE) 

    #at("Save raw residuals\n")
    rawres <- stats::residuals(mod)     

    #at("Save standarized residuals\n")
    stdres <- stats::rstandard(mod)
  
    #at("Save studentized residuals\n")
    studres <- stats::rstudent(mod)     
    
    #at("Save diagnostic measures\n")
    dms <- stats::influence.measures(mod)

  press<-pressind(mod)


alloutput<-list(modsumm=ms,
     beta.hat=beta.hat,sigma.e=sigma.e,
   mse=mse,
   fcal=fcal,gl.num=gl.num,gl.mod=gl.mod,
  ncoef=ncoef,
   vp.fcal=vp.fcal,se.coef=se.coef,
tcal.coef=tcal.coef,vp.tcal.coef=vp.tcal.coef,r2=r2, press=press,
  varcov=vc, conint=cint, aovar=av, yhat=yh,
rawres=rawres, studres=studres,
stdres=stdres,diags=dms)
    
    if(print.output==TRUE){
  if(eng==TRUE){cat("\nMeaning of each element of the output list\n")}
    if(eng==FALSE){cat("\nSignificado de cada elemento de la lista de resultado\n")}

  cat("====================\n")  
  message("modsumm: Summary of the model")
  print(alloutput$modsumm)
  cat("====================\n")
  message("beta.hat: Vector with the estimated coefficients")
  print(alloutput$beta.hat)
  cat("====================\n") 
  message("varcov: Estimated variance-covariance matrix of betahat", "\n")
    print(alloutput$varcov)
  cat("====================\n")
  message("confin: Confidence intervals for betahats", "\n")
  print(alloutput$conint)
    cat("====================\n")
  message("aovar: ANOVA type-table\n")
  print(alloutput$aovar)
  
    }
    
   
out<-alloutput

}

