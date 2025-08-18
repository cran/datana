#' Tree height-diameter data from Idaho (USA)  
#' @description
#' These data are forest inventory measures from the Upper Flat Creek stand 
#' of the University of Idaho Experimental Forest, dated 1991.   
#' @usage
#' data(idahohd)
#' @format Contains five variables, as follows:
#' \describe{
#'   \item{plot}{Plot number.}
#'   \item{tree}{Tree within plot.}
#'   \item{spp}{Tree species. A factor variable having the following levels:
#' "DF" is Douglas-fir (*Pseudotsuga menziesii*), 
#' "GF" is Grand fir (*Abies grandis*), 
#' "SF" is Subalpine fir (*Abies lasiocarpa*), 
#' "WL" is Western larch (*Larix occidentalis*), 
#' "WC" is Western red cedar (*Thuja plicata*), and 
#' "WP" is White pine (*Pinus strobus*).}
#' \item{dbh}{Diameter 137 cm perpendicular to the bole, cm.}
#' \item{toth}{Height of the tree, in m.}
#'  }
#' @source 
#' The data were assembled from the 'ufc' dataframe from the \eqn{alr4} library.  
#' @references
#' Weisberg S. 2014. Applied Linear Regression. 4th edition. New York: Wiley.
#' @examples
#' data(idahohd)    
#' head(idahohd) 
#' plot(toth~dbh, data=idahohd)
'idahohd'
