#' Experimento de fertilización
#' @description
#' Datos a nivel de parcela de un experimento de fertilización con tratamientos
#' y replicas.  
#' @usage
#' data(fertiliza2)
#' @format Contiene tres columnas como sigue:
#' \describe{
#'   \item{tmo}{Tratamiento.Factor medido en diferentes niveles.}
#'   \item{vol}{Volumen de madera en la parcela experimental, 
#'   en m\eqn{^{3}}{^3}.}
#'  }
#' @source 
#' Datos cedidos por el Prof. Christian Salas.  
#' @references
#' not yet 
#' @examples
#' data(fertiliza2)
#' head(fertiliza2)
#' class(fertiliza2$tmo)
#' unique(fertiliza2$tmo)
#' media.g <- tapply(fertiliza2$vol,fertiliza2$tmo,mean);media.g
#' desvst.g <- tapply(fertiliza2$vol,fertiliza2$tmo,sd);desvst.g
#' n.g <- tapply(fertiliza2$vol,fertiliza2$tmo,length);n.g
#' 
'fertiliza2'
