#' Function to compute the variance inflation factor (VIF)
#' for a multiple linear regression model.
#' 
#' @details The resulting out is a dataframe having the
#' VIF for each of the predictor variables.
#' 
#' @title Computes the variance inflation factor (VIF) for a
#' multiple linear regression (MLR) model.
#' 
#' @param mod an object containing the fitted MLR model by using
#' the `lm()` function.
#' @importFrom utils head
#'
#' @return This function creates a LaTeX file having 
#' the main fitting statistics of a linear regression model.
#' @author Christian Salas-Eljatib.
#' @references
#' Salas-Eljatib, C. 2021. Análisis de datos con el programa
#' estadístico R: una introducción aplicada. Ediciones Universidad
#' Mayor, Santiago, Chile. 170 p. \url{https://eljatib.com/rlibro}
#' @examples
#' ##Two fitted models
#' mod1 <- stats::lm(mpg ~ cyl+disp + hp + wt + drat, data = mtcars)
#' mod2 <- stats::lm(mpg ~ disp + hp + wt + drat, data = mtcars)
#' ##The VIF values for each regression model
#' vifx(mod=mod1)
#' vifx(mod=mod2)
#' @rdname vifx
#' @export
#'
##@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
vifx<-function(mod=mod){
    X<-  stats::model.matrix(mod)
    col.names.mod<-colnames(X);col.names.mod
    has.intercept<-0
    if(col.names.mod[1]=="(Intercept)"){has.intercept<-1}
    has.intercept
    if(has.intercept==0){messa.h<-"The model does not include an intercept."}
    if(has.intercept==0){warning("No intercept: vifs may not be sensible.")}
    
if(has.intercept==1){messa.h<-"The model includes an intercept."}

  n <- nrow(X);n
  k <- ncol(X)
    p <- k - 1; p
#labels(terms(mod))    
col.names<-col.names.mod[2:k];col.names  
  if (p == 1) {
  return(1)  # No multicollinearity if only one independent variable
  }
  if(p < 2) stop("model contains fewer than 2 terms")

 if(p==2){warning("Because there are 2 predictor, the VIFs of both will be the same.")}
    
  VIF <- numeric(p)
  
  for (i in 1:p) {
    # Define response variable: ith predictor (excluding intercept)
    y <- X[, i + 1]
    
    # Define predictor variables: all others except the ith, including intercept
    idx <- setdiff(2:k, i + 1)  # remove the column being regressed
    X_sub <- X[, idx]
    
    # Add intercept manually if not already in the subset
    X_sub <- cbind(1, X_sub)
    
    # Manual OLS: B = (X'X)^-1 X'y
    B <- solve(t(X_sub) %*% X_sub) %*% (t(X_sub) %*% y)
    
    # Calculate predicted y and residuals
    y_hat <- X_sub %*% B
    residuals <- y - y_hat
    
    # Sum of squared errors
    SCE <- sum(residuals^2)
    
    # Total sum of squares
    y_sum <- sum(y)
    SCT <- sum(y^2) - (y_sum^2) / n
    
    # Regression sum of squares
    SCR <- SCT - SCE
    
    # R-squared
    R2 <- SCR / SCT; R2
      VIF[i] <- 1 / (1 - R2)
      VIF
  }

    out<-data.frame(t(VIF));names(out)<-col.names
    row.names(out)<-"VIF"
message("Variance inflation factor (VIF) computation in regression" )
message("+-+-+-+")
message("The assessed model is:")
    message(mod$call)
message(messa.h)    
message("VIF for each covariate of the model:")
message("+-+-+-+")    
return(out)
    
}
