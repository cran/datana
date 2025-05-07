#' Sistema nacional de areas protegidas del estado (SNASPE) de Chile
#'
#' @description
#'
#' Contiene variables general de las unidades del sistema de areas
#' protegidas por el estado de
#'  Chile (SNASPE).
#' @usage
#' data(snaspe2)
#' @format Contiene las siguientes variables para cada unidad del SNASPE:
#' \describe{
#' \item{uni.id}{Número indentificador de la unidad.}
#' \item{unidad}{Nombre de la unidad.}
#' \item{categoria}{Categoría de la unidad. Puede ser Parque Nacional,
#'  Reserva Nacional,  o
#' Monumento Natural.}
#' \item{comuna}{Nombre de la communa donde esta la unidad.}
#' \item{province}{Nombre de la provincia donde esta la unidad.}
#'  \item{region}{Nombre de la región.}
#' \item{perim.km}{Perimetro, en km.}
#' \item{area.ha}{Área, en hectareas.}
#' \item{area.m2}{Área, en m\eqn{^{2}}{^2}.}
#'  }
#' @source
#' Estos datos fueron obtenidos desde
#' \url{https://ide.minagri.gob.cl}
#'
#' @references
#' EL SNASPE esta bajo la administración de la Corporación Nacional
#'  Forestal (CONAF) de Chile.
#' Mayor información se puede encontrar en
#' \url{https://www.conaf.cl}
#'
#' @examples
#' data(snaspe2)
#' head(snaspe2)
#' table(snaspe2$categoria)
#' tapply(snaspe2$area.ha,snaspe2$categoria,mean)
'snaspe2'
