#' Volumen a nivel de árbol para roble (Nothofagus obliqua) especie en el
#'  bosque de Rucamanque
#'
#' @description
#' Volumen, altura y diámetro, entre otras para árboles muestra de 
#' Nothofagus obliqua (roble) en 
#'  el bosque de Rucamanque, cerca de Temuco, en la región de la Araucania, 
#'  en el sur de Chile.  
#' @usage
#' data(treevolroble2)
#' @format Las siguientes columnas son parte de la dataframe:
#' \describe{
#'   \item{arbol}{Número del árbol.}
#' \item{especie}{Especie.}
#' \item{dap}{Diámetro a la altura del pecho, en cm.}
#' \item{atot}{Altura total, en m.}
#'  \item{d6}{Diámetro fustal a los 6 m, en cm.}
#' \item{vtot}{Volumen bruto total, en m\eqn{^{3}}{^3} with bark.}
#'  }
#' @source 
#' Los datos son proporcionados por el Prof. Christian Salas
#'  (Universidad de Chile).  
#' @references
#' - Salas C. 2002. Ajuste y validación de ecuaciones de volumen para un relicto
#' del bosque de Roble-Laurel-Lingue. Bosque 23(2): 81-92. 
#' \doi{10.4067/S0717-92002002000200009} 
#' \url{https://eljatib.com/publication/2002-07-01_ajuste_y_validacion_/} 
#' @examples
#' data(treevolroble2)    
#' head(treevolroble2) 
'treevolroble2'
