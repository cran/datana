#' Assigns class of each observation in a dataframe
#'
#' @details The function assign a class or category to a random
#' variable of interest. Several alternatives are implemented
#' to define the way on which the allocation to a respective class
#' is carried out.
#'
#' @title Function to assign classes based upon a variable of interest.
#' @param data a dataframe having the variable of interest for each
#' observation.
#' @param variable a character giving the column name of the
#' numeric variable to be used for defining the limits
#' of each class.
#' @param num.class the number of classes to be build. The default
#' is set to 4. Regardless, the percentiles are used to set
#' the limits of each class.
#' @param breaks is a vector having the numbers to be used
#' as breakpoints, by default is set to `NULL`, therefore the
#' breakpoints will be determined by the `num.class`.
#' @param mincl the number of the minimum class to be
#' used. By default is set to `NULL`, otherwise, this
#' option is used to define the breaks.
#' @param wclass a number defining the width or amplitud of the
#' classes. By default is set to `NULL`, otherwise, the width is
#' determined by the previous explained options, such as, `breaks` or
#' `num.clases`.
#' @param name.class a character giving the column name of the new
#' class variable. By default is set to `NULL`, then, the column
#' name will be a composite-name merging the character provided
#' in `variable` followed by ".class". Otherwise, will
#' be `name.class`.
#'
#' @return The main output is the data including a new column having
#' the created class variable.
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
#' # Example 4, giving the amplitude
#' # of the classes
#' df<-assigncl(data=llancahue,variable="dbh",wclass = 5)
#' table(df$dbh.class)
#' tapply(df$dbh,df$dbh.class,range)
#' @rdname assigncl
#' @export
#'
##@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
assigncl <- function(data=data,variable=variable,num.class=4,
               breaks=NULL,wclass=NULL,mincl=NULL,name.class=NULL){
    df <- data
    name.clvar <- paste(variable,".class",sep="")
    df[name.clvar]<-0
    colpos.clvar<-ncol(df)
    df$x <- df[,variable]
    minx<-min(df$x);maxx<-max(df$x);minx;maxx
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

    df$var.class <- findInterval(df$x, breaksp,
                                 rightmost.closed = TRUE)
    num.class <- length(breaksp)+1
 #   if(!is.null(mincl)){num.class <- length(markcl)}

     #Option tuned for size class distributions     
    if(!is.null(wclass)){
    df$var.class<-(as.integer((df$x+((wclass/2)-0.1))/wclass))*wclass}
    df$var.class
    df$var.class <- as.factor(df$var.class)
    ## if(is.null(wclass)){
    ## if(is.null(mincl)){levels(df$var.class) <- 1:num.class}
    ## if(!is.null(mincl)){levels(df$var.class) <- markcl}
    ## }    
    df$var.class <- as.numeric(as.character(df$var.class))
    df[,colpos.clvar]<-df$var.class
    df<-df[,1:colpos.clvar]
    if(!is.null(name.class)){name.clvar<-name.class}    
    names(df)[colpos.clvar]<-name.clvar
    output <- df
    output
}
