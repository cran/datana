#' Assigns class of each observation in a dataframe
#'
#' @details The function assign a class or category to be used for validation
#' purposes based upon a variable defined by the user.
#'
#' @title Function to assign validation classes
#' @param data a dataframe having the validation-variable for each
#' observation.
#' @param variable a character giving the column name of the variable
#' to be used for definning the limits of each validation class.
#' @param num.class the number of classes to be build. The default
#' is set to 4. Regardless, the percentiles are used for defining
#' the limits of each class.
#' @param breaks is a vector having the numbers to be used
#' as breakpoints, by default is set to `NULL`, therefore the
#' breakpoints will be determined by the `num.class`.
#' @param mincl the number of the minimum class to be
#' used. By default is set to `NULL`, otherwise, this
#' option is used to define the breaks.
#' @param wclass the number to be used for defining the
#' width or amplitud of the classes. By default is
#' set to `NULL`, otherwise, this option and `mincl` are
#' used to define the breaks.
#'
#' @return The main output is the data including a new column having
#' a composited name merging the character provided in `variable` and
#' ".class". See the examples.
#'
#' @author Christian Salas-Eljatib and Marcos Marivil.
#' @references
#' - Salas C. 2002. Ajuste y validación de ecuaciones de volumen para
#' un relicto del bosque de roble-laurel-lingue.
#' Bosque 23(2):81–92. \doi{10.4067/S0717-92002002000200009}.
#'
#' @examples
#'
#' # The data  
#' library(datana)
#' maple
#' # Example 1
#' graphics::boxplot(maple$dbh)
#' df<-assigncl(data=maple,variable="dbh")
#' head(df)
#' table(df$dbh.class)
#' # Example 2, changing the number of classes
#' df<-assigncl(data=maple,variable="dbh",num.class=5)
#' table(df$dbh.class)
#' tapply(df$dbh,df$dbh.class,range)
#' # Example 3, fixing the breakpoints
#' df<-assigncl(data=maple,variable="dbh",
#'              breaks = c(25.60,36.44,40.12,42.3))
#' table(df$dbh.class)
#' tapply(df$dbh,df$dbh.class,range)
#' # Example 4, giving the minimum and amplitude
#' # of the classes
#' df<-assigncl(data=llancahue,variable="dbh",mincl=5,
#'              wclass = 5)
#' table(df$dbh.class)
#' tapply(df$dbh,df$dbh.class,range)
#' @rdname assigncl
#' @export
#'
##@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
assigncl <- function(data=data,variable=variable,num.class=4,
               breaks=NULL,mincl=NULL,wclass=NULL){
    df <- data
    name.clvar <- paste(variable,".class",sep="")
    df[name.clvar]<-0
    colpos.clvar<-ncol(df)
    df$x <- df[,variable]
    if(num.class>10) {
        num.class <- 10
    }
    if(num.class<2) {
        num.class <- 2
    }
    jump <- 1/num.class; jump
    perc.lim <- seq(0,1,by=jump); perc.lim
    breaksp <- stats::quantile(df$x,perc.lim); breaksp
    if(!is.null(breaks)){breaksp <- breaks}

    if(!is.null(breaks)&!is.null(mincl)){
    message("Warning: you provided both the 'breaks' and 'mincl', but the function will use the 'mincl' to define the breaks")}
    #Option tuned for size class distributions     
     if(!is.null(mincl)){
    markcl<-seq(mincl,max(df$x),by=wclass)
    hwcl<- wclass/2 #half width of the class
         breaksp<-markcl+hwcl
         }
    df$var.class <- findInterval(df$x, breaksp,
                                 rightmost.closed = TRUE)
    num.class <- length(breaksp)+1
    if(!is.null(mincl)){num.class <- length(markcl)}
        
    df$var.class <- as.factor(df$var.class)
    if(is.null(mincl)){levels(df$var.class) <- 1:num.class}
    if(!is.null(mincl)){levels(df$var.class) <- markcl}
    
    df$var.class <- as.numeric(as.character(df$var.class))
    df[,colpos.clvar]<-df$var.class
    df<-df[,1:colpos.clvar]
    output <- df
    output
}
