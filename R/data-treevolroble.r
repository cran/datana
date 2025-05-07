#' Tree volume of roble (Nothofagus obliqua) in the Rucamanque forest
#'
#' @description
#' These are tree-level measurement data of sample trees in the Rucamanque 
#' experimental forest, 
#'  near Temuco, in the Araucania region in south-central Chile, measured 
#'  in 1999.  The
#' data are the same as in the dataframe "treevolruca", but only having 
#' observations for the species Nothofagus obliqua (roble).
#' @usage
#' data(treevolroble)
#' @format Contains tree-level variables, as follows:
#' \describe{
#'   \item{tree.no}{Tree id}
#' \item{dbh}{Diameter at breast height, in cm}
#' \item{toth}{Total height, in m.}
#'  \item{d6}{Upper-stem diameter at 6 m, in cm}
#' \item{totv}{Tree gross volume, in m\eqn{^{3}}{^3} with bark.}
#'  }
#' @source 
#' The data are provided courtesy of Dr Christian Salas at
#' the Universidad de Chile (Santiago, Chile).  
#' @references
#' - Salas C. 2002. Ajuste y validación de ecuaciones de volumen para un relicto
#' del bosque de Roble-Laurel-Lingue. Bosque 23(2): 81-92.
#'  \doi{10.4067/S0717-92002002000200009} 
#'  \url{https://eljatib.com/publication/2002-07-01_ajuste_y_validacion_/} 
#' @examples
#' data(treevolroble)    
#' head(treevolroble) 
'treevolroble'
