#' Altura-diámetro de árboles en el estado de Idaho (USA)  
#' @description
#' Estos datos provienen de un muestreo en el bosque experimental de la 
#'  University of Idaho, en Upper Flat Creek, Idaho, USA. Medido en 1991.   
#' @usage
#' data(idahohd2)
#' @format Contiene cinco variables detalladas a continuación:
#' \describe{
#'   \item{parce}{Número de la parcela de muestreo.}
#'   \item{arbol}{Número del árbol dentro de la parcela.}
#'   \item{spp}{Especie del árbol. Una variable factor con los siguientes 
#' niveles: "DF" es Douglas-fir (*Pseudotsuga menziesii*), 
#' "GF" es Grand fir (*Abies grandis*), 
#' "SF" es Subalpine fir (*Abies lasiocarpa*), 
#' "WL" es Western larch (*Larix occidentalis*), 
#' "WC" es Western red cedar (*Thuja plicata*), y
#' "WP" es White pine (*Pinus strobus*).}
#' \item{dap}{Diámetro del fuste a los 1.3 m sobre el suelo, en cm.}
#' \item{atot}{Altura total  del árbol, en m.}
#'  }
#' @source 
#' Los datos fueron obtenidos desde la dataframe `ufc` de la librería `alr4`.  
#' @references
#' Weisberg S. 2014. Applied Linear Regression. 4th edition. New York: Wiley.
#' @examples
#' data(idahohd2)    
#' head(idahohd2)
#' plot(atot~dap, data=idahohd2)
'idahohd2'
