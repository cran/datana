#' Precios de gasolina y petróleo
#' @format Data frame que contiene 14 filas y 3 columnas:
#' \describe{
#' \item{año}{Año del precio}
#' \item{gasolina}{Precio de la gasolina para el `año` en centavos / galón}
#' \item{petroleo}{Precio del petróleo para el `año` en $ / bbl}
#' }
#' @source
#' McClave, James T. Benson, P.G. 1991. Statistics for Business and
#' Economics, Fifth Edition. Dellen and Macmillan.
#' @references
#' Statistial Abstract of the United States: 1989, pp476, 480.
#' @examples
#' data(gasoline2)
#' plot(gasolina~año, data = gasoline2, type = "b",
#'      ylab = "Precio de la gasolina (centavos/galón)",
#'      xlab = "Año")
"gasoline2"
