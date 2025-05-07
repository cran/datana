#' Crecimiento en altura de árboles de Nothofagus alpina.
#'
#' @description
#' Datos de series de tiempo de altura para árboles muestreados de
#'  Nothofagus alpina (raulí) en el centro-sur de Chile. Estos árboles son
#'   parte
#' de los usados en Salas-Eljatib (2021, Ecological Applications).
#'  La cita completa se da en referencias.
#' @usage
#' data(raulihg2)
#' @format Contiene variables de nivel individual, como se describen
#' a continuacion::
#' \describe{
#' \item{tree.code}{Codigo del árbol}
#' \item{spp}{Nombre comun especie}
#' \item{bha.t}{Edad a la altura del pecho, en años.}
#' \item{h.t}{Altura total, en m.}
#'  }
#' @source
#' Datos cedidos por el Prof. Christian Salas-Eljatib.
#' @references
#' - Salas-Eljatib C. 2021. An approach to quantify climate-productivity
#' relationships: an example from a widespread Nothofagus forest.
#' Ecological Applications 31(4): e02285. \doi{10.1002/eap.2285}
#'
#' - Salas-Eljatib C. 2021. Time series height-data for Nothofagus alpina
#' trees. \doi{10.6084/m9.figshare.13521602.v5}
#' @examples
#' data(raulihg2)
#' head(raulihg2)
'raulihg2'
