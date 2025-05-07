#' Eleccion presidencial del 2021 en Chile.
#' @description
#' Datos de mesa de la eleccion presidencial del 2012 en Chile. La eleccion
#' se llevo a cabo el 19 de Diciembre del 2021.
#' @usage
#' data(president)
#' @format Los datos contienen las siguientes columnas:
#' \describe{
#'   \item{region.no}{Número de la region adminsitrativa de Chile.}
#'   \item{region}{Nombre de la region administrativa de Chile}
#'   \item{provincia}{Provincia.}
#'   \item{circu.senatorial}{Circunscripcion senatorial.}
#'   \item{distrito}{Distrit.}
#'   \item{comuna}{County.}
#'   \item{circu.elec}{Circunscripcion electoral.}
#'   \item{local}{Local de votacion. Generalmente es un colegio.}
#'   \item{no.mesa}{Número de mesa.}
#'   \item{tipo.mesa}{Tipo de mesa de votacion.}
#'   \item{mesas.fusionadas}{Mesa de votacion fucionada.}
#'   \item{electores}{Electores.}
#'   \item{nro.en.voto}{.}
#'   \item{candidato}{Candidato, ya sea Gabriel Boric o Jose A. Kast}
#'   \item{votos.tricel}{Número total de votos segun el TRICEL (Tribunal
#'   calificador de elecciones).}
#'  }
#' @source
#' Los datos fueron obtenidos desde el sitio web del Servicio Electoral del
#'  Gobierno de Chilean (SERVEL) en \url{https://www.servel.cl}.
#'  El archivo de datos descargado el 24 de Octubre del 2022 tenia el nombre
#'   Resultados mesa presidencial TRICEL 2v 2021-1.xlsx.
#' @examples
#' data(president)
#' head(president)
'president'
