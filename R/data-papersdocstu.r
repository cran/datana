#' Productividad científica de estudiantes de postgrado  
#' @description
#' Corresponde a un estudio realizado en la Universidad de Indiana, sobre el número
#' de papers publicados por estudiantes egresados de programas
#' de doctorado en bioquímica luego de 3 años.
#' @usage
#' data(papersdocstu)
#' @format Este set de datos contiene las siguientes columnas:
#' \describe{
#'   \item{papers}{Es el número de artículos cientificos publicados
#'   luego de 3 años de egresado.}
#'   \item{genero}{Hombre/mujer.}
#'   \item{est.civil}{Estado civil del egresado.}
#'   \item{nin.men5}{Número de hijos menores a 6 años que dependen del
#'   egresado.}
#'   \item{prog.prest}{Puntaje asignado al prestigio del programa de 
#'   postgrado.}
#'   \item{papers.guia}{Número de papers publicados por el profesor(a)
#'   guía del egresado, en el mismo periodo de tiempo.}
#'  }
#' @source 
#' Los datos fueron obtenidos desde el paquete 'AER'.
#' @references
#' Long, J.S. (1997). The Origin of Sex Differences in Science.
#  \emph{Social Forces}, \bold{68}, 1297--1315.
#' @examples
#' data(papersdocstu)
#' df<-papersdocstu    
#' head(df)
#' barplot(table(df$papers),xlab="Numero de papers publicados",
#'    ylab="Frecuencia (num. de estudiantes)")
#' table(df$genero)
#' table(df$est.civil,df$genero)
#' tapply(df$papers,df$est.civil,summary)
'papersdocstu'
