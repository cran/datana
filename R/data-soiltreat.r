#' Soil treatment experiment in tree seedlings
#' @description
#' A test was made of the effect of three soil treatments on the height
#'  growth of 2-year-old seedlings. Treatments were assigned at random
#'  to the three plots within each of 11 blocks. Each plot was made
#'  up of 50 seedlings.  Average 5-year height growth was the
#'   criterion for evaluating treatments.
#' @usage
#' data(soiltreat)
#' @format Contains the four following columns, at the plot-level,
#' \describe{
#'   \item{block}{Block unit.}
#'   \item{treat}{Treatment level.}
#'   \item{ini.h}{Initial height, in m.}
#'   \item{inc.h}{Increment in height during 5-year, in m.}
#'  }
#' @source
#' Table in page 71 of Freese (1967).  The data were entered by
#'  Miss Nayeli Ramirez, a former student of Prof. Christian Salas-Eljatib.
#' @references
#' - Freese, F 1967. Elementary statistical methods for foresters.
#' Agriculture Handbook 3171, USDA Forest Service.
#' @examples
#' data(soiltreat)
#' head(soiltreat)
#' tapply(soiltreat$inc.h,soiltreat$treat,summary)
#' tapply(soiltreat$inc.h,soiltreat$treat,sd)
'soiltreat'
