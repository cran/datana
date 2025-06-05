#' Crecimiento de peces
#' @description
#' Variables de crecimiento de peces en el lago West Bearskin del estado de 
#'  Minnesota, en 1991.   
#' @usage
#' data(fishgrowth2)
#' @format Contiene tres variables, como sigue:
#' \describe{
#'   \item{edad}{Year at capture.}
#'   \item{largo}{Length at capture, en mm.}
#' \item{escala}{radius of a key scale, en mm.}
#'  }
#' @source 
#' Datos obtenidos desde el paquete \eqn{alr4} de R, de la dataframe 
#'  \eqn{wblake} qie incluye peces de hasta 8 años.  
#' @references
#' Weisberg S. 2014. Applied Linear Regression. 4th edition. Hoboken NJ: Wiley 
#' @examples
#' data(fishgrowth2)    
#' head(fishgrowth2)
#' plot(largo~edad,data=fishgrowth2)
'fishgrowth2'
