#' Function to computes the P-value for a Standard Gaussian random variable.
#'
#' It is suited to compute the P-value for any random variable following a
#' Standard  Gaussian probability density function.
#'
#' @title Obtain the P-value for a Standard Gaussian random variable
#' @param zval A numeric random variable following a Standard Gaussian
#'  distribution.
#' @param decnum the number of decimals to be used in the output.
#'  The default is set to 5.
#'
#' @return This function returns the P-value or probability of getting a
#' value as large as 'zval'.
#' @author Christian Salas-Eljatib
#'
#' @examples
#'
#' pvalz(1.96)
#'
#' @rdname pvalz
#' @export
#'
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
pvalz<-function(zval,decnum=5){
  round(((1-stats::pnorm(abs(zval)))*2),decnum)}
