#' Function to perform a likelihood ratio test (LRT) between a
#' reduced model (modA) versus a more complex model (modB),
#' provided both models were fitted by maximum likelihood. The
#' function requires to be filled with the needed values used
#' to perform a LRT. 
#' 
#' @details The resulting output offers statistical inference
#' estimates of the LRT, as well as other maximum likelihood-based
#' statistics. Notice that the function only works if the number
#' of parameters for modA is lower than the ones of modB.
#' 
#' @title Performs a likelihood ratio test between two models being
#'  fitted by maximum likelihood. 
#' @param llma maximized log-likelihood of the reduced model (or
#' modA).
#' @param llmb maximized log-likelihood of the more-complex model (or
#' modB).
#' @param qa the number of parameters of the reduced model.
#' @param qb the number of parameters of the more-complex model.
#' @param nfit the sample size used for fitted both models.
#' @param modA is a character with a name to be assigned to object
#' modA.
#' @param modB is a character with a name to be assigned to object
#' modB.
#' @param alpha is the level of sifnificance to used for computing
#' as a reference only, the tabulated value of the respective
#' Chi-Squared statistic. By the defaul is set to 0.05.

#' @return This function wraps two outputs: (i) a table that computes
#' the AIC, BIC and AICc goodness-of-fit statistics for both models,
#' and (ii) the result of the likelihood ratio test, such as the
#' value of the statistic being computed, its respective p-value,
#' and the tabulated value of the statistics using the a defined
#' alpha significance of level.
#' 
#' @author Christian Salas-Eljatib.
#' @references
#' Salas-Eljatib, C. 2025. Estadística Aplicada e Inferencial.
#' Borrador de libro, Universidad de Chile, Santiago, Chile.  
#'  \url{https://eljatib.com/rlibro}
#' @examples
#'
#' #Maximized values for two probability mass functions
#' max.ll.pois<- -39.86337; max.ll.bneg<--33.823003
#' c(max.ll.pois,max.ll.bneg)
#' sample.size<-26
#' #Number of parameters
#' num.para.pois<- 1; num.para.bneg<- 3
#' c(num.para.pois, num.para.bneg)
#' #Names to be used for each model
#'  modA="Poisson"; modB="hiper"
#' outall<-lrt(llma=max.ll.pois,llmb=max.ll.bneg,qa=num.para.pois,
#' qb=num.para.bneg,nfit = sample.size,modA = "Poisson",
#' modB = "Hipergeometrico")
#' #Output1: A comparative table 
#' tab.out<-outall$tab.models
#' tab.out
#' #Output2: the results of the LRT
#' out<-outall$lrt.out
#' out$r.tab
#' out$Ldif
#' @rdname lrt
#' @export
#' 
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
lrt<-function(llma=llma, llmb=llmb, qa=qa,qb=qb,nfit=nfit,
               modA="modA",modB="modB",alpha=0.05) {
    L0 <- llma;    L1 <- llmb; n<-nfit
    aic0<-(-2*llma)+qa;aic1<-(-2*llmb)+qb;
    bic0<-(-2*llma)+(qa*log(n));bic1<-(2*llmb)+(qb*log(n));
    aicc0<-aic0 + (2*qa*(qa+1))/(n-qa-1);
        aicc1<-aic1 + (2*qb*(qb+1))/(n-qb-1);
    Ldif<-L01 <- 2*abs(L1-L0)
    df <- abs(qb - qa)
    pval<-1-stats::pchisq(L01, df);pval
    conf<-1-alpha
    r.tab<-stats::qchisq(conf, df=df)
    out.modA<-data.frame(Model=modA,loglik=L0, numparam=qa,
                         AIC=aic0, BIC=bic0, AICc=aicc0)
    out.modB<-data.frame(Model=modB,loglik=L1, numparam=qb,
                         AIC=aic1, BIC=bic1, AICc=aicc1)
    output<-rbind(out.modA,out.modB)
    output <- data.frame(output)
    output
    tab.models <- output
    output <- cbind(L0, L1, Ldif, df, pval,r.tab)
    output <- data.frame(output)
    rownames(output) <- "LRT"
    lrt.out<-output
    cat("=====================================","\n")
    cat("Comparative table of the two models","\n")
    print(tab.models)
    cat("=====================================","\n")    
    cat("Likelihood ratio test","\n")
    print(lrt.out)
    output<-list(tab.models=tab.models,lrt.out=lrt.out)
    cat("=====================================","\n")    
    cat("Structure of the output","\n")    
    output
}
