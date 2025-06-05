#' Function to compute the P-value for a Standard t-distributed
#' random variable.
#'
#' It is suited to compute the P-value for any random variable
#' following a Standard  t probability density function (pdf). For
#' instance, to obtain the p-value in a t-test.
#'
#' @title Obtain the P-value for a Standard t-distributed random
#' variable
#' @param t.value A numeric random variable following a t-student pdf
#' distribution.
#' @param df degrees of freedom of the random variable following a
#' t-student pdf distribution.
#' @param decnum the number of decimals to be used in the output.
#' The default is set to 5.
#'
#' @return The function returns the P-value or probability of getting a
#' value as large as t.value.
#' @author Christian Salas-Eljatib
#'
#' @examples
#' # Load dataset
#'  df <- datana::fertiliza2
#'  head(df)
#'  ## Computes the t-test statistics (from the 'stats' package)
#' t.value <- stats::t.test(df$vol)
#' t.value
#'  t.v <- as.numeric(t.value$statistic);t.v
#'  deg.f <- as.numeric(t.value$parameter);deg.f
#'
#'  ## Obtaining the p ##  pvalt(t.v,deg.f)
#'
#' @rdname pvalt
#' @export
#'
#+===================================================================
pvalt<-function(t.value,df,decnum=14){
    round(((1-stats::pt(abs(t.value),df))*2),decnum)
}
#+===================================================================
