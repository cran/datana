#' Camaras trampa de mamiferos en el parque nacional Ruaha, en el sur de 
#' Tanzania
#' @description
#' Contains information of Camera trap data on medium to large terrestrial
#'  mammals 
#' collected at 54 camera stations in Ruaha National Park, southern Tanzania.
#' Dataset contains 14604 observations and sampling was carried out for two
#'  months during the
#' dry season of 2013 and two months during the wet season of 2014. Each 
#' camera station is associated
#' with a randomly placed camera and a trail-based camer, with the aim of 
#' comparing communities 
#' resulting from the two camera trap placement strategies. 
#' @usage
#' data(cameratrap2)
#' @format Contiene 6 variables, como sigue:
#' \describe{
#'   \item{referencia}{Number of observation od datasets.}
#'   \item{posicion}{Type of "placement" placed in each station (random or
#'    trail).}
#' \item{temporada}{Season where were made the samplings.}
#' \item{estacion}{Station where were collected the data.}
#' \item{especie}{Name of specie medium to large terrestrial mammals.}
#' \item{fecha.hora}{The date and time of each photographic event is also
#'  given.}
#'  }
#' @source 
#' Los datos fueron cedidos por el Dr Jeremy Cusack.  
#' @references
#'  - Cusack J, Dickman A, Rowcliffe M, Carbone C, Macdonald D, Coulson T. 
#'  2016. Random versus game trail-based camera trap placement strategy for 
#'  monitoring terrestrial mammal communities. PLoS ONE 10(5): e0126373.
#' @examples
#' data(cameratrap2)    
#' head(cameratrap2) 
'cameratrap2'
