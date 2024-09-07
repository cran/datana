#' The function computes the statistics for inference in a given contrast, subject to
#'  a given significance level. Those statistics are as follows: estimated contrast, 
#'  standard error of the contrast, and confidence interval of the contrast. 
#'         
#' @details The contrast is established based upon an already fitted statistical model that
#'  describe the relationship among variables. The significance level (alpha) is defined
#'  by the user, although by default has been set to 0.05, that is to say, a 95% of
#'  statistical confidence.
#' 
#' @title Computes statistics for inference in a given contrast
#' @param model object containing the fitted model
#' @param coef.cont vector with the coefficients to establish the contrasts
#' @param grp.m a vector having the sample mean per each group, or level of the factor under study.
#' @param grp.n a vector having the sample size per each group, or level of the factor under study.
#' @param alpha is the significance level for building the confidence intervals. Default value is 0.05, which is 95\% confidence level.
#' @param full FALSE if want short output, TRUE for longer (i.e. more details). Default is TRUE.
#'
#' @return This function returns the above described statistics for a given contrast.
#'  
#' @author Christian Salas-Eljatib
#' @examples
#' 
#' data(fertiliza)
#' table(fertiliza$treat)
#' means.trt <- tapply(fertiliza$volume,fertiliza$treat,mean);means.trt
#' sds.trt <- tapply(fertiliza$volume,fertiliza$treat,sd);sds.trt
#' ns.trt <- tapply(fertiliza$volume,fertiliza$treat,length);ns.trt
#' m1 <- lm(volume ~ treat, data=fertiliza)
#' anova(m1)
#' ## Coefficients to be used in the contrast
#' #c1: (tmoA1-A2) - (tmoA3-A4)
#' C1.coeff <- c(0,1,1,-1,-1)
#' contrast(model=m1,C1.coeff,grp.m=means.trt,grp.n=ns.trt,alpha=0.1,full=TRUE)
#' contrast(model=m1,C1.coeff,grp.m=means.trt,grp.n=ns.trt,alpha=0.1,full=FALSE)
#' contrast(m1,C1.coeff,grp.m=means.trt,grp.n=ns.trt,alpha=0.05,full=TRUE)
#' contrast(m1,C1.coeff,grp.m=means.trt,grp.n=ns.trt)
#' 
#' @references
#' Stage AR. 1963. A mathematical approach to polymorphic site index curves for 
#'  Grand fir. Forest Science 9(2):167–180.
#' @rdname contrast
#' @export
#' 
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
contrast <- function(model=model,coef.cont=coef.cont,grp.m=grp.m,
                     grp.n=grp.n,alpha=0.05,full=TRUE){

  #my style
  c.est <- t(coef.cont)%*%grp.m#g.means
  # computing the s(C).
  mse=(summary(model)$sigma)^2
  df.res=stats::df.residual(model) 
  se.c.est <- sqrt( mse* t(coef.cont^2)%*%(1/grp.n) )

  tscore=stats::qt(1-alpha/2,df.res)

# confidence interval for the estimated contrast  
  c.est.lower <- c.est-tscore*se.c.est;
  c.est.upper <- c.est+tscore*se.c.est;
 
# t-statistics for the estimated contrast
  t.comp=c.est/se.c.est
#  p.value=pvalueT(t.comp,df.res) #p.value for the t-statistics (my.Functiont)
   p.value=round(((1-stats::pt(abs(t.comp),df.res))*2),4)
  
 if(full==FALSE){
     output=c(c.est,se.c.est,p.value)
     names(output)=c('Est.Contrast','SE.Cont','p-value')
   } else {
  output=c(c.est,se.c.est,c.est.lower,c.est.upper,p.value)
names(output)=c('Est.Contrast','SE.Cont','Lower.bound.Cont','Upper.bound.Cont','p-value')
}
  output
}