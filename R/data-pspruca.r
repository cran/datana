#' Tree spatial coordinates in the Rucamanque forest
#'
#' @description
#' Tree-level variables and spatial coordinates in a permanent sample plot
#' of 1 ha (100 x 100m) in the Rucamanque
#'  experimental forest, near Temuco, Chile.
#' @usage
#' data(pspruca)
#' @format The data frame contains four variables for the standing-alive
#' trees as follows:
#' \describe{
#' \item{tree}{Tree number identification.}
#'   \item{spp}{Codificación de la especie como sigue: 
#'   "A. punctatum" es *Aextoxicon punctatum*, 
#' "E. cordifolia" es *Eucryphia cordifolia*, 
#' "G. avellana" es *Gevuina avellana*, 
#' "L. dentata" es *Lomatia dentata*, 
#' "L. philippiana" es *Laureliopsis philippiana*, 
#' "L. sempervirens" es *Laurelia sempervirens*, 
#' "N. obliqua" es *Nothofagus obliqua*, "P. lingue" es *Persea lingue*, 
#' y "Other" representa a cualquier especie distinta a cualquiera
#' de las ya definidas.}
#' \item{crown.class}{Crown class (1: superior, 2: intermediate, 3; inferior)}
#' \item{dbh}{diameter at breast-height, in cm}
#' \item{x.coord}{Cartesian position at the X-axis, in m}
#' \item{y.coord}{Cartesian position at the Y-axis, in m}
#'  }
#' @source
#' Data were provided by Dr Christian Salas-Eljatib
#'  (Universidad de Chile, Santiago, Chile).
#' @references
#' Salas C, LeMay V, Nunez P, Pacheco P, and Espinosa A. 2006.
#' Spatial patterns in an old-growth Nothofagus obliqua forest in
#' south-central Chile. Forest Ecology and Management 231(1-3): 38-46.
#'  \doi{10.1016/j.foreco.2006.04.037}
#' @examples
#' data(pspruca)
#' head(pspruca)
#' table(pspruca$species)
'pspruca'
