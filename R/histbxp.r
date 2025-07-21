#' The function creates a figure having both an histogram and a
#' boxplot for a random variable, as a way to help understanding
#' its distribution.
#'
#' @details The variable must be numeric.
#'
#' @title Function for building a figure having both an histogram
#' and a boxplot for a single random variable
#'
#' @param y A numeric vector representing the random variable.
#' @param varlab (optional) A string specifying the random variable
#' label. The default is set to "Variable".
#' @param cex.varlab A numeric value for the `cex` option of plotting
#' to the assigned `varlab` element. The default value is set
#' to `1.2` .
#' @param freqlab (optional) A string specifying the frequency label.
#' The default is set to "Frequency". 
#' @param freqlim (optional) A numeric vector having the minimum and
#' maximum, respectively for the frequency axis.
#' @param varlim (optional) A numeric vector having the minimum and
#' maximum, respectively for the random variable.
#' @param col.hist A string specifying the histogram color. The
#' default is "gray".
#' @param col.bxp A string specifying the boxplot color. The
#' default is "gray".
#' @param eng logical; if "TRUE" (by default), the language of some
#' default text will be in English; if "FALSE" will be in Spanish.
#' The default is to "TRUE".
#' @param portrait A logical statement, if set to TRUE, the boxplot
#' will be located under the histogram (2 rows, 1 column). If is set
#' to FALSE, the boxplot will be located next to the
#' histogram (1 row, 2 columns). The default is TRUE.
#' @param refval A numeric value to be used for printing as reference
#' for the random variable. By default is set to the mean of the
#' variable `y`.
#' @param print.refval A logical statement to define whether a
#' reference value should be printed, if set to TRUE, the
#' mean of the `y` vector will be plotted. The default is FALSE.
#' @param refval.symbol A string of type `expression` with name of the
#' `refval` being printed, if `print.refval` is set to TRUE. The default
#' is `expression(bar(y))`.
#' @param col.refval A string specifying the `refval.symbol` color,
#' if `print.refval` is set to TRUE. The default  is "blue"
#' @param oma As in the plot environment. The default
#' is  `c(3, .5, 2, 0)`.
#' @param mar As in the plot environment. The default
#' is ` c(1, 4.0, 0.2, 1)`.
#'
#' @references
#' - Salas-Eljatib C. 2021. Análisis de datos con el programa
#' estadístico R:
#' una introducción aplicada.
#' Ediciones Universidad Mayor. Santiago, Chile. 170 p.
#'  \url{https://eljatib.com}
#' @references
#' - Salas C, Stage AR, and Robinson AP. 2008. Modeling effects of
#' overstory density and competing
#' vegetation on tree height growth. Forest Science 54(1):107-122.
#'  \doi{10.1093/forestscience/54.1.107}
#' @return The function returns the above described graph.
#' @author Christian Salas-Eljatib
#' @export
#' @importFrom scales "alpha"
#'
#' @examples
#' df <- datana::fishgrowth
#' histbxp(y=df$length)
#' 
#' ### distribution of 'length'
#' ## with mean refval
#' histbxp(y=df$length, print.refval = TRUE)
#' 
#' ## with given refval
#' histbxp(y=df$length, print.refval = TRUE, refval = 250)
#' 
#' ## changing labels
#' histbxp(y=df$length, print.refval = TRUE, refval = 250,
#'         freqlab = "FREQ", varlab = "LENGTH")
#' 
#' ## changing colors
#' histbxp(y=df$length, print.refval = TRUE, refval = 250,
#'         freqlab = "FREQ", varlab = "LENGTH",
#'         col.hist = "blue",
#'         col.bxp = "green",
#'         col.refval = "red")
#' 
#' 
#' ### distribution of 'scale'
#' ## with mean refval
#' histbxp(y=df$scale, print.refval = TRUE)
#' 
#' ## landscape mode
#' histbxp(y=df$scale, print.refval = TRUE, portrait = FALSE)
#' 
#' ## with limits
#' histbxp(y=df$scale, print.refval = TRUE, portrait = FALSE,
#'         freqlim = c(0,100),
#'         varlim = c(0, max(df$scale)))
#' 
#+===========================================================
histbxp<-function(y=y, freqlab="Frequency", varlab="Variable",
    eng=TRUE,refval=NA,print.refval=FALSE,col.hist="gray",
    col.bxp="gray",portrait=TRUE,oma=c(3, .5, 2, 0),
    mar=c(1, 4.0, 0.2, 1),cex.varlab=1.2,
    refval.symbol=expression(bar(y)),
    col.refval="blue",varlim=NA,freqlim=NA){
    ## ## ##@@@@@@@@@@@ ---- Internal review ---- @@@@@@@@@@@@
    ## ## (a), source to the function
    ## ## (b), run example 1
    ## db <- datana::fishgrowth;x=db$length;y=db$scale;
    ## col.hist<-"gray";col.bxp="gray";varlab="Variable";
    ## refval=NA;varlim=NA;freqlim=NA;
    ## col.refval="blue";print.refval=FALSE;
    ## refval.symbol=expression(bar(y))
    ## oma=c(3, .5, 2, 0);mar= c(1, 4.0, 0.2, 1)
    ## freqlab<-"Frecuency";eng=TRUE
    ## portrait=TRUE;cex.varlab=1.2
    ## histbxp(y=y,eng=FALSE)
    ##  #    xyboxplot(x=x,y=y,xlim=c(0,410),ylim=c(0,20),xlab="xx",ylab="yy")
  # # #   # # # ## ## ## ## Thirdly, run a second example
  ## ## (c), run example 2
     ## db <- datana::fishgrowth;y=db$length;x=db$age;
     ## plot(y~x)
     ##  x.category=TRUE;xlim=NA;ylim=NA;xlab<-NULL;ylab<-NULL
     ##     xyboxplot(x=x,y=y,x.category = TRUE)
  # # # # #   # # # # #  
  #  xyboxplot(x=x,y=y,x.category = TRUE,xlim=c(0,10),ylim=c(0,390))
  #   xyboxplot(x=x,y=y,x.category = TRUE,xlim=c(0,10),ylim=c(0,500),         
  #                     xlab="loco-x",ylab="yyyy")
    ## ## ##@@@@@@@@@@@ ---- End of: internal review ---- @@@@@@@@@@@@
         
#  ylab.h
###===========================================
freq.labh<-freqlab
if(eng==FALSE){freq.labh<-"Frecuencia"}
freq.labh

h<-hist(y, plot=F);h$counts <- h$counts;
    fx.max.h<-    max(h$counts);fx.max.h
    names(h)
varlim.default<-range(h$breaks);varlim.default    
##! Frequency-axis limits
if(prod(is.na(freqlim))){has.freqlim <-0} else {has.freqlim <-1}
has.freqlim
if(has.freqlim==1){freqlim.h<-freqlim}
if(has.freqlim==0){freqlim.h<-c(0,fx.max.h)}
freqlim.h
freq.max<-freqlim.h[2];freq.max
##! Random-variable limits
if(prod(is.na(varlim))){has.varlim <-0} else {has.varlim <-1}
has.varlim
if(has.varlim==1){varlim.h<-varlim}
if(has.varlim==0){varlim.h<-varlim.default}
varlim.h
##! refval
if(prod(is.na(refval))){has.refval <-0} else {has.refval <-1}
has.refval
if(has.refval==1){refval.h<-refval}
if(has.refval==0){refval.h<-mean(y)}
refval.h

##- #(i) When portrait is TRUE
if(portrait==TRUE){
op <- par(mfcol=c(2,1),las=1,oma = oma,mar =mar)
        
##+(a)
graphics::hist(y,xlab=varlab,ylab = freq.labh,main='',las=1,
         ylim=freqlim.h,xlim=varlim.h, col=col.hist)

if(print.refval==TRUE){
    graphics::segments(refval.h, 0, refval.h, freq.max,
             col= col.refval,lty=2,lwd=2)
## text(refval*1.1, freq.max, cex=1.2,refval.symbol,font=2,
##      col=col.refval)
}

##+(b)
graphics::boxplot(y,xlab=varlab,las=1,horizontal = TRUE,
                  frame=FALSE,ylim=varlim.h, col=col.bxp)

if(print.refval==TRUE){
graphics::abline(v=refval.h, col= col.refval,lty=2,lwd=2)
graphics::text(refval.h*1.1,1.4, cex=1.2, refval.symbol,font=2, col=col.refval)
}
graphics::mtext(varlab,side=1,line=2.8,cex=cex.varlab)
par(op)
} else {nada=99}
    
##- #(ii) When portrait is FALSE
if(portrait==FALSE){
op <- par(mfcol=c(1,2),las=1,oma = oma,mar =mar)
        
##+(a)
graphics::hist(y,xlab=varlab,ylab = freq.labh,main='',las=1,
         ylim=freqlim.h,xlim=varlim.h,col=col.hist)

if(print.refval==TRUE){
    graphics::segments(refval.h, 0, refval.h, freq.max,
             col= col.refval,lty=2,lwd=2)
    graphics::text(refval.h*1.1, freq.max, cex=1.2,
       refval.symbol,font=2,col=col.refval)
}
graphics::mtext(varlab,side=1,line=2.8,cex=cex.varlab)

##+(b)
graphics::boxplot(y,xlab=varlab,las=1,horizontal = TRUE,
                  frame=FALSE,ylim=varlim.h, col=col.bxp)

if(print.refval==TRUE){
graphics::abline(v=refval.h, col= col.refval,lty=2,lwd=2)
graphics::text(refval.h*1.1,1.4, cex=1.2, refval.symbol,font=2, col=col.refval)
}
graphics::mtext(varlab,side=1,line=2.8,cex=cex.varlab)
par(op)
} else {nada=99}
    
}
#+===========================================================
