#' Datos de precipitación en Californa
#' @description
#' Datos de precipitación medidos en distintos lugares de california,
#' con las coordenadas de los puntos y su distancia a la costa.
#' @usage
#' data(rainfallCA)
#' @format Este set de datos contiene las siguientes columnas:
#' \describe{
#'   \item{saple.id}{Identificador del punto de muestreo.}
#'   \item{easting}{Coordenada este del punto.}
#'   \item{northing}{Coordenada norte del punto.}
#'   \item{pp}{Precipitación, en pulgadas.}
#'   \item{ele}{Elevación, en pies.}
#'   \item{lat}{Latitud del punto.}
#'   \item{d.coast}{Distancia a la costa, en millas.}
#'   }
#' @source 
#' Los datos provienen de mediciones hechas en California
#' @examples
#' data(rainfallCA)    
#' head(rainfallCA) 
#' plot(pp~ele, data=rainfallCA)
#' hist(rainfallCA$pp)
'rainfallCA'
