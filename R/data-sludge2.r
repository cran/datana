#' Sludge data are at different cities, with a value of concentration zinc.  
#' @description
#' Datos de contenido de Zinc en el tratamiento de lodos
#' @usage
#' data(sludge2)
#' @format Contiene las siguinetes cuatro variables:
#' \describe{
#'   \item{ciudad}{Nombre de la ciudad.}
#'   \item{tasa}{Tasa de concentracion de lodo.}
#' \item{zinc}{Concentracion de Zinc, en ppm.}
#' \item{trt.comb}{Identificador de la combinacion de niveles entre los 
#' factores ciudad y tasa.}
#'  }
#' @source 
#' The data were provided from.. still remember.  
#' @references
#' not yet 
#' @examples
#' data(sludge2)    
#' table(sludge2$ciudad,sludge2$tasa) 
#' levels(sludge2$ciudad)
#' tapply(sludge2$zinc, list(sludge2$ciudad,sludge2$tasa), mean)
'sludge2'
