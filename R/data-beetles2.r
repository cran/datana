#' Crecimiento poblacional de escarabajos
#'
#' @description
#' Mediciones temporales de densidad de escarabajos (*Tribolium confusum*) 
#' creciendo en  diferentes ambientes controlados.
#' 
#' @format 
#' \describe{
#'   \item{dias}{Número de días.}
#'   \item{dieta}{La cantidad de harina (en gramos) de ambientes donde crecen 
#'   los escarabajos.  Seis niveles del factor `dieta`.}
#'   \item{tipo}{Estados de desarrollo de los escarabajos, _i.e._, huevos, 
#'   larvas, pupas, y adultos.}
#'   \item{densidad}{Número total de individuos por ambiente de crecimiento.}
#'  }
#' @source  
#' Datos del Cuadro No. 1, page 116, de Chapman (1928). Serie de experimentos 
#' bajo condiciones controladas
#'  donde escarabajos (_Tribolium confusum_) se mantienen en ambientes de tamaño 
#'  conocido. 
#'  El periodo desde huevo a adulto es de aproximadamente de cuarenta días a 
#'  27 grados Celsius. Los datos fueron digitados por la Srta. Yamara
#'   Arancibia, una estudiante del Prof. Christian Salas-Eljatib.
#'  
#' @references 
#' - Chapman RN. 1928. The quantitative analysis of environmental factors. 
#' Ecology 9(2):111-122.  \doi{10.2307/1929348}
#' @examples
#' data(beetles2)    
#' table(beetles2$tipo)
#' nom.dieta<-unique(beetles2$dieta)
#' num.dieta<-length(nom.dieta)
#' ##Grafico de serie de tiempo
#' #primero algunos calculos
#' alys<-with(beetles2,tapply(
#'           densidad,list(as.factor(dias),as.factor(dieta)),sum)
#'           )
#' out<-as.data.frame(alys)
#' out$tiempo<-row.names(out)
#' head(out)
#' ##Figura 1 del paper
#' matplot(out[,"tiempo"], out[,1:num.dieta], las=1, type=c("b"),pch=1,
#'         xlab="Tiempo en dias",ylab="Densidad de individuos")
#' legend("topleft", legend = nom.dieta, title = "Dieta (gr)",
#'        col = 1:6, lty = 1:6, pch = 1)
'beetles2'
