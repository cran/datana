#' Ubicación espacial de árboles en el bosque de Rucamanque
#'
#' @description
#' Medidas a nivel de árbol y coordenadas espaciales en un parcela de
#' muestreo permanente de 1 ha (100 x 100m) en el
#'  bosque de Rucamanque, cerca de Temuco, Chile. Mayores antecedentes en
#'  las referencias.
#' @usage
#' data(pspruca2)
#' @format Las columnas describen características de los árboles vivos en
#' pie, como sigue:
#' \describe{
#' \item{arbol}{Número del árbol}
#' \item{especie}{Nombre de la especie, "N. obliqua" es Nothofagus obliqua,
#' "Ap" es Aexitocicum puncatatum, etc.}
#' \item{clase.copa}{Clase de copa (1: superior, 2: intermedio, 3; inferior)}
#' \item{dap}{Diámetro a la altura del pecho, en cm}
#' \item{coord.x}{Posicion cartesiana en el eje X, en m}
#' \item{coord.y}{Posicion cartesiana en el eje Y, en m}
#'  }
#' @source
#' Los datos fueron cedidos por el Dr Christian Salas-Eljatib (Santiago, Chile).
#' @references
#' Salas C, LeMay V, Nunez P, Pacheco P, and Espinosa A. 2006.
#'  Spatial patterns in an old-growth Nothofagus obliqua forest in
#' south-central Chile. Forest Ecology and Management 231(1-3): 38-46.
#'  \doi{10.1016/j.foreco.2006.04.037}
#' @examples
#' data(pspruca2)
#' table(pspruca2$especie)
'pspruca2'
