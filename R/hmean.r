#' Computes the harmonic mean of a numeric vector. It is the inverse
#' of the mean of the recriprocals of n numbers, as follows.
#' \deqn{y_h = \frac{n}{\left(\sum_{i=1}^{n} \frac{1}{y_i}\right)}}
#' for \eqn{y_i \neq 0}. 
#'  The harmonic mean can be used a central position statistics
#' of a random variable.
#'
#' @details Notice that can only be computed for values different
#'  from cero.
#'
#' @title Function to compute the harmonic mean of a numeric vector
#' @param v is a numeric vector
#'
#' @return This function returns the harmonic mean, a numeric scalar.
#' @author Christian Salas-Eljatib.
#' @references
#' Salas-Eljatib, C. 2021. Análisis de datos con el programa
#' estadístico R: una introducción aplicada. Ediciones
#' Universidad Mayor, Santiago, Chile. 170 p.
#'  \url{https://eljatib.com/rlibro}
#' @examples
#'
#' y.var <- runif(10, min=10, max=45)
#' hmean(y.var)
#' @rdname hmean
#' @export
#'
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
hmean <- function(v){
        length(v)/(sum(1/v))
        }
