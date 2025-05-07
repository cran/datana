#' Esperanza de vida de paises
#' @description El repositorio del Observatorio Mundial de la Salud
#'     (GHO) de la Organización Mundial de la Salud (WHO) mantiene un
#'     registro del estado de salud como también otros factores
#'     relacionados, para todos los países. Las bases de datos son
#'     publicadas con el objetivo de analizarlos. La base de datos de
#'     esperanza de vida ha sido compilada en conjunto con datos
#'     económicos de las Naciones Unidas.
#' @usage data(lifexpect)
#' @format Este set de datos contiene 22 columnas: \describe{
#'     \item{country}{País de origen} \item{year}{Año}
#'     \item{status}{Categoría del país Desarrollado/En desarrollo}
#'     \item{life.expectancy}{Esperanza de vida en años}
#'     \item{adult.mortality}{Mortalidad en adultos expresado como la
#'     probabilidad de morir entre 15 y 60 años de edad por cada 1000
#'     habitantes} \item{infant.deaths}{Mortalidad en infantes cada
#'     1000 habitantes} \item{alcohol}{Consumo de alcohol percapita en
#'     mayores de 15 años} \item{percentage.expenditure}{Porcentaje de
#'     vacunación} \item{hepatitis.b}{Porcentaje de vacunación contra
#'     hepatitis b} \item{measles}{Casos de sarampión cada 1000
#'     habitantes} \item{bmi}{Índice de masa corporal (BMI) promedio}
#'     \item{under.five.deaths}{Muertes de menores de 5 años cada 1000
#'     habitantes} \item{polio}{Porcentaje de vacunación contra polio}
#'     \item{total.expenditure}{Inversión en salud como porcentaje del
#'     GDP per cápita} \item{diphtheria}{Porcentaje de vacunación
#'     contra diphteria} \item{hiv.aids}{Porcentaje casos de VIH, ETS}
#'     \item{gdp}{GDP per cápita en USD} \item{population}{Población
#'     total} \item{thinness10.19}{Desnutrición entre 10 y 19
#'     años de edad} \item{thinness5.9}{Desnutrición entre 5 y
#'     9 años de edad} \item{icr}{Índice
#'     de desarrollo humano en términos de composición de ingresos}
#'     \item{schooling}{Promedio de años de educación} }
#' @source Los datos fueron obtenidos desde la web
#'     \url{https://rpubs.com/Alvian2022/LifeExpectancy}.  Note que
#'     solo los datos del año 2014 son utilizados acá.
#' @examples
#' data(lifexpect)    
#' head(lifexpect) 
#' table(lifexpect$status)
#' tapply(lifexpect$life.expectancy, lifexpect$status,mean)
'lifexpect'
