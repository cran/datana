#' Population density growth of beetles
#'
#' @description
#' Temporal measurements of density of beetles (Tribolium confusum) growing in
#'  different controlled environments.
#' 
#' @format 
#' \describe{
#'   \item{days}{Number of days.}
#'   \item{diet}{The quantities of flour (in grams) of the environments where
#'    the beetles were growing.  Six levels of the factor Diet.}
#'   \item{type}{The various stage of beetles, i.e., eggs, larvae, pupae, 
#'   and adults.}
#'   \item{density}{The number of insects per environment.}
#'  }
#' @source  
#' Data from Table No. 1, page 116, of Chapman (1928). Series of experiments 
#' under controlled
#'  conditions in which flour beetles (Tribolium confusum) are kept in 
#'  environments of known size. 
#'  The period from egg to adult is approximately forty days at 27C degrees. 
#'  The data were entered by Miss Yamara Arancibia, a former 
#'  student of Prof. Christian Salas-Eljatib.
#'  
#' @references 
#' - Chapman RN. 1928. The quantitative analysis of environmental factors. 
#' Ecology 9(2):111-122.  \doi{10.2307/1929348}
#' @examples
#' data(beetles)
#' table(beetles$type)
#' name.diet<-unique(beetles$diet)
#' num.diet<-length(name.diet)
#' ##Time series plot
#' #first, some computation
#' alys<-with(beetles,tapply(density,list(as.factor(days),as.factor(diet)),sum))
#' out<-as.data.frame(alys)
#' out$time<-row.names(out)
#' head(out)
#' #Figure 1 of the paper
#' matplot(out[,"time"], out[,1:num.diet], las=1, type=c("b"),pch=1,
#'         xlab="Time in days",ylab="Total individuals")
#' legend("topleft", legend = name.diet, title = "Diet (gr)",
#'        col = 1:6, lty = 1:6, pch = 1)
"beetles"
