#' Prepare a table that ranks previously fitted models according
#' to a series of statistics
#' 
#' @details The function assigns scores to models based on an array of 
#' statistics already computed. For instance, the function can use
#' the three prediction capabilities statistics RMSD, AD, and AAD,
#' that are computed by the function `valesta()`. Nonetheless, any
#' other statistics can be provided to the function. The only
#' requirement is that the lower the value of the
#' statistics (in absolute value), the better. The current version of
#' the function is based upon the approach proposed by Salas (2002).
#' 
#' @title Function to produce a table ranks the models being analyzed.
#' @param tabstatmod a data object having the statistics values for
#' each model. The first column must have the name of the model, and
#' the other columns are the statistics. 
#' @param all.refstat A logic option to specify the statistics to
#' be used for ranking the models. By default is to `TRUE`, implying
#' that all the statistics provided in the object (i.e., columns) are
#' going to be used for developing the ranking. If the
#' option `all.refstat` is set to `FALSE`, then the option `refstat`
#' must be specified.
#' @param refstat A vector with the names of the
#' columns (i.e., statistics) to be used. By the default is the name
#' of all the columns of the object `tabstatmod` but not including
#' the first column (it has the name of the model).
#' @param want.all.outputs A logic option to save a full set of
#' result elements in the output, thus the output is class `list`.
#' By default is set to `FALSE`.
#' 
#' @return The main result is a table having assigned scores for
#' each of the statistics, as well as the sum of the scores. The
#' column `ranking` has between the best ranking (number `1`) to
#' the lowest ranking (number equal to the quantity of models
#' being analyzed). The actual output is a list with two elements:
#' (1) a dataframe sorted by the number of the model,
#' and (2) a dataframe sorted by the ranking of the model.
#' 
#' @author Christian Salas-Eljatib and Marcos Marivil.
#' @references 
#' - Salas C. 2002. Ajuste y validación de ecuaciones de volumen
#' para un relicto del bosque de roble-laurel-lingue. 
#' Bosque 23(2):81–92. \doi{10.4067/S0717-92002002000200009}.
#' 
#' @examples 
#' ##Creates a fake dataframe  
#' set.seed(1234);y<-rnorm(30, 30,9);x<-rnorm(30, 450,133);z<-rbeta(30, .1,2)
#' db <- as.data.frame(cbind(y, x,z))
#' ## Fitting some models
#' mod1 <- lm(y~x, data=db)
#' mod2 <- lm(y~x+I(x^2), data=db)
#' mod3 <- lm(y~z+I(x^2), data=db)
#' ## Preparing the format of the input-data for the function
#' df.m1<-df.m2<-df.m3<-db
#' df.m1$model<-"mod1";df.m1$y.aju=fitted(mod1)
#' df.m2$model<-"mod2";df.m2$y.aju=fitted(mod2)
#' df.m3$model<-"mod3";df.m3$y.aju=fitted(mod3)
#' df<-rbind(df.m1,df.m2,df.m3)
#' head(df)
#' ##Assign validation class
#' df<-assigncl(data=df,variable="y")
#' table(df$model)
#' table(df$y.class)
#' head(df)
#' ##Computes prediction capabilities statistics
#' df.torank<-valestamod(data=df,y.obs = "y", y.pred="y.aju",
#'         want.by.valcl = TRUE,val.class = "y.class")
#' df.torank
#' ##Example 1: getting the main output, sorted by the ranking
#' rankmod(tabstatmod = df.torank)
#' ##Example 2: only consider a portion of the availables statistics
#' rankmod(tabstatmod = df.torank, all.refstat=FALSE,
#' refstat=c("rmsd","ad","aad"))
#' @rdname rankmod
#' @export
#' 
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
rankmod <- function(tabstatmod=tabstatmod, all.refstat=TRUE,
                    refstat=refstat,want.all.outputs=FALSE){
    df<-tabstatmod
    if(all.refstat==TRUE){refstat<-names(df[,2:ncol(df)])}
    if(all.refstat==FALSE){refstat<-refstat}
 num.refstat<-length(refstat);num.refstat
 num.models<-nrow(df)
    new.cols<-paste("P.",refstat,sep="")
    if(all.refstat==FALSE){df<-df[,c("model",refstat)]}
    if(all.refstat==FALSE){tabstatmod<-tabstatmod[,c("model",refstat)]}
    df[new.cols] <- 0
    inicio.col.stat<-2;fin.col.stat<-(inicio.col.stat-1)+num.refstat
    inicio.col.score<-fin.col.stat+1
    col.score<-fin.col.stat    
    for(i in inicio.col.stat:fin.col.stat){
        col.score<-col.score+1        
    df[order((abs(df[,i])),decreasing = FALSE), col.score]<-1:num.models
    }
 
    if(num.refstat==1){df$total.score<-df[,ncol(df)]}
    if(num.refstat>1){
      df$total.score<- rowSums(df[,inicio.col.score:ncol(df)])
    }
    df
    df$ranking<-0
    df[order(((df[,"total.score"])),decreasing = FALSE), "ranking"]<-1:num.models
    df
    out.tab<-df
    out.sorttab <- out.tab[order(out.tab$ranking), ]
    out.tabfull<-out.tab;out.sorttabfull<-out.sorttab
    
 out.tab<-
 merge(out.sorttabfull[,c("model","ranking")],tabstatmod,by="model")
    out.sorttab <- out.tab[order(out.tab$ranking), ]
    
 output<-list(tabrank=out.tab,tabrank.sor=out.sorttab,
          tabrank.full=out.tabfull,tabrank.sor.full=out.sorttabfull)   
    if(want.all.outputs==FALSE){output<-out.sorttab}
    output
}
