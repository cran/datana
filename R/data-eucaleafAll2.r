#' Mediciones foliares (todas, n=744) para árboles de Eucalyptus nitens en
#'  Tasmania, Australia. 
#'
#' @description
#' Mediciones de largo, ancho y área de hojas de Eucalyptus nitens para toda
#'  la muestra de Candy (1999). 
#' @usage
#' data(eucaleafAll2)
#' @format Contiene variables a nivel de hoja, como sigue:
#' \describe{
#' \item{tiempo}{Factor a dos niveles: Temprano o Tardío}
#' \item{arbol}{Identificador del árbol muestra}
#' \item{meristema}{Factor de la descripción del meristema, en tres niveles.}
#' \item{largo}{Largo de la hoja, en mm}
#' \item{ancho}{Ancho de la hoja, en mm}
#' \item{area}{Área foliar, en cm\eqn{^{2}}{^2}}
#'  }
#' @source 
#' Aunque la fuente original de estas mediciones proviene de la tesis del Dr.
#'  Candy (1999), 
#'  el archivo de datos fue cortesía del Prof. Timothy Gregoire de
#'  Yale University (New Haven, CT, USA). 
#' @references
#' - Candy SG. 1999. Predictive models for integrated pest management of the
#' leaf beetle Chrysophtharta bimaculata in Eucalyptus nitens in Tasmania. 
#' Doctoral dissertation,
#'  University of Tasmania, Hobart, Australia. 
#' @examples
#' data(eucaleafAll2)    
#' head(eucaleafAll2) 
'eucaleafAll2'
