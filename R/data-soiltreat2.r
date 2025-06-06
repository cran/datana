#' Tratamientos del suelo en el crecimiento de plantulas.
#' @description
#' Un experimento sobre el efecto de tres tratamientos del suelo en el
#' crecimiento en altura de plantulas de 2-años de edad. Los tratamientos
#' fueron  asignados aleatoriamente a tres parcelas dentro de cada uno de
#' 11 bloques. Cada parcela esta  constituida por hasta 50 plantulas.
#' El promedio del incremento en altura de los últimos 5 años fue la
#' variable de interes para evaluar los tratamientos.
#' @usage
#' data(soiltreat2)
#' @format Los datos, a nivel de parcela, tienen las siguientes columnas,
#' \describe{
#'   \item{bloque}{Bloque del experimento.}
#'   \item{tmo}{Factor tratamiento, medido en tres  nivels.}
#'   \item{alt.ini}{Altura initial, rn m.}
#'   \item{alt.inc}{Incremento en altura durante los últimos cinco años, en m.}
#'  }
#' @source
#' Cuadro de la página 71 de Freese (1967). Los datos fueron digitados por
#' la Srta. Nayeli Ramirez, una estudiante del Prof. Christian Salas-Eljatib.
#' @references
#' - Freese, F 1967. Elementary statistical methods for foresters. Agriculture
#' Handbook 3171, USDA Forest Service.
#' @examples
#' data(soiltreat2)
#' head(soiltreat2)
#' tapply(soiltreat2$alt.inc,soiltreat2$tmo,summary)
#' tapply(soiltreat2$alt.inc,soiltreat2$tmo,sd)
'soiltreat2'
