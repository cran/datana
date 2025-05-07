#' Height growth of Pinus taeda (Loblolly pine) trees
#'
#' @description
#' The Loblolly data frame has 84 rows and tree columns of records of the tree
#'  height growth of Loblolly pine trees. This dataframe
#'  is a slight modification to the original dataframe "Loblolly" from the
#'  \eqn{datasets} R package.
#' @usage
#' data(ptaeda, package="datana")
#' @format A dataframe containing the following columns:
#' \describe{
#' \item{seed.id}{an ordered factor indicating the seed source for the tree.
#' The ordering is according to increasing maximum height.}
#' \item{age}{a numeric vector of tree ages, in yr.}
#' \item{toth}{a numeric vector of tree heights, in m.}
#'  }
#' @source
#' Pinheiro, J. C. and Bates, D. M. (2000) Mixed-effects Models in S and
#'  S-PLUS. Springer.
#' @examples
#'
#' data(ptaeda, package="datana")
#' head(ptaeda)
#' plot(toth ~ age, data = subset(ptaeda, seed.id == 329),
#'      xlab = "Age (yr)", las = 1,
#'      ylab = "Height (m)")
'ptaeda'
