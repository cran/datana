#' Creates a table with the prediction statistics for
#' previously fitted models, based on the observed data.
#'  
#' @details The function computes prediction statistics for a
#' previously fitted model, and prepare an output summarizing the
#' results to facilitate the comparison among models.
#' 
#' @title Function to create a table with the prediction statistics
#' by model.
#' @param data a dataframe having the predicted and observed values
#' of the response variable for a set of models. 
#' @param y.obs a character giving the column name of the response
#' variable for the data.
#' @param y.pred a character giving the column name of the predicted
#' value for the response variable giving the predictor(s)
#' variable(s) values for the data and the respective fitted model.
#' @param model a character giving the column name for the name of
#' previously fitted model(s).
#' @param val.class If validation classes were assigned to each
#' observation, this option corresponds to character giving the
#' column name of the validation class. By default this option
#' is set to `NA`, meaning is not available.
#' @param want.by.valcl A logical option for requesting to also
#' computed the prediction statistics by validation classes, which
#' are stored in the column defined in `val.class`. By default is set
#' to `FALSE`.
#' @param want.all.outputs A logical option to save a full set of result elements 
#' in the output, thus the output is class `list`. By default is set
#' to `FALSE`.
#'
#' @return The main output is a table having as number of rows the
#' total number of fitted models, and number of columns the
#' statistics being computed. By default the statistics implemented
#' in the `valesta()` function are computed.
#'  
#' @author Christian Salas-Eljatib and Marcos Marivil.
#' @references
#' - Salas C. 2002. Ajuste y validación de ecuaciones de volumen para un 
#' relicto del bosque de roble-laurel-lingue. 
#' Bosque 23(2):81–92. \doi{10.4067/S0717-92002002000200009}. 
#' 
#' @examples
#'
#' #Creates a fake dataframe
#' set.seed(1234);
#' Y=rnorm(30, 30,9);X=rnorm(30, 450,133); Z=rbeta(30, .1,2)
#' df <- as.data.frame(cbind(Y, X,Z))
#' ## Fitting some models
#' mod1 <- lm(Y~X, data=df)
#' mod2 <- lm(Y~X+I(X^2), data=df)
#' mod3 <- lm(Y~Z+I(X^2), data=df)
#' ## Preparing the format of the input-data for the function
#' df.m1<-df.m2<-df.m3<-df
#' df.m1$model<-"mod1";df.m1$y.aju=fitted(mod1)
#' df.m2$model<-"mod2";df.m2$y.aju=fitted(mod2)
#' df.m3$model<-"mod3";df.m3$y.aju=fitted(mod3)
#' dfypredmod<-rbind(df.m1,df.m2,df.m3)
#' head(dfypredmod)
#' table(dfypredmod$model)
#' # Example
#' valestamod(data=dfypredmod,y.obs="Y",y.pred="y.aju")
#' @rdname valestamod
#' @export
#' 
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
valestamod <- function(data = data , y.obs = "y.obs", y.pred = "y.pred",
                       model = "model",want.by.valcl = FALSE,
                       val.class = NA, want.all.outputs=FALSE){
    df<-data
    df$y.obs <- df[,y.obs]
    df$y.pred <- df[,y.pred]
    df$model <- df[,model]
    
    if(is.na(val.class)==FALSE){df$val.class <- df[,val.class]}
    
valmod.list<-by(df[,c("y.obs","y.pred")],df$model,FUN = function (x){
  datana::valesta(y.obs = x[,1],y.pred = x[,2],want.percent=FALSE)
})
output<-data.frame(do.call(rbind, valmod.list))
model<-row.names(output)
## ##! table a nivel total, sin segregar por clases 
tab.valtot<-data.frame(cbind(model,output))

output<-tab.valtot #list(valida.gral=tab.valtot)
    
if(want.by.valcl==TRUE){
      if(is.na(val.class)==TRUE){stop("You must declare the variable to be used for building the validation classes")}        
      ## ##! a nivel de clase de validacion
      valmod.valcl.list <- by(df[, c("y.obs", "y.pred")], 
                    list(df$model,df$val.class),
                    FUN = function(x) {
                         datana::valesta(y.obs = x[, 1], y.pred = x[, 2],want.percent=FALSE)})
      valmod.valcl.list
        
      model = attr(valmod.valcl.list, "dimnames")[[1]]
      val.class = attr(valmod.valcl.list, "dimnames")[[2]]
      tab.modcl <- expand.grid(   
        model = attr(valmod.valcl.list, "dimnames")[[1]],
        val.class = attr(valmod.valcl.list, "dimnames")[[2]]
      )
      
      ## ##! table segregada por clases de validacion
      tab.valcl <- do.call(rbind, valmod.valcl.list)
      tab.valcl <- data.frame(tab.modcl, tab.valcl, row.names = NULL)
      list.valcl <- split(tab.valcl, tab.valcl$model)
      tab.valcl.sortmod<-data.frame(do.call(rbind, list.valcl))
      row.names(tab.valcl.sortmod)<-1:nrow(tab.valcl.sortmod)
      
      ## mean among the validation classes
      mean.valclass <- by(tab.valcl[, 3:ncol(tab.valcl)], tab.valcl$model, colMeans)
      tab.meanvalcl <- do.call(rbind,mean.valclass)
      tab.meanvalcl <- data.frame(model=names(mean.valclass), tab.meanvalcl, row.names = NULL)
      colnames(tab.meanvalcl)[2:ncol(tab.meanvalcl)] <- 
#        paste0(colnames(tab.meanvalcl)[2:ncol(tab.meanvalcl)], ".cl.mean")
    paste0("mean",colnames(tab.meanvalcl)[2:ncol(tab.meanvalcl)], ".valcl")
      
      ## calcula sd
      sd.valclass <- by(tab.valcl[,3:ncol(tab.valcl)], tab.valcl$model, 
                        function (x) {sapply(x,stats::sd)})
      tab.sdvalcl <- do.call(rbind, sd.valclass)
      tab.sdvalcl <- data.frame(model=names(sd.valclass), tab.sdvalcl, row.names = NULL)
      colnames(tab.sdvalcl)[2:ncol(tab.sdvalcl)] <- 
   #       paste0(colnames(tab.sdvalcl)[2:ncol(tab.sdvalcl)], ".cl.sd")
       paste0("sd",colnames(tab.sdvalcl)[2:ncol(tab.sdvalcl)], ".valcl")
      
      #la salida necesaria para el ranking
      df.torank<- merge(merge(tab.valtot,tab.meanvalcl),tab.sdvalcl)
      
      ## salida de la funcion
      output<-list(valtot = tab.valtot,
                   valcl = tab.valcl,
                   valcl.b = tab.valcl.sortmod,
                   meanvalcl = tab.meanvalcl,
                   sdvalcl = tab.sdvalcl,
                   torank=df.torank)
      if(want.all.outputs==FALSE){
        output<-df.torank}
}
output    
}   
