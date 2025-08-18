#' Computes the PRESS (Predicted residual sum of squares)
#' statistics of a regression model. 
#'  
#' @details The function computes the PRESS based on the Hat matrix
#' of a previously fitted model.
#' 
#' @title Function to compute the PRESS statistics of a regression
#' model .
#' @param model an object having the fitted model.
#'
#' @return The main output is the PRESS statistics
#'  
#' @author Christian Salas-Eljatib.
#' @references
#' - Myers RH. 1990. Classical and Modern Regression with
#' Applications. Second Edition. Duxbury Classic Series, Pacific
#' Grove, CA, USA. 
#' 
#' @examples
#'
#' #Creates a fake dataframe
#' set.seed(12)
#' df <- as.data.frame(cbind(Y=rnorm(30, 30,9), X=rnorm(30, 450,133)))
#' #fitting a candidate model
#' mod1 <- lm(Y~X, data=df)
#' #Using the `pressind` function
#' pressind(mod1)
#' @rdname pressind
#' @export
#' 
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
pressind <- function(model=model){
# the leave-one-out predicted residual     
  res.less.this <- stats::residuals(model)/(1-stats::lm.influence(model)$hat)
  pressind <- sum(res.less.this^2)
  return(pressind)
}   
