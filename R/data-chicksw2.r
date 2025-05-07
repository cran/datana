#' Crecimiento de pollos.  
#' @description
#' El peso de pollos fueron medidos al momento de nacer y cada dia por medio 
#' hasta el dia 20. 
#' Ellos también fueron medidos el día 21. Hubo cuatro grupos de pollos en
#'  diferentes dietas de proteinas.  
#' @usage
#' data(chicksw2)
#' @format Contine cuatro variables, como sigue:
#' \describe{
#' \item{pollo}{Un identificador único para cada pollo. La numeracion esta 
#' ordenado segun el peso final dentro de cada dieta.}
#' \item{dieta}{Un factor con cuatro nivels: 1,2,3 y 4 indicando que dieta 
#' recibió el pollo.}
#'   \item{tiempo}{Número de días desde el nacimiento.}
#'   \item{peso}{Peso del pollo (gm).}
#'  }
#' @source 
#' Los datos fueron obtenidos desde la librería \eqn{alr4}.  
#' @references
#' Crowder M, Hand D. 1990. Analysis of Repeated Measures. Chapman and Hall
#' @examples
#' data(chicksw2)    
#' head(chicksw2) 
'chicksw2'
