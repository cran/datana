#' Árboles grandes en bosques cercanos a Tolga, en el Este de Noruega.
#'
#' @description
#' El área de estudio esta ubicada en la municiplaidad de Tolga, en la comuna
#'  de Hedmark, al Este de Noruega. 1109 parcelas de muestreo de 32 m × 32 m
#'  se establecieron en los bosques. En cada parcela, los árboles de
#'  pino escoses (Pinus sylvestris L.). que tuvieran un diámetro mayor a 35 cm
#'   fueron medidos y contados.
#' @usage
#' data(largetrees2)
#' @format Los datos poseen las siguientes dos columnas:
#' \describe{
#'   \item{parc}{Identificador de la parcela de muestreo.}
#' \item{y}{Número de árboles de gran diámetro encontrados en una parcela de
#' muestreo.}
#'  }
#' @references
#' - Korhonen L, Salas C, Ostgard T, Lien V, Gobakken T, Naesset E. 2016.
#' Predicting the occurrence of large-diameter trees using airborne laser
#' scanning. Canadian Journal of Forest
#' Research 46:461–469. \doi{10.1139/cjfr-2015-0384}
#' @source
#' Aunque el Prof. Christian Salas fue parte del estudio, acá se han
#' reproducido los datos necesarios que imitan la distribución de
#'  la variable aleatoria de interés, tal como se muestra en el
#'  estudio de Korkhonen et al (2016).

#' @examples
#' data(largetrees2)
#' head(largetrees2)
#' hist(largetrees2$y)
'largetrees2'
