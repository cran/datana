#' Area y peso para hojas de árboles. 
#'
#' @description
#' Mediciones de área y peso de hojas. 
#' @usage
#' data(leafw2)
#' @format Contiene variables a nivel de hoja, como sigue:
#' \describe{
#' \item{peso}{Peso de la hoja, en gramos.}
#' \item{area}{Área foliar, en cm\eqn{^{2}}{^2}.}
#'  }
#' @source 
#' El archivo de datos fue cortesía del Prof. Timothy 
#'  Gregoire de Yale University (New Haven, CT, USA). 
#' @references
#' - Gove JH, Barrett JP, and Gregoire TG. 1982. When is n sufficiently large 
#' for regression estimation? Journal of Environmental Management 15:229-237. 
#' @examples
#' library(datana)
#' data(leafw2)    
#' head(leafw2)
#' plot(peso~area, data=leafw2) 
'leafw2'
