#' Tree-level cork biomass data for Oak trees in Portugal
#'
#' @description
#' Measurements of cork weight in *Quercus suber* (Oak) trees in Portugal.
#' 
#' @format 
#' \describe{
#'   \item{tree}{A correlative number for each sample tree.}
#'   \item{csc}{is tree circumference at 1.3 m outside bark, in cm.}
#'   \item{cbc}{is tree circumference at 1.3 m under bark, in cm.}
#'   \item{bt}{bark thickness, in cm.}
#'   \item{hdeb}{is debarking height, in m.}	
#'   \item{hblc}{height to base of live crown, in m.}	
#'   \item{nb}{number of branches debarked}
#'   \item{cr.diam}{crown diameter, in m.}
#'   \item{w}{total green weight of the stripped cork, in kg}
#'   \item{stratum}{Stratum}
#'  }
#' @source  
#' Data supplied electronically to Prof. Timothy Gregoire (Yale University)
#'  by authors accompanied by a note which said "After the article was 
#'  published we discovered a problem with 2 of the observations so Teresa	
#'  and I decided it was best just to delete them."
#' @references 
#' - Fonseca TJ, Parresol BR. 2001. A new model for cork weight estimation 
#' in northern Portugal with methodology for construction of 
#' confidence intervals. Forest Ecology and Management 152(1):131–139.
#' @examples
#' data(corkoak)    
#' head(corkoak) 
"corkoak"
