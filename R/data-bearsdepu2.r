#' Edad y características biométricas de osos salvajes (sin datos faltantes)
#'
#' @description
#' Los osos salvajes fueron anestesiados y sus cuerpos medidos. Uno de los
#'  objetivos del estudio fue hacer una 
#' tabla (o quizas un conjunto de tablas) para las personas interesadas en 
#' estimar el peso de un oso basandose en otras medidas.
#' Esta dataframe es igual que "bears" pero sin valores perdidos.
#' @usage
#' data(bearsdepu2)
#' @format Contiene variables de nivel individual, como se describen a 
#' continuacion:
#' \describe{
#'   \item{id}{Identificador del oso.}
#' \item{edad}{edad en meses.}
#' \item{mes}{identificador del mes,dentro del año.}
#' \item{sexo}{1 = macho, 2 = hembra.}
#' \item{cabezaL}{longitud de la cabeza, en cm.}
#' \item{cabezaA}{ancho de la cabeza, en cm.}
#' \item{cuelloP}{circunferencia del cuello, en cm.}
#' \item{largo}{longitud del cuerpo, en cm.}
#' \item{pechoG}{circunferencia del pecho, en cm.}
#' \item{peso}{peso corporal, en kg.}
#' \item{obs}{número de observación temporal para el oso.}
#' \item{nombre}{nombre dado al oso.}
#'  }
#' @source 
#' Segun el Prof. Timothy Gregoire de Yale University (New Haven, CT, USA), 
#' los datos fueron
#'  cedidos por Gary Alt. Minitab, Inc. La descripcion de los datos fue dada
#'   por él.
#' @references
#' Algunas referencias generales estan en el Reader's Digest de Abril, 1979,
#'  y Sports Afield de Septiembre, 1981.
#' @examples
#' data(bearsdepu2)    
#' head(bearsdepu2)
#' table(bearsdepu2$sexo)
#' boxplot(cabezaL~sexo, data=bearsdepu2) 
'bearsdepu2'
