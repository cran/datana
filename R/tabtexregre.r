#' Function to create a LaTeX file for a table with
#'  the main fitting statistics from a fitted regression model.
#' 
#' @details The resulting file is a LaTeX table, that can be
#' added to your main LaTeX document by using `\input{filename}`.
#' 
#' @title Creates a LaTeX file having a fitting statistics table
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
#' the main fitting statistics of a linear regression model.
#' @author Christian Salas-Eljatib.
#' @references
#' Salas-Eljatib, C. 2021. Análisis de datos con el programa
#' estadístico R: una introducción aplicada. Ediciones Universidad
#' Mayor, Santiago, Chile. 170 p. \url{https://eljatib.com/rlibro}
#' @examples
#'
#' df <- datana::fishgrowth2
#' head(df)
#' datana::descstat(df[,c("largo","edad")])
#' graphics::plot(largo ~ edad, data=df)
#' mod1<-stats::lm(largo ~ edad, data=df)
#' ##example 1
#' tabtexregre(mod=mod1,nametab="basicmodel",
#' cap="Parameter estimates of the fitted regression model")
#' ##example 2
#' tabtexregre(mod=mod1,nametab="basicmodel",
#' cap="Cuadro con parametros estimados del modelo de regresion",
#' eng=FALSE)
#' @rdname tabtexregre
#' @export
#' 
##@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
tabtexregre<-function(mod=mod,nametab=nametab,cap=cap,
       save.file=FALSE,filename="tabregre.tex",eng=TRUE,
    rowlab="Parameter",decnum=3,font.size.tab="normalsize",
   font.type.tab="normalfont"){

tab.h<-summary(mod)[["coefficients"]]
tab.h<-round(tab.h,decnum)
coef.aju<-tab.h[,1];coef.aju
se.coef<-summary(mod)$coefficients[,2]
tcal.coef<-summary(mod)$coefficients[,3]
vp.tcal.coef<-summary(mod)$coefficients[,4]

dim(tab.h)
ncol.aca<-ncol(tab.h)
tab.h[tab.h[,ncol.aca]==0,ncol.aca]="<2e-16"
tab.h<-as.data.frame(tab.h)
sigma.mod.aca <- round((summary(mod))$sigma,decnum)
ncol.aca<-ncol.aca-1
new.row <- c(sigma.mod.aca,rep("",ncol.aca))
tab.h <- rbind(tab.h,new.row)
r2 <-summary(mod)$r.squared; r2
ncoef<-length(stats::coef(mod))
sufix.coef<-(1:ncoef)-1;sufix.coef
beta.names<-paste("$\\beta_",sufix.coef,"$",sep = "")
row.names(tab.h)<-c(beta.names,"$\\sigma_{\\varepsilon}$")
col.names.tab<-c("Estimated","Standard error","$t$ statistics","$Pr(>|t|)$")    
if(eng==FALSE){    
    col.names.tab<-c("Estimado","Error est\\'andar","Estad\\'istico $t$","$Pr(>|t|)$")}

colnames(tab.h)<-col.names.tab    

if(save.file==TRUE){    
fileNametex<-filename
}

if(eng==FALSE){rowlab<-"Par\\'ametro"}
    
rowlabel.h <-rowlab
labtab.h <- paste("tab:",nametab,sep = "")

if(save.file==TRUE){
l <-Hmisc::latex(tab.h,
 size=font.size.tab, cgroupTexCmd=font.type.tab,rowlabel=rowlabel.h, 
 file=fileNametex, col.just=rep("c",ncol(tab.h)),
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

message("=======Storing some regression outputs=======")    
beta.hats<-coef.aju
names(beta.hats)<-paste("beta.hat",0:(ncoef-1),sep="")        
sigma.e <- (summary(mod))$sigma
mse.m <- stats::deviance(mod)/stats::df.residual(mod)
r2.m <-summary(mod)$r.squared
fcal<-summary(mod)$fstatistic[1]
gl.num<-summary(mod)$fstatistic[2]
gl.mod<-summary(mod)$fstatistic[3]
vp.fcal<-stats::anova(mod)["Pr(>F)"][1,1]
out<-list(coef.aju=coef.aju,sigma.e=sigma.e,mse=mse.m,
   beta.hats=beta.hats, fcal=fcal,gl.num=gl.num,gl.mod=gl.mod,
   vp.fcal=vp.fcal,se.coef=se.coef,
   tcal.coef=tcal.coef,vp.tcal.coef=vp.tcal.coef,r2=r2)
out    
}
