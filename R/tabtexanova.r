#' Function to create a LaTeX file of an ANOVA table.
#' 
#' @details The resulting file is a LaTeX table, that can be
#' added to your main LaTeX document by using `\input{filename}`.
#' 
#' @title Creates a LaTeX file having an ANOVA table
#' for a previously fitted linear regression model
#' 
#' @param mod an object containing the fitted model by using
#' the `lm()` function.
#' @param cap a string having the caption of the LaTeX table.
#' @param nametab a string having a brief name to be used in
#' both the label of the table and the file name. For instance,
#' if "=mod1", the table can be refered in your LaTeX
#' document by using `\ref{tab:mod1}`
#' @param save.file The defauls is set to ``FALSE'', if is set to
#' TRUE, then the option `filename` must be provided.
#' @param filename A string having the name of the resulting LaTeX
#' file having the table. The default is set to "tabdescdata.tex".
#' @param eng The language to be used in the output. English
#'  is the default, meanwhile if `eng`=FALSE, Spanish is used.
#' @param rowlab a character with the name to be used as label for
#' the column where the variables will be printed. The default is
#' set to "Parameter".
#' @param decnum the number of decimals to be used in the output. The
#' default is set to 3.
#' @param font.size.tab The defauls is set to "normalsize". You could
#'  also try with "footnotesize". 
#' @param font.type.tab The defauls is set to "normalfont".
#' @importFrom utils head
#'
#' @return This function creates a LaTeX file having 
#' an ANOVA table, from a fitted regression model.
#' @author Christian Salas-Eljatib.
#' @references
#' Salas-Eljatib, C. 2021. Análisis de datos con el programa
#' estadístico R: una introducción aplicada. Ediciones Universidad
#' Mayor, Santiago, Chile. 170 p. \url{https://eljatib.com/rlibro}
#' @examples
#'
#' df <- datana::fishgrowth2
#' head(df)
#' descstat(df[,c("largo","edad")])
#' plot(largo ~ edad, data=df)
#' mod1<-lm(largo ~ edad, data=df)
#' ##example 1
#' tabtexanova(mod=mod1,nametab="anovatab",
#' cap="ANOVA-style table of the fitted regression model")
#' ##example 2
#' tabtexanova(mod=mod1,nametab="anovatab",
#' cap="Cuadro estilo ANOVA para modelo de regresion ajustado",
#' eng=FALSE)
#' @rdname tabtexregre
#' @export
#' 
##@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
tabtexanova<-function(mod=mod,nametab=nametab,cap=cap,
       save.file=FALSE,filename="tabregre.tex",eng=TRUE,
    rowlab="Source of variation",decnum=3,font.size.tab="normalsize",
   font.type.tab="normalfont"){

    tab.h.ori<-stats::anova(mod)
    #source of variation
sv.aju<-row.names(tab.h.ori)    
tab.h<-data.frame(as.matrix(tab.h.ori))#summary(mod)[["coefficients"]]
tab.h<-round(tab.h,decnum)
    df.aju<-tab.h[,1];df.aju
    sq.aju<-tab.h[,2];sq.aju
stc<-sum(sq.aju)        
    ms.aju<-tab.h[,3];ms.aju
    fc.aju<-tab.h[,4];fc.aju
vp.aju<-tab.h[,5];vp.aju

    tab.h<-data.frame(sv=sv.aju,df=df.aju,sq=sq.aju,ms=ms.aju,fc=fc.aju,vp=vp.aju)
    tab.h
    dim(tab.h)
    tot.df<-sum(df.aju); tot.sq<-sum(sq.aju);tot.ms<-sum(ms.aju)
    tot.res<-round(c(tot.df,tot.sq,tot.ms),decnum)
    total<-c("Total",tot.df,tot.sq,tot.ms,"","")
    tab.h
    tab.h<-rbind(tab.h,total)

    
    ncol.aca<-ncol(tab.h);ncol.aca
tab.h$vp[tab.h$vp == 0] <- "<2e-16"   
#tab.h[tab.h[,ncol.aca]==0,ncol.aca]="<2e-16"
tab.h<-as.data.frame(tab.h)
#sigma.mod.aca <- round((summary(mod))$sigma,decnum)
    ncol.aca<-ncol.aca-1
source.names<-sapply(sv.aju, upperleft)
    source.names<-c(source.names,"Total")
    source.names

 if(eng==FALSE){   
    source.names[source.names=="Residuals"]<-"Residuales"
 }
    
tab.h<-tab.h[,-1]        
row.names(tab.h)<-c(source.names)
col.names.tab<-c("Degrees of","Sum of","Mean","$F$ test","$Pr(>F)$")
    
if(eng==FALSE){    
    col.names.tab<-c("Grados de","Suma de","Cuadrados","Test $F$","$Pr(>F)$")    
}
    
colnames(tab.h)<-col.names.tab    

extra.col.names.tab<-c("freedom","squares","squares","","`$P$-value'")
    
if(eng==FALSE){    
    extra.col.names.tab<-c("libertad","cuadrados","medios","calculado","`valor-$P$'")    
}
    
if(save.file==TRUE){    
fileNametex<-filename
}

if(eng==FALSE){rowlab<-"Fuente de variaci\\'on"}
    
rowlabel.h <-rowlab
labtab.h <- paste("tab:",nametab,sep = "")

if(save.file==TRUE){
l <-Hmisc::latex(tab.h,
 size=font.size.tab, cgroupTexCmd=font.type.tab,rowlabel=rowlabel.h, 
 file=fileNametex, col.just=rep("c",ncol(tab.h)),
 extracolheads=extra.col.names.tab,
 extracolsize=font.size.tab,
 first.hline.double=FALSE,double.slash=FALSE,caption=cap,
 caption.loc="top",label=labtab.h,where="!h")} else {nada=99}
    
if(save.file==FALSE){
message("=======Start of the output=======")                
message("The following is the LaTeX output table","\n")        
Hmisc::latex(tab.h,file="",
 size=font.size.tab, cgroupTexCmd=font.type.tab,rowlabel=rowlabel.h, 
  col.just=rep("c",ncol(tab.h)),
 first.hline.double=FALSE,double.slash=FALSE,caption=cap,
 caption.loc="top",label=labtab.h,where="!h")        
message("=======End of the output=======","\n")                  
    }  else {nada=99}

message("=======Storing some ANOVA outputs=======")
tab.aov<-tab.h.ori
gl.mod<-tab.aov[1:nrow(tab.aov)-1,1];gl.mod;
gl.resi<-tab.aov[nrow(tab.aov),1];gl.resi
sec<- sq.aju[nrow(tab.aov)];sec    
src<-stc-sec
sec<-round(sec,decnum)
src<-round(src,decnum)
stc<-round(stc,decnum)
out<-list(sv=sv.aju,df=df.aju,sq=sq.aju,ms=ms.aju,fc=fc.aju,vp=vp.aju,
              src=src,sec=sec,stc=stc)
return(out)    
}
