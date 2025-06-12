#' Caribou survival
#' @format Data frame con 91 filas y 3 columnas:
#' \describe{
#' \item{herd}{Herd identifier.}
#' \item{wolf.density}{Wolf density of the herd as  wolf / 100
#' km².}
#' \item{alive}{Caribou survival, `1` survives, `0` don't survive.}
#' }
#' @examples
#' data(caribou)
#' table(caribou$alive, caribou$herd)
"caribou"
