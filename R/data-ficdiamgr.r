#' Diameter growth of trees
#' 
#' @description
#' The 'ficdiamgr' is a fictitious dataframe built to show the structure of 
#'  longitudinal data. The dataframe has records of tree diameter growth of 
#'  five sample trees, spanning three species. 
#' @usage
#' data(ficdiamgr)
#' @format A time series data containing the following columns:
#' \describe{
#' \item{tree.id}{an ordered factor indicating the tree on which the 
#' measurement is made. The ordering is according to increasing maximum 
#' diameter.}
#' \item{time}{a numeric vector giving the numbers of days since 
#' establishment.}
#' \item{dbh}{a numeric vector of diameter at breast height, in cm.}
#' \item{site}{a factor variable, representing site conditions with two 
#' levels.}
#' \item{spp}{a factor variable, representing tree species with three levels.}
#'  }
#' @source 
#' This dataframe was built from the 'Orange' data of the \eqn{datasets} package,
#'  by Christian Salas-Eljatib.
#' @examples
#' data(ficdiamgr)
#' 
#' coplot(dbh ~ time | tree, data = ficdiamgr, show.given = FALSE)
'ficdiamgr'
