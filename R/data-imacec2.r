#' Índice Mensual de Actividad Económica (IMACEC)
#'
#' @description
#' Base de datos con el Índice Mensual de Actividad Económica (IMACEC)
#' de Chile, que incluye información desde enero de 1997 en adelante. 
#' La base cuenta con 340 observaciones, que representan meses, e incorpora
#' diversas desagregaciones sectoriales. La variable principal es el IMACEC
#' mensual, que representa una estimación de la evolución de la actividad
#' económica del país respecto al mismo mes del año anterior.
#' 
#' @usage
#' data(imacec2)
#' 
#' @format Variables se describen a continuación:
#' \describe{
#'   \item{fecha}{Fecha de la observación (formato `Date`, primer día del mes)}
#'   \item{anho}{Año de la observación}
#'   \item{mes}{Mes de la observación}
#'   \item{imacec}{Índice mensual de actividad económica total}
#'   \item{crec.prod}{Crecimiento del sector producción de bienes}
#'   \item{crec.min}{Crecimiento del sector minería}
#'   \item{crec.ind}{Crecimiento del sector industrial}
#'   \item{crec.rest}{Crecimiento del resto de bienes no mineros ni industriales}
#'   \item{crec.com}{Crecimiento del sector comercio}
#'   \item{crec.serv}{Crecimiento del sector servicios}
#'   \item{imacec.fac}{IMACEC ajustado por costo de factores}
#'   \item{crec.imp}{Crecimiento de los impuestos sobre los productos}
#'   \item{imacec.nomin}{Índice de actividad económica excluyendo minería}
#' }
#' 
#' @source
#' Banco Central de Chile. Datos extraídos de la serie histórica
#' de indicadores mensuales.  Los datos fueron
#' digitados por Saúl Ketterer, estudiante del Prof. Christian Salas-Eljatib.
#' 
#' @references
#' - Banco Central de Chile. ``Serie IMACEC'',
#'  disponible en \url{https://si3.bcentral.cl/siete}
#' 
#' 
#' @examples
#' data(imacec2)
#' head(imacec2)
'imacec2'
