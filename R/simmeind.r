#' Computes the simmetry index of a random variable.
#'
#' @details A more sensitive indicator of skewness is the the
#' symmetry index, defined as the ratio between the mode and the
#' 95th percentileof the observed distribution, as follows.
#' \deqn{{SimmI} = \frac{y_{Mode}-y_{LT}}{y_{.95} -y_{LT}}}
#' where \eqn{y_{Mode}}, \eqn{y_{LT}} and \eqn{y_{.95}} are the
#' mode of the distribution, the lower treshold of the variable, and
#' the 95th percentile of the distribution.
#'
#' According to Lorimer and Krug (1983) helps to distinguish between
#' descending monotonic, skewed unimodal and symmetric unimodal
#' curves. Negative exponential distributions have \eqn{{SimmI}}
#' close to 0, Gaussian distribution have  \eqn{{SimmI}} close
#' to 0.5, and positively skewed unimodal curves have values
#' intermediate between the two. Negatively skewed distributions
#' have values \eqn{>0.5}, with a theoretical maximum of 1.0.
#' 
#' @title Computes the simmetry index
#' @param y is a numeric vector.
#' @param lt is the lower treshold used to collect the sample data
#' represented by the vector `y`.
#'
#' @return The function returns the simmetry index, a numeric scalar.
#' @references
#' - Lorimer CG. and Krug AG. 1983. Diameter Distributions
#' in Even-aged Stands of Shade-tolerant and Midtolerant Tree
#' Species. American Midland Naturalist 109 (2):331--345.
#' @author Christian Salas-Eljatib.
#' 
#' @examples
#'
#' library(datana)
#' data(casen)
#' head(casen)
#' df<-casen
#' #Compare 
#' summary(df$edad)
#' mean(df$edad)
#' median(df$edad)
#' moda(df$edad)
#' simmeind(y=df$edad,lt = 0)
#' @rdname simmeind
#' @export
#'
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
simmeind <- function(y=y,lt=lt) {
  mode.y <- datana::moda(y); p95<-stats::quantile(y,probs=0.95) 
  out<-as.numeric((mode.y-lt)/(p95-lt))
  out
}
