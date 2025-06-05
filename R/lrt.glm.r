#' Computes a likelihood ratio test between a reduced model (modr)
#' and a full model (modr). Both models must be
#'  previously fitted by maximum likelihood using an R function such
#' as nlme() and such, that are part of the generalized lineal
#' models.
#'
#' @details Double-check the order of the reduced and full model,
#' before of using the model
#'
#' @title Computes a likelihood ratio test between a
#' reduced model and a full model. Both models must be already
#' fitted using and R function. 
#' @param modr is the object containing a previously fitted
#' reduced model, using a glm-type of function,  having less
#' parameters than modf.
#' @param modf is the object containing a previously fitted
#' full model, using a glm-type of function,  having more parameters
#' than modr.
#'
#' @return This function returns an object having the following
#' elements: "loglik.Modr" maximized log-likelihood of modr;
#' "loglik.Modf" maximized log-likelihood of modf;
#'  "dif.loglik"  difference in log-likelihood between both models,
#' and "dif.df" difference in degrees of freedong of both models, and
#'  "p-value" is the p-value for the LRT.
#' @author Christian Salas-Eljatib.
#' @references Pinheiro JC, and Bates DM. 2000. Mixed-effects models in S
#'    and Splus. Springer-Verlag, New York, NY. 528 p.
#' @examples
#'
#' #not yet implemented
#' @rdname lrt.glm
#' @export
#'
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
lrt.glm <- function(modr, modf){
  L0 <- stats::logLik(modr)
  L1 <- stats::logLik(modf)
  L01 <- as.vector(- 2 * (L0 - L1))
  df <- attr(L1, "df") - attr(L0, "df")
  list(loglik.Modr=L0, loglik.Modf=L1, dif.loglik= L01, dif.df = df,
       "p-value" = stats::pchisq(L01, df, lower.tail = FALSE))
}
