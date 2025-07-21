#' The function creates a scatterplot with superposing boxplots
#' for the Y-axis variable segregated by classes (i.e., groups) of
#' the X-axis variable. For a scatterplot between
#' a response variable `Y` and a predictor variable `X`,
#'  this function superposes boxplots of the response by groups of the
#'  predictor variable.
#'  The main aim of the above described graph is to get a sense of the
#'   distribution of the response variable depending upon
#' the  predictor variable.
#'
#' @details Notice that the superposing boxplots for the Y-axis variable are
#' computed
#'  by grouping the X-axis variable in 10 classes. Those classes are set by
#'   computing the 0.1, 0.2, ..., 0.9-percentiles
#'  of the X-axis variable, therefore each group has the same number of
#'   observations. The wide of the boxplot represent the extend of the
#'   respective X-axis variable used for drawwing each boxplot.
#'
#' @title Function for building a scatterplot with superposing boxplots
#'
#' @param x A numeric vector representing the X-axis variable.
#' @param y A numeric vector representing the Y-axis variable (response).
#' @param x.category A logical statement, if set to TRUE, the X-axis variable
#' will be treated as categorical for the drawing of the boxplots. The default
#' is set to FALSE.
#' @param num.classes The number of classes to be used for computing
#' the prediction capabilities. The default
#' is set to `10`.
#' @param segre.type A string specifying the type of segregation
#' to build the classes. The types are: (a) `percentile` implies to
#' segregate with the same amount, or close, of observations to each
#' of the defined `num.classes`. (b) `user.defined` implies that
#' the user must provided the limits of the `num.classes`-1. The
#' default is set to `percentile`. Notice if `user.defined` is
#' specified, the option
#' @param limi.classes A vector of size `num.classes-1` containing
#' the limits to be used for defining the classes. 
#' @param ylab (optional) A string specifying Y-axis label.
#' @param xlab (optional) A string specifying X-axis label.
#' @param ylim (optional) A numeric vector having the minimum and maximum, 
#' respectively for the Y-axis variable.
#' @param xlim (optional) A numeric vector having the minimum and maximum, 
#' respectively for the X-axis variable.
#' @param col.dots A string specifying the dot colors. The default
#'  value is "blue".
#' @param transp.dots A numeric value to be used as transparency for the
#' dots of the figure to be produced. The defauls is set to 0.2
#' @param cex.dots A numeric factor altering the size of the dots. The 
#' default value is 0.7.
#' @param pch.dots A numeric factor altering the shape of the dots.
#' @param col.box A string specifying the boxplot color. The default
#'  is "red"
#' @param transp.boxp A numeric value to be used as transparency for the
#' boxpot of the figure to be produced. The defauls is set to 0.1
#' @param class.ticks.lwd The numeric width of the tick line for each of the 
#' X-axis variable classes. By default is set to 1.
#' @param class.marks.col A string with the color of the mark value for each of the 
#' X-axis variable classes. By default is set to "black".
#' @param class.ticks.col A string with the color of the tick line for each of the 
#' X-axis variable classes. By default is set to "red".
#' @param class.marks Whether (logic: TRUE or FALSE) the number value of each of 
#' the X-axis variable classes should be printed. By default is set to FALSE.
#' @param class.ticks Whether (logic: TRUE or FALSE) the number tick of each of 
#' the X-axis variable classes should be printed. By default is set to TRUE.
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
#' xyboxplot(x=df$length,y=df$scale)
#' xyboxplot(x=df$length,y=df$scale,col.dots = "red",
#' xlab="Variable X")
#' xyboxplot(x=df$length,y=df$scale,xlab="Variable X")
#' 
#' ## dots with alpha channel
#' xyboxplot(x=df$length,y=df$scale,xlab="Variable X",
#' transp.dots = 0.4)
#' 
#' ## with categorical x
#' xyboxplot(x=df$age,y=df$length,x.category = TRUE)
#' 
#' ## fixed x axis limits
#' xyboxplot(x=df$age,y=df$length,x.category = TRUE, xlim = c(0,10))
#' 
#' ## x marks width to .5
#' xyboxplot(x=df$age,y=df$length,x.category = TRUE, xlim = c(0,10),
#'           class.ticks.lwd = .5)
#' 
#' ## x marks red and width 2
#' xyboxplot(x=df$age,y=df$length,x.category = TRUE, xlim = c(0,10),
#'           class.ticks.lwd = 2, class.ticks.col = "red")
#' 
#' ## larger dots
#' xyboxplot(x=df$age,y=df$length,x.category = TRUE, xlim = c(0,10),
#'           cex.dots = 1.5)
#' 
#' ## print classes ticks
#' xyboxplot(x=df$age,y=df$length,x.category = TRUE, xlim = c(0,10),
#'           class.marks = FALSE, class.ticks.col = "green")
#' 
#' ### the x-variable not recorded such as a categorical variable
#' df <- datana::fishgrowth
#' ## print classes ticks, by default with red color
#' xyboxplot(x=df$length, y=df$scale)
#' 
#' ## don't print ticks
#' xyboxplot(x=df$length, y=df$scale, class.ticks=FALSE)
#' 
#' ## print classes marks values
#' xyboxplot(x=df$length, y=df$scale, class.marks=TRUE)
#' 
#' ## print classes marks values without ticks
#' xyboxplot(x=df$length, y=df$scale, class.marks=TRUE, class.ticks=FALSE)
#' 
#' ## change class marks and ticks colors
#' xyboxplot(x=df$length, y=df$scale, class.marks=TRUE,
#'           class.marks.col = "red",
#'           class.ticks.col = "blue")
#' 
#' ## bigger ticks
#' xyboxplot(x=df$length, y=df$scale, class.marks=TRUE,
#'           class.marks.col = "red",
#'           class.ticks.col = "blue", class.ticks.lwd=3)
#' 
#' ## Changing the number of the X-variable classes
#' xyboxplot(x=df$length,y=df$scale,num.classes=5)
#' 
#' ## Defining the classes not by percentiles, but by fixed values
#' xyboxplot(x=df$length,y=df$scale,xlim=c(0,410),
#' ylim=c(0,20),num.classes=4,
#' segre.type="fixed",limi.classes=c(140,195,250))
#' 
#' ## Note that the limits must be in agreement with the num.classes
#' xyboxplot(x=df$length,y=df$scale,xlim=c(0,410),ylim=c(0,20),
#' num.classes=5,segre.type="fixed",limi.classes=c(100,160,200,250))
#' 
##+===========================================================
xyboxplot<-function(x=x, y=y, col.dots="blue",transp.dots=0.1,
                    xlab=NULL, ylab=NULL,num.classes=10,
                 segre.type="percentile",limi.classes=NA,   
                 x.category=FALSE,pch.dots=19,
                 col.box="red",transp.boxp=0.07,xlim=NA,ylim=NA,
                 class.ticks.lwd=1,class.ticks.col="red",
                 class.marks.col = "black",
                 cex.dots=0.7,class.marks=FALSE, class.ticks=TRUE){
    ## ## ##@@@@@@@@@@@ ---- Internal review ---- @@@@@@@@@@@@
    ## ## (a), source to the function
    ## ## (b), run example 1
##     db <- datana::fishgrowth;x=db$length;y=db$scale;
##     transp.dots=0.1;transp.boxp=0.07;col.dots="blue";xlab="x-lab aca";ylab="y-lab aca"
##     col.box="red"
##     x.category=FALSE;xlim=NA;ylim=NA;
##     class.ticks.lwd=1;class.ticks.col="red";cex.dots=0.7;
##     class.marks=FALSE; pch.dots=19;num.classes=10
##     ## ## plot(y~x)
##           xyboxplot(x=x,y=y)
##     xyboxplot(x=x,y=y,xlim=c(0,410),ylim=c(0,20),xlab="xx",ylab="yy")
##      xyboxplot(x=x,y=y,num.classes=5)
##   xyboxplot(x=x,y=y,xlim=c(0,410),ylim=c(0,20),
##             num.classes=4,segre.type="fixed",limi.classes=c(140,195,250))
## xyboxplot(x=x,y=y,xlim=c(0,410),ylim=c(0,20),
##     num.classes=5,segre.type="fixed",limi.classes=c(100,160,200,250))    
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
  df <- data.frame(x,y)
  
  if(prod(is.na(xlab))){has.xlab <-0} else {has.xlab <-1}
  has.xlab
  if(has.xlab==1){xlab.h<-xlab}
  if(has.xlab==0){xlab.h<-names(df)[1]}
  if(prod(is.na(ylab))){has.ylab <-0} else {has.ylab <-1}
  if(has.ylab==1){ylab.h<-ylab}
  if(has.ylab==0){ylab.h<-names(df)[2]}
  xlab.h;ylab.h
  if(prod(is.na(xlim))){has.xlim <-0} else {has.xlim <-1}
  has.xlim
  if(has.xlim==1){xlim.h<-xlim}
  if(has.xlim==0){xlim.h<-c(range(df$x)[1]*.9,range(df$x)[2]*1.1)}
  xlim.h
  if(prod(is.na(ylim))){has.ylim <-0} else {has.ylim <-1}
  if(has.ylim==1){ylim.h<-ylim}
  has.ylim
  if(has.ylim==0){ylim.h<-c(range(df$y)[1]*.9,range(df$y)[2]*1.1)}
  ylim.h
  
  ylab.h
  ###===========================================
  ###(i) When x.category is FALSE
  x.category
    if(x.category==FALSE){
     delta.w<-1/num.classes; delta.w;
   lim.lastclass<-1-delta.w;lim.lastclass;
   lim.lastclass2<-1-(2*delta.w);lim.lastclass2;
   cls.x.marks <-
       stats::quantile(df$x, seq(delta.w, lim.lastclass, by=delta.w))
 if(segre.type=="fixed" & length(limi.classes)!=(num.classes-1)){
     message("Error: length of 'limi.classes' must be equal to 'num.classes-1', please fix this issue")
  stop()}
  if(segre.type=="fixed"){cls.x.marks=limi.classes}   
    cls.x.marks
     cls.x.marks1 <- stats::quantile(df$x, seq(.0, lim.lastclass2, by=delta.w))
     if(segre.type=="fixed"){cls.x.marks1=c(min(x),limi.classes[1:(length(limi.classes)-1)])}    
    cls.x.marks1
    marca.clase<-cls.x.marks1+((cls.x.marks-cls.x.marks1)/2)
    marca.clase
    data.frame(cls.x.marks,cls.x.marks1,marca.clase)
    max(df$x)-cls.x.marks[length(cls.x.marks)]
    df$x.class <- findInterval(df$x, cls.x.marks)
    df$x.class<- df$x.class+1
    sort(unique(df$x.class))
    x.val.lab<-cls.x.marks #not needed, maybe
    last.cls.x<-      max(marca.clase)+((max(df$x)-max(marca.clase))/2)
    last.cls.x
    mc<-marca.clase<-c(marca.clase,last.cls.x);mc
    x.class<-(sort(unique(df$x.class)))
    tab.marca<-data.frame(x.class,mc)
    df<-merge(df,tab.marca,by="x.class")
    graphics::plot(df$x, df$y, xlab = xlab.h, ylab = ylab.h, pch = pch.dots, 
         cex = cex.dots,bty="l",xaxs = "i",yaxs = "i",
    col=scales::alpha(col.dots,transp.dots),
    xlim=xlim.h,ylim=ylim.h,las=1)
    mc.c <- (utils::head(cls.x.marks, -1) + utils::tail(cls.x.marks, -1)) / 2
    mc.ids <- (df$x.class)
    mc.c<-mc
    num.clases<-length(mc.c)
    ##correccion para ultima clase...
    mc.c[num.clases]<-cls.x.marks[(num.clases-1)]+(max(df$x)-cls.x.marks[(num.clases-1)])/2
    seq.h<-mc.c
    if(class.marks==FALSE & class.ticks==TRUE){
      graphics::axis(side=1,at=seq.h,tcl=0.5,lwd.ticks=class.ticks.lwd,
           mgp=c(0,0.5,0),col.ticks =class.ticks.col,labels=NA)}

    if(class.marks==TRUE & class.ticks==FALSE){
        graphics::axis(side=1,at=seq.h,tcl=0.5,lwd.ticks=NA,
                       mgp=c(0,0.5,0),col.ticks =NA, col.axis = class.marks.col)}
    
    if(class.marks==TRUE & class.ticks==TRUE){
      graphics::axis(side=1,at=seq.h,tcl=0.5,lwd.ticks=class.ticks.lwd,
           mgp=c(0,0.5,0),col.ticks =class.ticks.col, col.axis = class.marks.col)}

    if(class.marks==FALSE & class.ticks==FALSE){
        graphics::axis(side=1,at=seq.h,tcl=0.5,lwd.ticks=NA,
                       mgp=c(0,0.5,0),col.ticks =NA, labels = NA)}
    
    # axis(side=1,at=seq.h,tcl=0.5,lwd.ticks=class.ticks.lwd,
    #      mgp=c(0,0.5,0),col.ticks =class.ticks.col)
    #ancho de cada clase
    w.ampl<-diff(cls.x.marks)
    w.ampl
    #correccion primera
    w.ampl.first<-cls.x.marks[1]-min(df$x)
    w.ampl.first
    w.ampl<-c(w.ampl.first,w.ampl)
    w.ampl.final<-max(df$x)-cls.x.marks[length(cls.x.marks)]
    w.ampl.final
    w.ampl<-c(w.ampl,w.ampl.final)
    w.ampl
    cls.x.marks
    # abline(v=min(df$x),col="red",lty=2)
    # abline(v=max(df$x),col="red",lty=2)
    # Overlay boxplots
    for (i in 1:length(mc.c)) {
      ampl.h<-w.ampl[i]*2
      # if(i<10){abline(v=cls.x.marks[i],col="green",lty=2)} else {
      #   abline(v=max(df$x),col="green",lty=2)}
      y.en.clase <- df$y[mc.ids == i]
      y.en.clase
      if (length(y.en.clase) > 0) {
        graphics::boxplot(y.en.clase, at = mc.c[i], add = TRUE, boxwex =ampl.h,
                col=scales::alpha(col.box,transp.boxp),
                outline=F,axes = FALSE,  
                border = "black",lwd=.5)
      }
    }
  }
  
  ###(ii) When x.category is TRUE
  x.category
  if(x.category==TRUE){
    df$mc<-df$x
    mc.c<-sort(unique(df$mc));mc.c
    #ancho de cada clase
    w.ampl<-diff(mc.c)
    w.ampl
    w.ampl.final<-max(df$x)-mc.c[length(mc.c)]
    w.ampl.final
    if(w.ampl.final==0){w.ampl.final<-w.ampl[length(w.ampl)]}
    w.ampl<-c(w.ampl,w.ampl.final)
    w.ampl
    
    ##The actual plot
    graphics::plot(df$x, df$y, xlab = xlab.h, ylab = ylab.h, pch = pch.dots, cex = cex.dots,bty="l",xaxt = "n",
         col=scales::alpha(col.dots,transp.dots),xlim=xlim.h,ylim=ylim.h,las=1,xaxs = "i",yaxs = "i")
    seq.h<-mc.c
      graphics::axis(side=1,at=seq.h,tcl=-0.5,lwd.ticks=class.ticks.lwd,
           mgp=c(0,0.8,0),col.ticks =class.ticks.col)
    
    
    for (i in 1:length(mc.c)) {
      ampl.h<-w.ampl[i]*2
      y.en.clase <- df$y[df$mc == mc.c[i]]
      y.en.clase
      if (length(y.en.clase) > 0) {
        graphics::boxplot(y.en.clase, at = mc.c[i], add = TRUE, boxwex =ampl.h,
                col=scales::alpha(col.box,transp.boxp),
                outline=F,axes = FALSE,  
                border = "black",lwd=.5)
      }
    }
    
    
  }
}
#+===========================================================
