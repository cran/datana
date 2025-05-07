#' Datos de biomasa de corcho en árboles de Encino en Portugal
#'
#' @description
#' Mediciones de peso de corcho en árboles muestra de Quercus suber en Portugal.
#' 
#' @format 
#' \describe{
#'   \item{arbol}{A correlative number for each sample tree.}
#'   \item{perimetro.cc}{is tree circumference at 1.3 m outside bark, in cm.}
#'   \item{perimetro.sc}{is tree circumference at 1.3 m under bark, in cm.}
#'   \item{e.corteza}{bark thickness, in cm.}
#'   \item{h.desc}{is debarking height, in m.}	
#'   \item{hcc}{height to base of live crown, in m.}	
#'   \item{num.ram}{number of branches debarked}
#'   \item{diam.copa}{crown diameter, in m.}
#'   \item{biomasa}{total green weight of the stripped cork, in kg}
#'   \item{estrato}{Estrato}
#'  }
#' @source  
#' Datos cedidos por Prof. Timothy Gregoire (Yale University)
#'  y los autores originales mencionaron "After the article was published we
#'   discovered a problem with 2 of the observations so Teresa and I decided 
#'   it was best just to delete them."
#' @references 
#' - Fonseca TJ, Parresol BR. 2001. A new model for cork weight estimation 
#' in northern Portugal with methodology for construction of confidence 
#' intervals. Forest Ecology and Management 152(1):131–139.
#' @examples
#' data(corkoak2)    
#' head(corkoak2) 
"corkoak2"
