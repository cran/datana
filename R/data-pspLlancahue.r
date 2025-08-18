#' Ubicación cartesiana de árboles en un bosque (solo como
#' referencia para uso del libro).
#'
#' @description
#' Esta dataframe solo se mantiene para ser de utilidad a quienes
#' usan el libro de Salas-eljatib (2021), ya que la nueva
#' versión se encuentra en la dataframe `llancahue2`.
#' @usage
#' data(pspLlancahue)
#' @format Contains tree-level variables, as follows:
#' \describe{
#'  \item{arb.id}{Identificador del árbol.}
#' \item{spp}{Codificación de la especie. Detalles en  `llancahue2`.}
#' \item{dap}{Diámetro a la altura del pecho, en cm.}
#' \item{coord.x}{Posición cartesiana en el eje-X, en m.}
#' \item{coord.y}{Posición cartesiana en el eje-Y, en m.}
#'  }
#' @source 
#'  Detalles en  `llancahue2`. 
#' @references
#' - Detalles en `llancahue2`.
#' @examples
#' data(pspLlancahue) 
#' descstat(pspLlancahue$dap)
#' boxplot(dap~spp, data=pspLlancahue)
'pspLlancahue'
