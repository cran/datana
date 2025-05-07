#' Sludge data are at different cities, with a value of concentration zinc.  
#' @description
#' Dataset contains 36 observations   
#' @usage
#' data(sludge)
#' @format Contains four variables, as follows:
#' \describe{
#'   \item{city}{Name of city.}
#'   \item{rate}{Concentration rate of sludge.}
#' \item{zinc}{Value of concentration ( in ppm).}
#' \item{trt.comb}{Combination between city and rate factors.}
#'  }
#' @source 
#' The data were provided from.. still remember.  
#' @references
#' not yet 
#' @examples
#' data(sludge2)    
#' table(sludge$city,sludge$rate) 
#' levels(sludge$city)
#' tapply(sludge$zinc, list(sludge$city,sludge$rate), mean)
'sludge'
