#' Puntaje ENDFID 2021 por carrera
#'
#' @description
#' Puntaje promedio por carrera de la Evaluación Nacional Diagnóstica de la 
#' Formación Inicial Docente (ENDFID), enfocado en matemática. Se tienen 79 observaciones.
#' Se incluyen dos variables binarias: `cuech` (pertenece `1` o no `0` al CUECH) y `pace` (tiene cupos PACE `1` o no `0`). 
#' @usage
#' data(endfid2)
#' @format Variables se describen a continuación:
#' \describe{
#' \item{programa}{Nombre de la carrera dictada}
#' \item{universidad}{Universidad correspondiente al programa}
#' \item{zona}{Ubicación de la sede de la carrera}
#' \item{region}{Región de la sede de la carrera}
#' \item{tipo.programa}{Tipo de carrera (1 Ped. En Matemáticas, 
#' 2 Enseñanza General Básica, 3 Programa formación pedagógica)}
#' \item{cuech}{Universidad pertenece al Consejo de Universidades del Estado (1 si, 0 no)}
#' \item{pace}{Carrera incluye cupos PACE (1 si, 0 no)}
#' \item{end.pcpg}{Puntaje promedio de la carrera en la Prueba de Conocimientos Pedagógicos Generales}
#' \item{end.pcdd}{Puntaje promedio de la carrera en la Prueba de Conocimientos Disciplinarios y Didácticos}
#' \item{matricula}{Cantidad de estudiantes matriculados en la carrera el 2022}
#'  }
#' @source
#' Datos obtenidos desde el Centro de Perfeccionamiento, Experimentación 
#' e Investigaciones Pedagógicas (CPEIP) del Mineduc y desde los
#' sitios web respectivo de cada universidad. Los datos fueron
#' digitados por Diego Fernández, estudiante del Prof. Christian Salas-Eljatib.
#'  
#' @examples
#' data(endfid2)
#' head(endfid2)
'endfid2'
