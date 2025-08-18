#' Tree biomass of sugar maple (Acer saccharum) trees.
#'
#' @description
#' These are tree-level measurement data of sample trees in the US.
#' @usage
#' data(maple)
#' @format Contains tree-level variables, as follows:
#' \describe{
#' \item{tree}{Sample tree identification number.}
#' \item{dbh}{Diameter at breast height, in cm}
#' \item{leaf}{Leaf biomass, in kg.}
#' \item{branch}{Branches biomass, in kg.}
#'  \item{bole}{Stem, or bole, biomass, in kg.}
#'  \item{bark}{Bark biomass, in kg.}
#'  \item{total}{Total biomass, in kg.}
#'  }
#' @source 
#' The data were provided courtesy of Dr Timothy Gregoire, Yale University,
#' in New Haven, CT, USA.  
#' @references
#' - Prof. Christian Salas-Eljatib at Universidad de Chile, Santiago,
#' Chile.
#' @examples
#' data(maple)    
#' head(maple) 
#' plot(total~dbh,data=maple)
'maple'
