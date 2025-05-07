#' Large trees in forests near Tolga, in Eastern Norway.
#'
#' @description
#' The study area is situated in the municipality of Tolga, located in
#'  Hedmark County, Eastern Norway. Field plots 32 m × 32 m in size were
#'  established in forests. A total of 1109 plots were sampled. In each plot,
#'   Scots pines (Pinus sylvestris L.). trees with a stem diameter larger
#'   than 35 cm were measured and counted.
#' @usage
#' data(largetrees)
#' @format Contains two variables, as follows:
#' \describe{
#'   \item{plot}{Plot code.}
#' \item{y}{Number of large-diameter trees in a given sample plot.}
#'  }
#' @source
#' Although Christian Salas was part of the study, he just reproduced the
#' needed data  to mimic the distribution of the random variable of interest,
#'  as shown in the study of Korkhonen et al (2016).
#' @references
#' - Korhonen L, Salas C, Ostgard T, Lien V, Gobakken T, Naesset E. 2016.
#' Predicting the occurrence of large-diameter trees using airborne laser
#' scanning. Canadian Journal of Forest Research
#'  46:461–469. \doi{10.1139/cjfr-2015-0384}
#' @examples
#' data(largetrees)
#' head(largetrees)
#' hist(largetrees$y)
'largetrees'
