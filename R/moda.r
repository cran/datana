#' Computes the mode of a random variable.
#'
#' @details The mode is an statistics representing the most "used"
#' value of a random variable as a measurement of central position.
#' We use the Spanish name of mode, i.e., "moda", to avoid any
#' confution with the `mode` function of R, wich was programmed
#' for a different use.
#'
#' @title Computes the mode
#' @param y is a numeric vector.
#'
#' @return The function returns the mode, a numeric scalar.
#' @author Christian Salas-Eljatib.
#' @examples
#'
#' library(datana)
#' data(casen)
#' head(casen)
#' df<-casen
#' #Compare 
#' mean(df$edad)
#' median(df$edad)
#' # Using the function
#' moda(df$edad)
#' @rdname moda
#' @export
#'
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
moda <- function(y=y) {
  uniqv <- unique(y)
  uniqv[which.max(tabulate(match(y, uniqv)))]
}
