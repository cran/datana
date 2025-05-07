#' Calidad del aire en la ciudad de Nueva York.  
#' @description
#' Calidad del aire diario medido en New York, de Mayo a Septiembre de 1973.   
#' @usage
#' data(airnyc2)
#' @format Contiene 6 variables:
#' \describe{
#'   \item{ozone}{Ozono (ppb).}
#'   \item{solar}{Solar R (largo).}
#' \item{wind}{Viento (mph).}
#' \item{temp}{Temperatura (grados F).}
#' \item{month}{Mes del año (1--12).}
#' \item{day}{Dia del mes (1--31).}
#'  }
#' @source 
#' Los datos fueron obtenidos desde la librería 'datasets'.  
#' @references
#' Chambers J, Cleveland W, Kleiner B, Tukey P. 1983. Graphical Methods for
#'  Data Analysis. Belmont. CA: Wadsworth.
#' @examples
#' data(airnyc2)    
#' head(airnyc2) 
'airnyc2'
