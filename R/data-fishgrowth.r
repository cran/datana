#' Fish growth variables.  
#' @description
#' Variables of small mouth bass (i.e, a fish) collected in West Bearskin Lake, 
#' Minnesota, in 1991.   
#' @usage
#' data(fishgrowth)
#' @format Contains three variables, as follows:
#' \describe{
#'   \item{years}{Year at capture.}
#'   \item{length}{Length at capture (mm).}
#' \item{scale}{radius of a key scale (mm).}
#'  }
#' @source 
#' The data were obtained from the \eqn{alr4} library of R, specifically
#'  from the dataframe \eqn{wblake} that includes only fish of ages 8 or younger.
#' @references
#' Weisberg S. 2014. Applied Linear Regression. 4th edition. Hoboken NJ: Wiley 
#' @examples
#' data(fishgrowth)    
#' head(fishgrowth) 
#' plot(length~age, data=fishgrowth) 
'fishgrowth'
