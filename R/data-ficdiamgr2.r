#' Crecimiento diametral de árboles
#' 
#' @description
#' Los datos 'ficdiamgr2' son ficticios, y fue construida para mostrar 
#' la estructura 
#'  de datos longitudinales. Los datos tienen registro de crecimiento en cinco 
#'  árboles muestra, representando a tres especies. 
#' @usage
#' data(ficdiamgr2)
#' @format Una serie de tiempo conteniendo las siguientes columnas:
#' \describe{
#' \item{arbol}{indica el identificador del árbol.}
#' \item{tiempo}{número de dias desde el inicio de las mediciones.}
#' \item{dap}{diámetro a la altura del pecho, en cm.}
#' \item{sitio}{un factor, representando condiciones de sitio, en dos niveles.}
#' \item{espe}{un factor, representando especie del árbol, en tres niveles.}
#'  }
#'  
#' @source 
#' Estos datos fueron modificados desde la dataframe 'Orange' de la librería
#'  'datasets', por Christian Salas-Eljatib.
#' @examples
#' data(ficdiamgr2)
#' 
#' coplot(dap ~ tiempo | arbol, data = ficdiamgr2, show.given = FALSE)
'ficdiamgr2'
