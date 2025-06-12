#' Function to create a LaTeX file for a table of
#'  descriptive statistics of continuous variables from a dataframe.
#' 
#' @details The resulting file is a LaTeX table, that can be
#' added to your main LaTeX document by using `\input{filename}`.
#' 
#' @title Creates a LaTeX file having a descriptive statistics table
#' for continuous variables
#' @param data a dataframe containing numeric variables as columns.
#' @param colnames a string having the column names of the dataframe
#' to which the descriptive statistics will be computed.
#' @param varnames a string having the name of each of the variables
#' to be used in the LaTeX table.
#' @param cap a string having the caption of the LaTeX table.
#' @param nametab a string having a brief name to be used in
#' both the label of the table and the file name. For instance,
#' if "=descdata", the table can be refered in your LaTeX
#' document by using `\ref{tab:descdata}`
#' @param save.file The defauls is set to ``FALSE'', if is set to
#' TRUE, then the option `filename` must be provided.
#' @param filename A string having the name of the resulting LaTeX
#' file having the table. The default is set to "tabdescdata.tex".
#' @param eng The language to be used in the output. English
#'  is the default, meanwhile if `eng`=FALSE, Spanish is used.
#' @param rowlab a character with the name to be used as label for
#' the column where the variables will be printed. The default is
#' set to "Variables".
#' @param decnum the number of decimals to be used in the output. The
#' default is set to 3.
#' @param font.size.tab The defauls is set to "normalsize". You could
#'  also try with "footnotesize". 
#' @param font.type.tab The defauls is set to "normalfont".
#' @importFrom utils head
#'
#' @return This function creates a LaTeX file having 
#' the following descriptive statistics: sample size, minimum,
#' maximum, mean, median, SD, and coefficient of variation. 
#'   If the full option is set to TRUE, the following statistics
#' are added to the table: 25th and 75th percentiles, the
#' interquartile range, skewness, and kurtosis.
#' @author Christian Salas-Eljatib.
#' @references
#' Salas-Eljatib, C. 2021. Análisis de datos con el programa
#' estadístico R: una introducción aplicada. Ediciones Universidad
#' Mayor, Santiago, Chile. 170 p. \url{https://eljatib.com/rlibro}
#' @examples
#'
#' df <- datana::idahohd
#' head(df)
#' ##example 1
#' tabtexdescstat(data=df,nametab="idaho",
#' cap="Descriptive statistics table",
#' colnames=c("dbh","height"),varnames = c("Diameter","Height"))
#' ##example 2
#' tabtexdescstat(data=df,nametab="idaho",
#' cap="Cuadro con estadistica descriptiva",
#'  colnames=c("dbh","height"),varnames = c("Diametro","Altura"),
#'  eng=FALSE)
#' @rdname tabtexdescstat
#' @export
#' 
##@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
tabtexdescstat<-function(data=data,colnames=colnames,
                         varnames=varnames,cap=cap,nametab=nametab,
                         save.file=FALSE,filename="tabdescdata.tex",
   eng=TRUE,rowlab="Variable",decnum=3,font.size.tab="normalsize",
   font.type.tab="normalfont"){

df.h<-data[,colnames]

tab.h <- t(datana::descstat(df.h,decnum = decnum))
tab.h
    row.names(tab.h)<-varnames
stat.names<-c("n","Minimum","Maximum","Mean","Median","Std. Dev.","CV (\\%)")    
if(eng==FALSE){    
stat.names<-
   c("n","M\\'inimo","M\\'aximo","Media","Mediana","Desv.est\\'andar","CV (\\%)")}

colnames(tab.h)<-stat.names    
tab.h

if(save.file==TRUE){    
fileNametex<-filename
}

rowlabel.h <-rowlab
labtab.h <- paste("tab:",nametab,sep = "")

if(save.file==TRUE){
l <-Hmisc::latex(tab.h,
 size=font.size.tab, cgroupTexCmd=font.type.tab,rowlabel=rowlabel.h, 
 file=fileNametex, col.just=rep("c",ncol(tab.h)),
 first.hline.double=FALSE,double.slash=FALSE,caption=cap,
 caption.loc="top",label=labtab.h,where="!h")}
    
    if(save.file==FALSE){
message("=======Start of the output=======")                
message("The following is the LaTeX output table","\n")        
Hmisc::latex(tab.h,file="",
 size=font.size.tab, cgroupTexCmd=font.type.tab,rowlabel=rowlabel.h, 
  col.just=rep("c",ncol(tab.h)),
 first.hline.double=FALSE,double.slash=FALSE,caption=cap,
 caption.loc="top",label=labtab.h,where="!h")        
message("=======End of the output=======","\n")                  
    }
}
