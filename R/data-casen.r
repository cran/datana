#' Datos encuesta CASEN del 2022  
#' @description
#' Encuesta de Caracterización Socioeconómica Nacional (CASEN) de Chile, 
#'  es realizada por el Ministerio de Desarrollo Social y Familia con 
#'  el objetivo de disponer de información que permita conocer
#'  situación de los hogares y de la población. Estos datos corresponden
#'  a los de la encuesta CASEN 2022. 
#' @usage
#' data(casen)
#' @format Este set de datos contiene las siguientes columnas:
#' \describe{
#'   \item{id.vivienda}{Identificador de la vivienda.}
#'   \item{id.persona}{Identificador de la persona.}
#'   \item{region}{Región administrativa de Chile.}
#'   \item{comuna}{Comuna.}
#'   \item{edad}{Edad de la persona, en años.}
#'   \item{sexo}{Sexo de la persona.}
#'   \item{esc}{Años de escolaridad (edad >= 15).}
#'   \item{educ}{Clasificación de educación recibida.}
#'   \item{personas.hogar}{Número de personas que habitan en el hogar.}
#'   \item{tipohogar}{Nivel de tipo de hogar según encuesta.}
#'   \item{activ}{Nivel de actividad actual de la persona según encuesta.}
#'   \item{ytot}{Ingreso total.}
#'   \item{ytoth}{Ingreso total del hogar.}
#'   \item{ypch}{Ingreso total per cápita del hogar.}
#'   \item{ytotcor}{Ingreso total corregido.}
#'   \item{ytotcorh}{Ingreso total corregido del hogar.}
#'   \item{ypc}{Ingreso total corregido per cápita del hogar.}
#'   \item{mayor.nivel.edu}{¿Cuál es el nivel educacional al que asiste o el más alto al cual asistió?}
#'   \item{area.edu.cinef}{Clasificación Internacional Normalizada de Educación (CINE-F).}
#'   \item{subarea.edu.cinef}{Clasificación Internacional Normalizada de Sub-Area de Educación (CINE-F).}
#'   \item{previ.salud}{Sistema de previsión de salud.}   
#'  }
#' @source 
#' Los datos fueron obtenidos desde el web 
#' \url{https://observatorio.ministeriodesarrollosocial.gob.cl/encuesta-casen}.
#'  Note que solo algunas columnas son utilizadas aca, así
#'  como el nombre de algunas columnas fueron levemente cambiados.
#' @examples
#' data(casen)    
#' head(casen) 
#' table(casen$region)
#' table(casen$region,casen$sexo)
#' tapply(casen$ytotcor,casen$sexo,sum)
'casen'
