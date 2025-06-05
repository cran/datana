#' Forest fire occurrence in central Chile
#'
#' @description
#' Data of forest fire occurrence in central Chile having  7210
#'  observations, with 890 cases of fire occurrence and
#'  6320 cases of non-occurrence.
#' The binary variable (\eqn{Y}) is the occurrence of forest
#' fire, where \eqn{Y=1} to denotes occurrence and \eqn{Y=0}, 
#'  otherwise.
#' @usage
#' data(forestfire)
#' @format The data frame contains four variables as follows:
#' \describe{
#' \item{fire}{Occurrence of forest fire (1 yes, 0 no)}
#' \item{xcoord}{Geographic coordinate x.utm}
#' \item{ycoord}{Geographic coordinate y.utm}
#' \item{aspect}{Exposure (degrees from north)}
#' \item{eleva}{Elevation (m)}
#' \item{slope}{Slope (degrees)}
#' \item{distr}{Distance to dirt roads}
#' \item{distcity}{Distance to cities}
#' \item{distriver}{Distance to paved roads}
#' \item{covera}{Land use classifications according to a polygon}
#' \item{coverb}{Land use classifications according to a polygon}
#' \item{tempe}{Minimum temperature of the coldest month}
#' \item{ppan}{Annual precipitation}
#' \item{ndii}{Normalized difference infrared index}
#' \item{nvdi}{Normalized difference vegetation index}
#' \item{tempe2}{Minimum temperature of the warmest month}
#' \item{ppan2}{Precipitation of the driest month}
#' \item{frec.fire}{Frequency of fires}
#' \item{perc.fire}{Percentage of fire frequency}
#' \item{fireClass}{Class for frecuency fire}
#' \item{asp.class}{Class of variable exposure}
#' \item{eleva.class}{Class of numerical variable elevation}
#' \item{slope.class}{Class of numerical variable slope}
#' \item{ndii.class}{Normalized difference infrared index class}
#' \item{nvdi.class}{Normalized difference vegetation index class}
#'  }
#' @source
#' Data were provided by Dr Adison Altamirano at the Universidad de La
#'  Frontera (Temuco, Chile).
#' @references
#' -Salas-Eljatib C, Fuentes-Ramírez A, Gregoire TG, Altamirano A,
#' Yaitul V. 2018. A study on the effects of unbalanced data when
#'  fitting logistic regression models in ecology. Ecological
#' Indicators 85:502-508. \doi{10.1016/j.ecolind.2017.10.030}
#' 
#' - Altamirano A, Salas C, Yaitul V, Smith-Ramirez C, Avila A. 2013.
#' Infuencia de la heterogeneidad
#' del paisaje en la ocurrencia de incendios forestales en
#' Chile Central.
#' Revista de Geografia del Norte Grande, 55:157-170.
#' @examples
#' data(forestfire)
#' head(forestfire)
'forestfire'
