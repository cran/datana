#' Mediciones foliares para árboles de Eucalyptus nitens en Tasmania, Australia. 
#'
#' @description
#' Mediciones de largo, ancho y area de hojas de Eucalyptus nitens. 
#' @usage
#' data(eucaleaf2)
#' @format Contiene variables a nivel de hoja, como sigue:
#' \describe{
#' \item{tiempo}{Factor a dos niveles: Temprano o Tardío.}
#' \item{arbol}{Identificador del árbol muestra.}
#' \item{meristema}{Factor de la descripción del meristema, en tres niveles.}
#' \item{largo}{Largo de la hoja, en mm.}
#' \item{ancho}{Ancho de la hoja, en mm.}
#' \item{area}{Área foliar, en cm\eqn{^{2}}{^2}.}
#'  }
#' @source 
#' Aunque la fuente original de estas mediciones proviene de la tesis del
#'  Dr. Candy (1999), el archivo de datos fue cortesía del Prof. Timothy 
#'  Gregoire de Yale University (New Haven, CT, USA). Además, 
#'  estos datos fueron ocupados en el estudio de Gregoire y Salas (2009).
#' @references
#' - Candy SG. 1999. Predictive models for integrated pest management of the
#' leaf beetle Chrysophtharta bimaculata in Eucalyptus nitens in Tasmania. 
#' Doctoral dissertation, University of Tasmania, Hobart, Australia. 
#' @references
#' - Gregoire TG, and Salas C. 2009. Ratio estimation with measurement
#' error in the auxiliary variate. Biometrics 65(2):590-598 
#' \doi{10.1111/j.1541-0420.2008.01110.x}
#' @examples
#' data(eucaleaf2)    
#' head(eucaleaf2) 
'eucaleaf2'
