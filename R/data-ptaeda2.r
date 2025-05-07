#' Crecimiento en altura de Pinus taeda
#' 
#' @description
#' Esta dataframe contiene 84 folas y tres columnas de crecimiento en altura de 
#' árboles de Pinus taeda (Loblolly pine). Es una modificación de la dataframe
#'  "Loblolly" del paquete 'datasets' de R.
#' @usage
#' data(ptaeda2)
#' @format Los datos contienen las siguientes columnas:
#' \describe{
#' \item{semilla.id}{Un factor indicando el origen de la semilla del árbol.}
#' \item{edad}{Edad del árbol, en años.}
#' \item{atot}{Altura total, en m.}
#'  }
#' @source 
#' Pinheiro, J. C. and Bates, D. M. (2000) Mixed-effects Models in S and 
#' S-PLUS. Springer.
#' @examples
#' 
#' data(ptaeda2, package="datana")
#' head(ptaeda2)
#' plot(atot ~ edad, data = subset(ptaeda2, semilla.id == 329),
#'      xlab = "Edad (años)", las = 1,
#'      ylab = "Altura (m)")
'ptaeda2'
