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
#' \item{spp}{Especie del árbol, una variable factor  con niveles 
#' DF = Douglas-fir, GF = Grand fir, SF = Subalpine fir, WL = Western larch,
#'                 WC = Western red cedar, WP = White pine.}
#' \item{dap}{Diámetro del fuste a los 1.3 m sobre el suelo, en cm.}
#' \item{atot}{Altura del árbol, en m.}
#'  }
#' @source 
#' Los datos fueron obtenidos desde la dataframe 'ufc' de la librería \eqn{alr4}.  
#' @references
#' Weisberg S. 2014. Applied Linear Regression. 4th edition. New York: Wiley.
#' @examples
#' data(idahohd2)    
#' head(idahohd2)
#' plot(atot~dap, data=idahohd2)
'idahohd2'
