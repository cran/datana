#' Tree locations for a sample plot in the Llancahue experimental forest 
#'
#' @description
#' The Cartesian position, species, and diameter of trees within a plot 
#' were measured. The sample plot is  rectangular of 130 m by 70 m. 
#' Further details can be #' reviewed in the reference. 
#' @usage
#' data(llancahue)
#' @format Contains tree-level variables, as follows:
#' \describe{
#'   \item{tree.code}{Tree identificator}
#'   \item{spp}{Tree species abreviation as follows: 
#'   "AP" is *Aextoxicon punctatum*, 
#' "EC" is *Eucryphia cordifolia*, 
#' "GA" is *Gevuina avellana*, 
#' "LP" is *Laureliopsis philippiana*, 
#' "LS" is *Laurelia sempervirens*, 
#' "ND" is *Nothofagus dombeyi*, "PS" is *Podocarpus saligna*, 
#' and "Ot" represents other species different from the above
#' described.}
#' \item{dbh}{diameter at breast height, in cm.}
#' \item{x.coord}{Cartesian position in the X-axis, in m.}
#' \item{y.coord}{Cartesian position in the Y-axis, in m.}
#'  }
#' @source 
#'  The data are provided courtesy of Prof. Daniel Soto at Universidad
#'  de Aysen (Coyhaique, Chile).
#' @references
#' - Soto DP, Salas C, Donoso PJ, Uteau D. 2010. Heterogeneidad
#' estructural y espacial de un bosque mixto dominado por
#' *Nothofagus dombeyi* después de un disturbio parcial. 
#' Revista Chilena de Historia Natural 83(3): 335-347.
#' @examples
#' data(llancahue)    
#' head(llancahue) 
#' descstat(llancahue$dbh)
#' boxplot(dbh~spp, data=llancahue)
'llancahue'
