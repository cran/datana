#' Datos GDP-per capita  
#' @description
#' Datos del producto interno bruto per capita, por pais. 
#' @usage
#' data(gdpcap)
#' @format Este set de datos contiene las siguientes columnas:
#' \describe{
#'   \item{pais}{Nombre del país.}
#'   \item{pais.cod}{Codificación del país.}
#'   \item{gdp.pc}{GDP per capita, en US dollars.}
#'   \item{y}{GDP per capita, en miles de US dollars.}   
#'  }
#' @source Los datos fueron obtenidos desde la web
#' \url{https://data.worldbank.org/indicator/NY.GDP.PCAP.CD}
#' @examples
#' data(gdpcap)    
#' head(gdpcap) 
#' unique(gdpcap$pais)
#' hist(gdpcap$y, breaks=20,xlab='PIB per capita (miles de US$)', col='orange', las=1)
'gdpcap'
