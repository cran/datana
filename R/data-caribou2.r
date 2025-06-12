#' Sobrevivencia de caribú
#' @format Data frame con 91 filas y 3 columnas:
#' \describe{
#' \item{herd}{Identificador de la manada.}
#' \item{wolf.density}{Densidad de lobos, en número de lobos / 100
#' km².}
#' \item{alive}{Sobrevivencia de un caribú, `1` sobrevive, `0` no
#' sobrevive.}
#' }
#' @examples
#' data(caribou2)
#' table(caribou2$alive, caribou2$herd)
"caribou2"
