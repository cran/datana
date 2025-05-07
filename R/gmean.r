#' Computes the geometric mean of a numeric vector. It is the n-th root of the
#'  product of n numbers, as follows.
#' \deqn{y_g = \left(\prod_{i=1}^{n} y_i\right)^{1/n}}
#' for \eqn{y_i > 0}. It can also be understood as
#'  the average of the logarithmic values of a data set, converted back to a
#'  base 10 number.
#'  The geometric mean is a central position statistics of a random variable.
#'
#' @details Notice that can only be computed for positive values. For
#'  negative values, there
#'  are alternatives, but not covered here.
#'
#' @title Function to compute the geometric mean of a vector
#' @param v is a numeric vector
#'
#' @return This function returns the geometric mean, a numeric scalar.
#' @author Christian Salas-Eljatib.
#' @references
#' Salas-Eljatib, C. 2021. Análisis de datos con el programa estadístico R:
#' una introducción
#'  aplicada. Ediciones Universidad Mayor, Santiago, Chile. 170 p.
#'  \url{https://eljatib.com/rlibro}
#' @examples
#'
#' y.var <- runif(10, min=10, max=45)
#' gmean(y.var)
#' @rdname gmean
#' @export
#'
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
gmean <- function(v){
        prod(v)^(1/length(v))
        }
