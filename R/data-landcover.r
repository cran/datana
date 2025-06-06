#' Land-cover, environmental and sociodemographic data for the 34
#' municipalities composing the Greater Santiago area, Santiago, Chile.
#'
#' @description
#' dataset contains 476 observations, 34 categorical and 442 numerical.
#'  Land-cover data was generated through remote
#' sensing classification techniques using Sentinel-2 satellite images
#' from year 2016. Temperatures were obtained from
#' TIRS band 10 of Landsat 8 satellites images. Particulate matter
#'  concentrations were estimated using spatial modelling
#' techniques from 10 pollution stations distributed in the city.
#'  Altitude was generated from a Digital Elevation Model.
#' Population and poverty were gathered from Casen 2017 survey.
#' @usage
#' data(landcover)
#' @format The data frame contains four variables as follows:
#' \describe{
#' \item{county}{Name of Municipality}
#' \item{built.p}{Percentage of surface covered by built-up area}
#' \item{vegeta.p}{Percentage of surface covered by vegetation}
#' \item{naked.p}{Percentage of surface covered by bare soil}
#' \item{grass.p}{Percentage of surface covered by deciduous vegetation}
#' \item{p.Deciduo}{Percentage of surface covered by evergreen vegetation}
#' \item{p.Siempreverde}{Percentage of surface covered by evergreen vegetation}
#' \item{temp.winter}{Land surface temperature in celsius degrees at
#' 2pm on a winter 0% cloud day}
#' \item{temp.summer}{Land surface temperature in celsius degrees at
#' 2pm on a summer 0% cloud day}
#' \item{pm10.winter}{Average particulate matter 10 micron during winter months}
#' \item{pm10.summer}{Average particulate matter 10 micron during summer months}
#' \item{poor.p}{Percentage of people under poverty line year 2017.}
#' \item{eleva}{Average altitude of municipal area.}
#' \item{pop}{Total population of municipality}
#'  }
#' @source
#' Data were provided by Dr Ignacio Fernandez at
#' Universidad Adolfo Ibañez (Santiago, Chile).
#' @references
#' Not yet
#' @examples
#' data(landcover)
#' head(landcover)
'landcover'
