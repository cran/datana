#' On the National System of State Protected Wild Areas (SNASPE) of Chile.
#'
#' @description
#'
#' Units of the National System of State Protected Wild Areas (SNASPE).
#' @usage
#' data(snaspe)
#' @format Contains the following variables:
#' \describe{
#' \item{unit.id}{Number for the unit.}
#' \item{unit}{Name of the protected area.}
#' \item{category}{Category of the unit. It can be either a National
#'  Park, a National
#' Reserve or a Natural Monument.}
#' \item{county}{Name of the county where
#'  the unit is located.}
#' \item{province}{Province where the unit is located.}
#'  \item{region}{Region where the unit is located.}
#' \item{perim.km}{Perimeter, in km.}
#' \item{area.ha}{Area, in hectares.}
#' \item{area.m2}{Area, in m\eqn{^{2}}{^2}.}
#'  }
#' @source
#' These data are freely available at
#' \url{https://ide.minagri.gob.cl}
#'
#' @references
#' The Chilean SNASPE is under the direction of the Chilean Forest
#'  Service (CONAF).
#' Further information and documentation can be found at
#' \url{https://www.conaf.cl}
#'
#' @examples
#' data(snaspe)
#' head(snaspe)
#' table(snaspe$category)
#' tapply(snaspe$area.ha,snaspe$category,mean)
'snaspe'
