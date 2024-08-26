#' 2021 primary election for the president of Chile.  
#' @description
#' Voter table-level data of the 2021 primary election for the president of Chile. 
#' @usage
#' data(primary)
#' @format The dataframe contains the following columns:
#' \describe{
#'   \item{region.no}{Administrative region number of Chile.}
#'   \item{region}{Administrative region name.}   
#'   \item{province}{Province.}
#'   \item{distrit}{Distrit.}
#'   \item{county}{County.}
#'   \item{elect.const}{Electoral constituency.}
#'   \item{location}{Location.}
#'   \item{table.type}{Voter table type.}
#'   \item{table}{Voter table.}
#'   \item{merged.tab}{Merged voter tables.}
#'   \item{num.in.vote}{.}
#'   \item{list}{Specific political list.}
#'   \item{pact}{Specific political pact.}
#'   \item{party}{Political party.}
#'   \item{candidate}{Candidate name}
#'   \item{total.votes}{Total number of votes.}       
#'  }
#' @source 
#' The data were obtained from the electoral service of the Chilean Government (SERVEL) at
#'  \url{https://www.servel.cl}.
#'   The datafile name was "Resultados_Primarias_Presidenciales_2021_CHILE.xlsx", and was downloaded
#'   on October 24, 2022.
#' @examples
#' data(primary)    
#' head(primary) 
'primary'
#' Eleccion primaria para la presidencia de Chile.  
#' @description
#' Datos a nivel de mesa para la votacion primaria de presidente de Chile. 
#' @usage
#' data(primary2)
#' @format The dataframe contains the following columns:
#' \describe{
#'   \item{region.no}{Región administrativa de Chile.}
#'   \item{region}{Administrative region name.}   
#'   \item{provincia}{Provincia.}
#'   \item{distrito}{Distrito.}
#'   \item{comuna}{Comuna.}
#'   \item{circu.elec}{Circunscripcion electoral.}
#'   \item{local}{Local de votacion.}
#'   \item{tipo.mesa}{Voter table type.}
#'   \item{mesa}{Voter table.}
#'   \item{mesas.fusionadas}{Merged voter tables.}
#'   \item{nro.voto}{.}
#'   \item{lista}{Lista politica del candidato.}
#'   \item{pacto}{Pacto politico del candidato.}
#'   \item{partido}{Partido politica del candidato.}
#'   \item{candidato}{Nombre del candidato.}
#'   \item{votos}{Numero total de votos.}       
#'  }
#' @source 
#' The data were obtained from the electoral service of the Chilean Government (SERVEL) at
#'  \url{https://www.servel.cl}.
#'   The datafile name was "Resultados_Primarias_Presidenciales_2021_CHILE.xlsx", and was downloaded
#'   on October 24, 2022.
#' @examples
#' data(primary2)    
#' head(primary2) 
'primary2'
#' Population density growth of beetles.
#'
#' @description
#' Temporal measurements of density of beetles (Tribolium confusum) growing in different controlled environments.
#' 
#' @format 
#' \describe{
#'   \item{days}{Number of days.}
#'   \item{diet}{The quantities of flour (in grams) of the environments where the beetles were growing.  Six levels of the factor Diet.}
#'   \item{type}{The various stage of beetles, i.e., eggs, larvae, pupae, and adults.}
#'   \item{density}{The number of insects per environment.}
#'  }
#' @source  
#' Data from Table No. 1, page 116, of Chapman (1928). Series of experiments under controlled
#'  conditions in which flour beetles (Tribolium confusum) are kept in environments of known size. 
#'  The period from egg to adult is approximately forty days at 27C degrees. The data were entered by
#'  Yamara Arancibia, a former student of Prof. Christian Salas-Eljatib.
#'  
#' @references 
#' - Chapman RN. 1928. The Quantitative Analysis of Environmental Factors. Ecology 9(2):111-122.
#' @examples
#' data(beetles)    
#' name.diet<-unique(beetles$diet)
#' num.diet<-length(name.diet)
#' ##Time series plot
#' #first, some computation
#' alys<-with(beetles,tapply(density, list(as.factor(days),as.factor(diet)),sum))
#' out<-as.data.frame(alys)
#' out$time<-row.names(out)
#' head(out)
#' #Figure 1 of the paper
#' matplot(out[,"time"], out[,1:num.diet], las=1, type=c("b"),pch=1,
#'         xlab="Time in days",ylab="Total individuals")
#' legend("topleft", legend = name.diet, title = "Diet (gr)",
#'        col = 1:6, lty = 1:6, pch = 1)
"beetles"
#' Crecimiento poblacional de escarabajos.
#'
#' @description
#' Mediciones temporales de densidad de escarabajos (Tribolium confusum) creciendo en 
#'  diferentes ambientes controlados.
#' 
#' @format 
#' \describe{
#'   \item{dias}{Numero de dias.}
#'   \item{dieta}{La cantidad de harina (en gramos) de ambientes donde crecen los escarabajos.  Seis niveles del factor Dieta.}
#'   \item{tipo}{Estados de desarrollo de los escarabajos, i.e., huevos, larvas, pupas, y adultos.}
#'   \item{densidad}{Numero total de individuos por ambiente de crecimiento.}
#'  }
#' @source  
#' Datos del Cuadro No. 1, page 116, de Chapman (1928). Serie de experimentos bajo condiciones controladas
#'  donde escarabajos (Tribolium confusum) se mantienen en ambientes de tamaño conocido. 
#'  El periodo desde huevo a adulto es de aproximadamente de cuarenta dias a 27 grados Celsius. Los datos
#'  fueron digitados por Yamara Arancibia, una estudiante del Prof. Christian Salas-Eljatib.
#'  
#' @references 
#' - Chapman RN. 1928. The Quantitative Analysis of Environmental Factors. Ecology 9(2):111-122.
#' @examples
#' data(beetles2)    
#' nom.dieta<-unique(beetles2$dieta)
#' num.dieta<-length(nom.dieta)
#' ##Grafico de serie de tiempo
#' #primero algunos calculos
#' alys<-with(beetles2,tapply(densidad, list(as.factor(dias),as.factor(dieta)),sum))
#' out<-as.data.frame(alys)
#' out$tiempo<-row.names(out)
#' head(out)
#' ##Figura 1 del paper
#' matplot(out[,"tiempo"], out[,1:num.dieta], las=1, type=c("b"),pch=1,
#'         xlab="Tiempo en dias",ylab="Densidad de individuos")
#' legend("topleft", legend = nom.dieta, title = "Dieta (gr)",
#'        col = 1:6, lty = 1:6, pch = 1)
"beetles2"
#' Soil treatment experiment in tree seedlings.  
#' @description
#' A test was made of the effect of three soil treatments on the height 
#'  growth of 2-year-old seedlings. Treatments were assigned at random 
#'  to the three plots within each of 11 blocks. Each plot was made 
#'  up of 50 seedlings.  Average 5-year height growth was the
#'   criterion for evaluating treatments.   
#' @usage
#' data(soiltreat)
#' @format Contains the four following columns, at the plot-level,
#' \describe{
#'   \item{block}{Block unit.}
#'   \item{treat}{Treatment level.}
#'   \item{ini.h}{Initial height, in m.}
#'   \item{inc.h}{Increment in height during 5-year, in m.}
#'  }
#' @source 
#' Table in page 71 of Freese (1967).  The data were entered by
#'  Nayeli Ramirez, a former student of Prof. Christian Salas-Eljatib.
#' @references
#' - Freese, F 1967. Elementary statistical methods for foresters. Agriculture Handbook 3171, USDA 
#' Forest Service.
#' @examples
#' data(soiltreat)    
#' head(soiltreat) 
#' tapply(soiltreat$inc.h,soiltreat$treat,summary)
#' tapply(soiltreat$inc.h,soiltreat$treat,sd)
'soiltreat'
#' Tratamientos del suelo en el crecimiento de plantulas.  
#' @description
#' Un experimento sobre el efecto de tres tratamientos del suelo en el crecimiento 
#'  en altura de plantulas de 2-años de edad. Los tratamientos fueron asignados aleatoriamente
#'  a tres parcelas dentro de cada uno de 11 bloques. Cada parcela esta constituida por 
#'  hasta 50 plantulas. El promedio del incremento en altura de los ultimos 5 años fue
#'   la variable de interes para evaluar los tratamientos.   
#' @usage
#' data(soiltreat2)
#' @format Los datos, a nivel de parcela, tienen las siguientes columnas, 
#' \describe{
#'   \item{bloque}{Bloque del experimento.}
#'   \item{tmo}{Factor tratamiento, medido en tres  nivels.}
#'   \item{alt.ini}{Altura initial, rn m.}
#'   \item{alt.inc}{Incremento en altura durante los últimos cinco años, en m.}
#'  }
#' @source 
#' Cuadro de la página 71 de Freese (1967). Los datos fueron digitados por Nayeli Ramirez, una 
#'  estudiante del Prof. Christian Salas-Eljatib. 
#' @references
#' - Freese, F 1967. Elementary statistical methods for foresters. Agriculture Handbook 3171, USDA 
#' Forest Service.
#' @examples
#' data(soiltreat2)    
#' head(soiltreat2) 
#' tapply(soiltreat2$alt.inc,soiltreat2$tmo,summary)
#' tapply(soiltreat2$alt.inc,soiltreat2$tmo,sd)
'soiltreat2'
#' Tree-level cork biomass data for Oak trees in Portugal.
#'
#' @description
#' Measurements of cork weight in sample trees of Quercus suber (Oak) in Portugal.
#' 
#' @format 
#' \describe{
#'   \item{tree}{A correlative number for each sample tree.}
#'   \item{csc}{is tree circumference at 1.3 m outside bark, in cm.}
#'   \item{cbc}{is tree circumference at 1.3 m under bark, in cm.}
#'   \item{bt}{bark thickness, in cm.}
#'   \item{hdeb}{is debarking height, in m.}	
#'   \item{hblc}{height to base of live crown, in m.}	
#'   \item{nb}{number of branches debarked}
#'   \item{cr.diam}{crown diameter, in m.}
#'   \item{w}{total green weight of the stripped cork, in kg}
#'   \item{stratum}{Stratum}
#'  }
#' @source  
#' Data supplied electronically to Prof. Timothy Gregoire (Yale University)
#'  by authors accompanied by a note which said "After the article was published we discovered a problem with 2 of the observations so Teresa	
#'  and I decided it was best just to delete them."
#' @references 
#' - Fonseca TJ, Parresol BR. 2001. A new model for cork weight estimation in northern Portugal with
#'    methodology for construction of confidence intervals. Forest Ecology and Management 152(1):131–139.
#' @examples
#' data(corkoak)    
#' head(corkoak) 
"corkoak"
#' Datos de biomasa de corcho en árboles de Encino en Portugal.
#'
#' @description
#' Mediciones de peso de corcho en árboles muestra de Quercus suber en Portugal.
#' 
#' @format 
#' \describe{
#'   \item{arbol}{A correlative number for each sample tree.}
#'   \item{perimetro.cc}{is tree circumference at 1.3 m outside bark, in cm.}
#'   \item{perimetro.sc}{is tree circumference at 1.3 m under bark, in cm.}
#'   \item{e.corteza}{bark thickness, in cm.}
#'   \item{h.desc}{is debarking height, in m.}	
#'   \item{hcc}{height to base of live crown, in m.}	
#'   \item{num.ram}{number of branches debarked}
#'   \item{diam.copa}{crown diameter, in m.}
#'   \item{biomasa}{total green weight of the stripped cork, in kg}
#'   \item{estrato}{Estrato}
#'  }
#' @source  
#' Datos cedidos por Prof. Timothy Gregoire (Yale University)
#'  y los autores originales mencionaron "After the article was published we discovered a problem with 2 of the observations so Teresa	
#'  and I decided it was best just to delete them."
#' @references 
#' - Fonseca TJ, Parresol BR. 2001. A new model for cork weight estimation in northern Portugal with
#'    methodology for construction of confidence intervals. Forest Ecology and Management 152(1):131–139.
#' @examples
#' data(corkoak2)    
#' head(corkoak2) 
"corkoak2"
#' Tree-list data in a forest inventory. 
#'
#' @description
#' Tree-level variables measured within three sample plots in a forest inventory. 
#'  Notice that plots might have different areas.
#' @usage
#' data(treelistinve)
#' @format Contains tree-level variables, as follows:
#' \describe{
#'   \item{plot}{Plot number.}
#'   \item{plot.size}{Plot size, in m\eqn{^{2}}{^2}.}
#'   \item{tree}{Tree identificator}
#' \item{species}{species common name as follows: Olivillo= Aextocicon puncatatum, Tepa= Laureliopsis philippiana, 
#' Lingue= Persea lingues, Coigue=Nothofagus dombeyi, Roble=Nothofagus obliqua, Other=Other}
#' \item{dbh}{Diameter at breast-height, in cm}
#' \item{htot}{Total height, in m. Only measured for some sample trees.}
#'  }
#' @source 
#'  The data are provided courtesy of Prof. Christian Salas-Eljatib (Universidad de Chile, Santiago, Chile). 
#' @references 
#' - Salas C. 2001. Caracterización básica del relicto de Biodiversidad 
#' Rucamanque. Bosque Nativo, 29:3-9. \url{https://eljatib.com/publication/2001-06-01_caracterizacion_basi/}
#' 
#' - Salas C. 2002. Ajuste y validación de ecuaciones de volumen para un relicto
#' del bosque de Roble-Laurel-Lingue. Bosque 23(2): 81-92. \doi{10.4067/S0717-92002002000200009} \url{https://eljatib.com/publication/2002-07-01_ajuste_y_validacion_/} 
#' @examples
#' data(treelistinve)    
#' head(treelistinve) 
#' tapply(treelistinve$dbh,treelistinve$species,summary)
'treelistinve'
#' Lista de árboles en un inventario forestal. 
#'
#' @description
#' Variables a nivel de árbol medidas en tres unidades de muestreo establecidas en un inventario forestal. 
#'  Note que las parcelas pueden tener diferentes superficies. Las parcelas
#'  fueron establecidas en un bosque secundario dominando por Nothofagus obliqua en las cercanias de Temuco.
#' @usage
#' data(treelistinve2)
#' @format Contiene variables a nivel de arbol dentro de parcelas.
#' \describe{
#'   \item{parce}{Numero de la parcela de muestreo.}
#'   \item{sup.parce}{Superficie de la parcela, en m\eqn{^{2}}{^2}.}
#'   \item{arbol}{Numero identificador del arbol.}
#' \item{espe}{Nombre comun de especies como sigue: Olivillo= Aextocicon puncatatum, Tepa= Laureliopsis philippiana, 
#' Lingue= Persea lingues, Coigue=Nothofagus dombeyi, Roble=Nothofagus obliqua, Other=Other}
#' \item{dap}{Diámetro a la altura del pecho, en cm}
#' \item{atot}{Altura total, en m. Solo medida en algunas árboles muestra.}
#'  }
#' @source 
#'  Los datos fueron cedidos por el Prof. Christian Salas-Eljatib, Universidad de Chile (Santiago, Chile). 
#' @references
#' - Salas C. 2001. Caracterización básica del relicto de Biodiversidad 
#' Rucamanque. Bosque Nativo, 29:3-9. \url{https://eljatib.com/publication/2001-06-01_caracterizacion_basi/}
#' 
#' - Salas C. 2002. Ajuste y validación de ecuaciones de volumen para un relicto
#' del bosque de Roble-Laurel-Lingue. Bosque 23(2): 81-92. \doi{10.4067/S0717-92002002000200009} \url{https://eljatib.com/publication/2002-07-01_ajuste_y_validacion_/} 
#' @examples
#' data(treelistinve2)    
#' unique(treelistinve2$parce) 
#' table(treelistinve2$parce,treelistinve2$sup.parce)
#' tapply(treelistinve2$dap,treelistinve2$espe,summary)
'treelistinve2'
#' Data from a Eucalyptus globulus plantation near Gorbea, Region de La Araucania, Chile.  
#' @description
#' Tree-level data collected within a sample plot in a forestry plantation of Eucalyptus globulus near Gorbea, 
#' Southern Chile. The plot size is 500 square meters. The plantation is 15 yr-old and
#' had been subject to three thinnings. 
#' @usage
#' data(eucaplot)
#' @format The dataframe contains four variables as follows:
#' \describe{
#'   \item{dbh}{Diameter at breast height, in cm.}
#'   \item{health}{health status (1: good, 2: medium, 3: bad).}
#'   \item{shape}{stem shape for timber purposes (1: good, 2: medium, 3: bad).}
#'   \item{crown.class}{Crown class (1: superior, 2: intermedium, 3: lower).}
#'   \item{toth}{Total height, in m.}
#'  }
#' @source 
#' The data were provided courtesy of Dr Christian Salas (Universidad de Chile, Santiago, Chile).  
#' @examples
#' data(eucaplot)    
#' head(eucaplot) 
'eucaplot'
#' Arboles dentro de parcelas de muestreo en una plantacion de Eucalyptus globulus, Chile.  
#' @description
#' Tree-level data collected within a sample plot in a forestry plantation of Eucalyptus globulus near Gorbea, 
#' Southern Chile. The plot size is 500 square meters. The plantation is 15 yr-old and
#' had been subject to three thinnings. 
#' @usage
#' data(eucaplot2)
#' @format The dataframe contains four variables as follows:
#' \describe{
#'   \item{dbh}{Diameter at breast height, in cm.}
#'   \item{health}{health status (1: good, 2: medium, 3: bad).}
#'   \item{shape}{stem shape for timber purposes (1: good, 2: medium, 3: bad).}
#'   \item{crown.class}{Crown class (1: superior, 2: intermedium, 3: lower).}
#'   \item{toth}{Total height, in m.}
#'  }
#' @source 
#' The data were provided courtesy of Dr Christian Salas (Universidad de Chile, Santiago, Chile).  
#' @examples
#' data(eucaplot2)    
#' head(eucaplot2) 
'eucaplot2'
#' 2021 presidential election in Chile.  
#' @description
#' Voter table-level data of the 2021 presidential election in Chile. The election was held on December 19, 2021. 
#' @usage
#' data(presidentChile)
#' @format The dataframe contains the following columns:
#' \describe{
#'   \item{region.no}{Administrative region number of Chile.}
#'   \item{region}{Administrative region name.}
#'   \item{province}{Province.}
#'   \item{senat.const}{Senatorial constituency.}
#'   \item{distrit}{Distrit.}
#'   \item{county}{County.}
#'   \item{elect.const}{Electoral constituency.}
#'   \item{location}{Location.}
#'   \item{table}{Voter table.}
#'   \item{table.type}{Voter table type.}
#'   \item{merged.tab}{Merged voter tables.}
#'   \item{electors}{Electors.}
#'   \item{num.in.vote}{.}
#'   \item{candidate}{Candidate. Gabriel Boric and Jose A. Kast}
#'   \item{total.votes}{Total number of votes acording to the TRICEL.}       
#'  }
#' @source 
#' The data were obtained from the electoral service of the Chilean Government (SERVEL) at
#'  \url{https://www.servel.cl}.
#'   The datafile name was "Resultados_mesa_presidencial_TRICEL_2v_2021-1.xlsx", and was downloaded
#'   on October 24, 2022.
#' @examples
#' data(presidentChile)    
#' head(presidentChile) 
'presidentChile'
#' Eleccion presidencial del 2021 en Chile.  
#' @description
#' Datos de mesa de la eleccion presidencial del 2012 en Chile. La eleccion se llevo a cabo el 19 de Diciembre del 2021. 
#' @usage
#' data(presidentChile2)
#' @format Los datos contienen las siguientes columnas:
#' \describe{
#'   \item{region.no}{Numero de la region adminsitrativa de Chile.}
#'   \item{region}{Nombre de la region administrativa de Chile}
#'   \item{provincia}{Provincia.}
#'   \item{circu.senatorial}{Circunscripcion senatorial.}
#'   \item{distrito}{Distrit.}
#'   \item{comuna}{County.}
#'   \item{circu.elec}{Circunscripcion electoral.}
#'   \item{local}{Local de votacion. Generalmente es un colegio.}
#'   \item{no.mesa}{Numero de mesa.}
#'   \item{tipo.mesa}{Tipo de mesa de votacion.}
#'   \item{mesas.fusionadas}{Mesa de votacion fucionada.}
#'   \item{electores}{Electores.}
#'   \item{nro.en.voto}{.}
#'   \item{candidato}{Candidato, ya sea Gabriel Boric o Jose A. Kast}
#'   \item{votos.tricel}{Numero total de votos segun el TRICEL (Tribunal calificador de elecciones).}       
#'  }
#' @source 
#' Los datos fueron obtenidos desde el sitio web del Servicio Electoral del Gobierno de Chilean (SERVEL) en
#'  \url{https://www.servel.cl}.
#'  El archivo de datos descargado el 24 de Octubre del 2022 tenia el nombre "Resultados_mesa_presidencial_TRICEL_2v_2021-1.xlsx".
#' @examples
#' data(presidentChile2)    
#' head(presidentChile2) 
'presidentChile2'
#' Presence or absence of sea ice from logbook records of annual cruises
#' @description
#' Data containing 52717 observations about presence of sea ice from logbook records of annual 
#' cruises to the B-C-B in an unbroken record between  years 1850 to 1910. 
#' @usage
#' data(presenceIce)
#' @format The dataframe contains the following columns:
#' \describe{
#'   \item{ship.id}{The code number for ships.}
#'   \item{move.type}{Type of movement of ships. 0 indicates a sail-powered vessel and 1 indicates an auxiliary-powered vessel.}
#'   \item{year}{Year of registry.}
#'   \item{month}{Month of registry.}
#'   \item{day}{Day of registry.}
#'   \item{lat.dec}{Decimal latitude.}
#'   \item{long.dec}{Decimal longitude.}
#'   \item{e.w}{East or west of the Prime Meridian.}
#'   \item{ice.cov}{Sea Ice Observed. 0 no see (Not registered) and 1 presence sea ice (Registered).}
#'  }
#' @source 
#' The data were provided from Sea Ice Group at the Geophysical Institute.   
#' @references
#' Mahoney A, Bockstoce J, Botkin D, Eicken H, Nisbet R. 2011. Sea-Ice Distribution in the Bering and Chukchi Seas: Information from Historical Whaleships' Logbooks and Journals
#' ARCTIC. 64(4): 465-477.
#' @examples
#' data(presenceIce)    
#' head(presenceIce) 
'presenceIce'
#' Diameter growth increments of a tropical tree species in Hawaii
#' @description
#' Tree size, competition, and diameter growth increment of Metrosideros polymorpha trees
#' collected in the Kilauea Volcano, Hawaii. Data containing 64 observations at the current annual growth 
#' rate (defined as dbh increment within one calendar year) of each tree
#'  was measured from 1986 to 1988 using band dendrometers.
#' @usage
#' data(hawaii)
#' @format The dataframe has the following columns:
#' \describe{
#'   \item{tree.code}{Tree number identification. The first letter of the ID represents
#'   a cohort. Six cohorts representing a chronosequence were sampled.}
#'   \item{dbh}{Initial stem diameter, in cm.}
#'   \item{htot}{Total height, in m.}
#'   \item{crown.area}{Crown outline area, in square meters.}
#'   \item{comp.ind}{Competition index (Basal area of nearest neighbor divided by square of distance to nearest neighbor plus
#'          basal area of second nearest neighbor divided by square of distance to second nearest neighbor).}
#'   \item{cai.1986}{Current annual stem diameter increment during 1986, in mm.}
#'   \item{cai.1987}{Current annual stem diameter increment during 1987, in mm.}
#'   \item{cai.1988}{Current annual stem diameter increment during 1988, in mm.}
#'  }
#' @source 
#' The data were obtained from Gerrish and Mueller-Dombois (1999).  
#' @references
#' Gerrish G, Mueller-Dombois D. 1999. Measuring stem growth rates for
#' determining age and cohort analysis of a tropical evergreen tree.
#' Pacific Science. 53(4): 418-429. 
#' @examples
#' data(hawaii)    
#' head(hawaii) 
'hawaii'
#' Incremento corriente anual en diámetro de una especie tropical en Hawaii
#' @description
#' Tamaño del arbol, competencia, e incremento corriente anual de árboles de Metrosideros polymorpha 
#' colectado en el volcan Kilauea, en Hawaii. Los datos contienen 64 observaciones de incremento corriente anual 
#' (definido como el incremento en diámetro en un año calendario) de cada arbol. Estos incrementos
#'  fueron medidos desde el año 1986 a 1988 usando bandas dendrometricas.
#' @usage
#' data(hawaii)
#' @format Estos datos contienen las siguientes columnas:
#' \describe{
#'   \item{arb.id}{Codigo identificador del arbol. La primera letra del ID representa
#'   un cohorte. Hay seis cohortes que representan una cronosecuencia.}
#'   \item{dap}{Diámetro a la altura del pecho, en cm.}
#'   \item{htot}{Altura total, en m.}
#'   \item{area.copa}{Area de copa, en metros cuadrados.}
#'   \item{ind.comp}{Competition index (Basal area of nearest neighbor divided by square of distance to nearest neighbor plus
#'          basal area of second nearest neighbor divided by square of distance to second nearest neighbor).}
#'   \item{ica.1986}{Incremento corriente anual durante el año 1986, en mm.}
#'   \item{ica.1987}{Incremento corriente anual durante el año 1987, en mm.}
#'   \item{ica.1988}{Incremento corriente anual durante el año 1988, en mm.}
#'  }
#' @source 
#' Los datos fueron obtenidos desde Gerrish and Mueller-Dombois (1999).  
#' @references
#' Gerrish G, Mueller-Dombois D. 1999. Measuring stem growth rates for
#' determining age and cohort analysis of a tropical evergreen tree.
#' Pacific Science. 53(4): 418-429. 
#' @examples
#' data(hawaii2)    
#' head(hawaii2) 
'hawaii2'
#' Sampling plots data from a Pinus radiata plantation near Capitan Pastene, Region de La Araucania, Chile.  
#' @description
#' Tree-level information collected within sample plots in a forestry plantation of Pinus radiata near Capitan Pastene, 
#' Southern Chile. Sample plots size is 150 square meters.
#' @usage
#' data(radiatapl)
#' @format The data frame contains four variables as follows:
#' \describe{
#'   \item{plot}{Plot number identification.}
#'   \item{tree}{Tree number identification.}
#'   \item{dbh}{Diameter at breast height, in cm.}
#'   \item{heigth}{Total height, in m.}
#'  }
#' @source 
#' The data are provided courtesy of Mr. Mauricio Lobos-Beneventi (Temuco, Chile).  
#' @examples
#' data(radiatapl)    
#' head(radiatapl) 
'radiatapl'
#' Time series of annual precipitations in cities of Chile.  
#' @description
#' Data contains annual precipitations in six cities in Chile (Santiago, Talca, Chillan, Temuco, Valdivia, and Puerto Montt) at different years.  
#' @usage
#' data(annualppCities)
#' @format The dataframe contains three variables as follows:
#' \describe{
#'   \item{city}{Name of city.}
#'   \item{year}{Year of registry.}
#'   \item{annual}{Value of the annual precipitation of a given year (mm).}
#'  }
#' @source 
#' The data were obtained from \url{https://explorador.cr2.cl/}.  
#' @examples
#' data(annualppCities)    
#' head(annualppCities) 
'annualppCities'
#' Serie de tiempo de precipitaciones anuales en Chile.  
#' @description
#' Data contains annual precipitations in six cities in Chile (Santiago, Talca, Chillan, Temuco, Valdivia, and Puerto Montt) at different years.  
#' @usage
#' data(annualppCities2)
#' @format The dataframe contains three variables as follows:
#' \describe{
#'   \item{ciudad}{Name of city.}
#'   \item{anho}{Year of registry.}
#'   \item{pp.anual}{Value of the annual precipitation of a given year (mm).}
#'  }
#' @source 
#' Los datos fueron obtenidos desde \url{https://explorador.cr2.cl/}.  
#' @examples
#' data(annualppCities2)    
#' head(annualppCities2) 
'annualppCities2'
#' Diameter and height growth of Grand-fir sample trees.  
#' @description
#' Diameter and height growth of 66 Grand-fir trees. Data derived from stem analysis sample
#' trees collected by Dr Albert Stage (US Forest Service, Moscow, ID, USA.)
#' @usage
#' data(treegrowth)
#' @format Contains seven column, as follows:
#' \describe{
#'   \item{tree.id}{Tree number identificator. An unique number to each sample tree.}
#'   \item{forest}{Forest type.}
#'   \item{habitat}{Forest habitat type.}
#'   \item{tree.code}{A composite tree code representing the following columns: tree.id-forest-habitat}
#'   \item{age}{Age, in yr}
#'   \item{dbh}{Diameter at breast-height, in cm.}
#'   \item{htot}{Total height, in m.}
#'  }
#' @source 
#' Originally, the data were provided by Dr Albert Stage (R.I.P) to Professor Andrew Robinson (University
#' of Idaho, USA), whom used them to explain the fitting of statistical models. Dr Christian Salas-Eljatib
#' was a former graduate student of Statistics of Prof Robinson at the Univ. of Idaho.  
#' @references
#' Stage, A. R., 1963. A mathematical approach to polymorphic site index curves for 
#'  Grand fir. Forest Science 9 (2), 167–180.
#' @examples
#' data(treegrowth)    
#' head(treegrowth) 
'treegrowth'
#' Crecimiento en diámetro y altura de árboles muestras de Grand-fir.  
#' @description
#' Crecimiento en diámetro y altura de 66 árboles de Grand-fir. Los datos fueron derivados a partir
#'  de árboles muestras de analisis fustal colectados por el Dr Albert Stage (US Forest Service, Moscow, ID, USA.)
#' @usage
#' data(treegrowth)
#' @format Contiene las siguientes siete columnas:
#' \describe{
#'   \item{num.arb}{Numero identificador del arbol. Unico para cada arbol muestra.}
#'   \item{bosque}{Tipo forestal.}
#'   \item{habitat}{Clasificacion de tipo de habitat.}
#'   \item{cod.arb}{Un codigo que combina a las siguientes columnas: num.arb-bosque-habitat}
#'   \item{edad}{Edad, en años.}
#'   \item{dap}{Diámetro a la altura del pecho, en cm. Note que los decimales es debido a 
#'     que esta variable originalmente fue medida en pulgadas.}
#'   \item{htot}{Altura total, in m. Note que los decimales es debido a que esta variable
#'    fue originalmente medida en pies.}
#'  }
#' @source 
#' Originalmente los datos fueron cedidos por el Dr Albert Stage (Q.E.P.D) al Profesor Andrew Robinson (University
#'  of Idaho, USA), quien los usaba para explicar el ajuste de modelos estadisticos. El Dr Christian Salas-Eljatib
#'  fue un estudiante de postgrado en estadistica del Prof. Robinson en la Univ. of Idaho.  
#' @references
#' Stage, A. R., 1963. A mathematical approach to polymorphic site index curves for 
#'  Grand fir. Forest Science 9 (2), 167–180.
#' @examples
#' data(treegrowth2)    
#' head(treegrowth2) 
'treegrowth2'
#' Fertilization experiment data.  
#' @description
#' Data contains volume data at plot-level for a fertilization
#' experiment.  
#' @usage
#' data(fertilizaexpe)
#' @format Contains three variables, as follows:
#' \describe{
#'   \item{treat}{Treatment level.}
#'   \item{volume}{Plot-level volume, in m\eqn{^{3}}{^3}/plot.}
#'  }
#' @source 
#' The data were provided by Dr Christian Salas-Eljatib (Universidad de Chile, Santiago, Chile).  
#' @references
#' not yet 
#' @examples
#' data(fertilizaexpe)    
#' head(fertilizaexpe) 
'fertilizaexpe'
#' Datos a nivel de parcela de un experimento de fertilizacion.  
#' @description
#' Data contains volume data at plot-level for a fertilization
#' experiment.  
#' @usage
#' data(fertilizaexpe2)
#' @format Contains three variables, as follows:
#' \describe{
#'   \item{treat}{Treatment level.}
#'   \item{volume}{Plot-level volume, in m\eqn{^{3}}{^3}/plot.}
#'  }
#' @source 
#' The data were provided by Dr Christian Salas.  
#' @references
#' not yet 
#' @examples
#' data(fertilizaexpe2)    
#' head(fertilizaexpe2) 
'fertilizaexpe2'
#' Data on fish growth.  
#' @description
#' Data on samples of small mouth bass collected in West Bearskin Lake, Minnesota, in 1991. The
#' file wblake includes only fish of ages 8 or younger.  
#' @usage
#' data(fishgrowth)
#' @format Contains 3 variables, as follows:
#' \describe{
#'   \item{years}{Year at capture.}
#'   \item{length}{Length at capture (mm).}
#' \item{scale}{radius of a key scale (mm).}
#'  }
#' @source 
#' The data were obtained from the alr4 library of R.  
#' @references
#' Weisberg S. 2014. Applied Linear Regression. 4th edition. Hoboken NJ: Wiley 
#' @examples
#' data(fishgrowth)    
#' head(fishgrowth) 
'fishgrowth'
#' Crecimiento de peces
#' @description
#' Data on samples of small mouth bass collected in West Bearskin Lake, Minnesota, in 1991. The
#' file wblake includes only fish of ages 8 or younger.  
#' @usage
#' data(fishgrowth2)
#' @format Contiene tres variables, como sigue:
#' \describe{
#'   \item{edad}{Year at capture.}
#'   \item{largo}{Length at capture, en mm.}
#' \item{escala}{radius of a key scale, en mm.}
#'  }
#' @source 
#' Datos obtenidos desde el paquete alr4 de R.  
#' @references
#' Weisberg S. 2014. Applied Linear Regression. 4th edition. Hoboken NJ: Wiley 
#' @examples
#' data(fishgrowth2)    
#' head(fishgrowth2) 
'fishgrowth2'
#' Tree-level variables of several sample plots of invasive Pinus spp in Chile.  
#' @description
#' These are tree-lavel measurement data from Pinus spp invasion in Araucaria-Nothofagus forests in 
#' the Malalcahuello National Reserve in La Araucania region in southhern Chile, measured in 2012. 
#' There are 26 plots and plot size is 100 m\eqn{^{2}}{^2}.
#' @usage
#' data(pinusSpp)
#' @format Contains eight variables, as follows:
#' \describe{
#' \item{plot.id}{Plot sample ID.}
#' \item{plot.size}{Plot size, en m\eqn{^{2}}{^2}.}
#' \item{lat.s}{Decimal coordinate of S latitude.}
#' \item{long.w}{Decimal coordinate of W longitude.}
#' \item{indv.id}{Tree identificator number in each plot. Same indv/id for multi-stem trees.}
#' \item{stem.id}{Stem identificator number in each plot.}
#' \item{spp}{Specie.}
#' \item{dbh}{Diameter at breast-height, in cm.}
#' \item{h}{Height, in m.}
#' \item{hcb}{Height to crown base, in m.}
#' \item{crown.lenght}{Crown lenght, in m.}
#' }
#' @source 
#'  The data are provided courtesy of Drs Anibal Pauchard and Rafael García at the Laboratorio de Invasiones
#'  Biológicas, Universidad de Concepcion (Concepción, Chile).
#' @references
#'  Cobar-Carranza A, Garcia R, Pauchard A, Pena E. 2014. Effect of Pinus contorta invasion on forest fuel properties and
#'  its potential implications on the fire regime of Araucaria araucana and Nothofagus antarctica forests.
#'  Biological Invasions. 16(11): 2273 - 2291. \doi{10.1007/s10530-014-0663-8}
#
#' @examples
#' data(pinusSpp)    
#' head(pinusSpp) 
#' length(unique(pinusSpp$plot.id)) 
#' boxplot(dbh~plot.id, data=pinusSpp) 
'pinusSpp'
#' Variables a nivel de arbol en parcelas de muestreo de Pinus spp en Chile.  
#' @description
#' Mediciones a nivel de arbol para estudiar la invasion de Pinus spp en bosques de Araucaria-Nothofagus en 
#' la Reserva Nacional Malalcahuello en la region de la Araucania en el sur de Chile. 
#' Hay 26 parcelas, y la superficie de cada una es de 100 m\eqn{^{2}}{^2}.
#' @usage
#' data(pinusSpp2)
#' @format Los datos contienen ocho columnas que se detallan a continuacion:
#' \describe{
#' \item{parcela}{Numero de la parcela.}
#' \item{sup.parcela}{Superficie de la parcela, en m\eqn{^{2}}{^2}.}
#' \item{lat.s}{Decimal coordinate of S latitude.}
#' \item{long.w}{Decimal coordinate of W longitude.}
#' \item{indv.id}{Identificador del arbol en la parcelaeach plot. Same indv/id for multi-stem trees.}
#' \item{fuste.id}{Identificador del fuste.}
#' \item{espe}{Especie.}
#' \item{dap}{Diámetro a la altura del pecho, en cm.}
#' \item{atot}{Altura total, en m.}
#' \item{hcc}{Altura comienzo de copa, en m.}
#' \item{largo.copa}{Largo de copa, en m.}
#' }
#' @source 
#'  Los datos fueron cedidos por los Drs. Anibal Pauchard y Rafael García del Laboratorio de Invasiones
#'  Biológicas, Universidad de Concepción (Concepción, Chile).
#' @references
#'  Cobar-Carranza A, Garcia R, Pauchard A & Pena E. 2014. Effect of Pinus contorta invasion on forest fuel properties and
#'  its potential implications on the fire regime of Araucaria araucana and Nothofagus antarctica forests.
#'  Biological Invasions. 16(11): 2273-2291. \doi{10.1007/s10530-014-0663-8}
#
#' @examples
#' data(pinusSpp2)    
#' head(pinusSpp2) 
#' length(unique(pinusSpp2$parce)) 
#' boxplot(dap~parce, data=pinusSpp2) 
'pinusSpp2'
#' Contains spatial location of Pinus contorta trees in sample plots.  
#' @description
#' These are tree-level measurement data, with cartesian location of each tree, from Pinus contorta invasion in 
#' Patagonian steppe in Coyhaique in southhern Chile, measured in 2011. There are 3 plots, each
#'  of 10.000 m\eqn{^{2}}{^2}.   
#' @usage
#' data(pinusContorta)
#' @format Contains eight variables, as follows:
#' \describe{
#'   \item{plot.id}{Plot sample ID.}
#'   \item{tree.id}{Tree identificator number in each plot. Same indv/id for multi-stem trees.}
#' \item{y.coord}{coordinate of S latitude.}
#' \item{x.coord}{coordinate of W longitude.}
#' \item{substrate}{Ground cover in which each pine grow. Bare soil, Festuca pallescens, Baccharis magellanica, 
#' Oreopulus glacialis, Acaena integerrima and others species.}
#' \item{drc}{Diameter at the root collar on trees, in mm.}
#' \item{h}{Height of trees, in cm.}
#' \item{canopy.area}{Proyection of canopy area of each tree, in square meters.}
#' }
#' @source 
#'  The data are provided courtesy of Drs Anibal Pauchard and Rafael Garcia at the Laboratorio de Invasiones Biologicas,
#'  Universidad de Concepción (Concepción, Chile).
#' @references
#'  Pauchard A, Escudero A, Garcia RA, de la Cruz M, Langdon B, Cavieres LA, Esquivel J. 2016.
#'  Pine invasions in treeless environments: dispersal overruns microsite heterogeneity. 
#'  Ecology and Evolution. 6(2): 447-459. \doi{10.1002/ece3.1877}
#' @examples
#' data(pinusContorta)    
#' head(pinusContorta)
#' unique(pinusContorta$plot.id) 
'pinusContorta'
#' Ubicacion espacial de árboles de Pinus contorta en parcelas de muestreo.  
#' @description
#' Mediciones a nivel de árbol, con la ubicacion cartesian de cada arbol de Pinus contorta, en parcelas
#' de muestreo para estudio de invasion en la estepa Patagonica en Coyhaique en el sur de Chile. Hay tres parcelas, cada
#'  una de 10.000 m\eqn{^{2}}{^2}.   
#' @usage
#' data(pinusContorta2)
#' @format Contiene ocho variables, como siguen:
#' \describe{
#'   \item{parcela}{Parcela.}
#'   \item{arbol}{Numero de arbol en cada parcela. Mismo arbol/id para árboles multifustales.}
#' \item{coord.y}{coordinada de latitud W.}
#' \item{coord.x}{coordinada de longitud W.}
#' \item{substrato}{Cobertura del suelo donde cada pino crece. Bare soil, Festuca pallescens, Baccharis magellanica, 
#' Oreopulus glacialis, Acaena integerrima and others species.}
#' \item{h}{Height of trees, in cm.}
#' \item{diam.cuello}{Diámetro del cuello, en mm.}
#' \item{area.copa}{Area de copa, en m\eqn{^{2}}{^2}.}
#' }
#' @source 
#'  Los datos fueron cedidos por los Drs. Anibal Pauchard y Rafael Garcia del Laboratorio de Invasiones Biologicas,
#'  Universidad de Concepcion (Chile).
#' @references
#'  Pauchard A, Escudero A, Garcia RA, de la Cruz M, Langdon B, Cavieres LA, Esquivel J. 2016.
#'  Pine invasions in treeless environments: dispersal overruns microsite heterogeneity. 
#'  Ecology and Evolution. 6(2): 447-459. \doi{10.1002/ece3.1877}
#' @examples
#' data(pinusContorta2)    
#' head(pinusContorta2)
#' unique(pinusContorta2$plot.id) 
'pinusContorta2'
#' Airquality data in New York city.
#' @description
#' Daily air quality measurements in New York, May to September 1973.   
#' @usage
#' data(airnyc)
#' @format Contains 6 variables, as follows:
#' \describe{
#'   \item{ozone}{numeric	Ozone (ppb).}
#'   \item{solar}{numeric	Solar R (lang).}
#' \item{wind}{numeric	Wind (mph).}
#' \item{temp}{numeric	Temperature (degrees F).}
#' \item{month}{numeric	Month (1--12).}
#' \item{day}{numeric	Day of month (1--31).}
#'  }
#' @source 
#' The data were obtained from the library 'datasets'.  
#' @references
#' Chambers J, Cleveland W, Kleiner B, Tukey P. 1983. Graphical Methods for Data Analysis. Belmont. CA: Wadsworth.
#' @examples
#' data(airnyc)    
#' head(airnyc) 
'airnyc'
#' Calidad del aire en la ciudad de Nueva York.  
#' @description
#' Calidad del aire diario medido en New York, de Mayo a Septiembre de 1973.   
#' @usage
#' data(airnyc2)
#' @format Contiene 6 variables:
#' \describe{
#'   \item{ozone}{Ozono (ppb).}
#'   \item{solar}{Solar R (largo).}
#' \item{wind}{Viento (mph).}
#' \item{temp}{Temperatura (grados F).}
#' \item{month}{Mes del año (1--12).}
#' \item{day}{Dia del mes (1--31).}
#'  }
#' @source 
#' Los datos fueron obtenidos desde la libreria datasets.  
#' @references
#' Chambers J, Cleveland W, Kleiner B, Tukey P. 1983. Graphical Methods for Data Analysis. Belmont. CA: Wadsworth.
#' @examples
#' data(airnyc2)    
#' head(airnyc2) 
'airnyc2'
#' Presidential election data of Florida (USA) in 2000.  
#' @description
#' County-by-county vote for president in Florida in 2000 for Bush, Gore and Buchanan.  
#' @usage
#' data(election)
#' @format Contains 3 variables, as follows:
#' \describe{
#'   \item{gore}{Vote for Gore.}
#'   \item{bush}{Vote for Bush.}
#' \item{buchaman}{Vote for Buchaman.}
#'  }
#' @source 
#' The data were obtained from the 'alr4' library.  
#' @references
#' Weisberg S. 2014. Applied Linear Regression. 4th edition. Hoboken NJ: Wiley 
#' @examples
#' data(election)    
#' head(election) 
'election'
#' Eleccion presidential en el estado de Florida (USA) en el 2000.  
#' @description
#' County-by-county vote for president in Florida in 2000 for Bush, Gore and Buchanan.  
#' @usage
#' data(election2)
#' @format Contains 3 variables, as follows:
#' \describe{
#'   \item{gore}{Votos para Gore.}
#'   \item{bush}{Votos para Bush.}
#' \item{buchaman}{Votos para Buchaman.}
#'  }
#' @source 
#' Los datos se obtuvieron desde el paquete 'alr4' de R.  
#' @references
#' Weisberg S. 2014. Applied Linear Regression. 4th edition. Hoboken NJ: Wiley 
#' @examples
#' data(election2)    
#' head(election2) 
'election2'
#' Tree height-diameter data from Idaho (USA).  
#' @description
#' These data are forest inventory measures from the Upper Flat Creek stand of the University 
#' of Idaho Experimental Forest, dated 1991.   
#' @usage
#' data(idahohd)
#' @format Contains five variables, as follows:
#' \describe{
#'   \item{plot}{plot number.}
#'   \item{tree}{tree within plot.}
#' \item{species}{a factor with levels DF = Douglas-fir, GF = Grand fir, SF = Subalpine fir, WL = Western larch,
#'                 WC = Western red cedar, WP = White pine.}
#' \item{dbh}{Diameter 137 cm perpendicular to the bole, mm.}
#' \item{height}{Height of the tree, in decimeters.}
#'  }
#' @source 
#' The data were obtained from the alr4 library.  
#' @references
#' Weisberg S. 2014. Applied Linear Regression. 4th edition. New York: Wiley.
#' @examples
#' data(idahohd)    
#' head(idahohd) 
'idahohd'
#' Altura-diámetro de árboles en el estado de Idaho (USA).  
#' @description
#' Estos datos provienen de un muestreo en un bosque de
#' Upper Flat Creek en el bosque experimental de la 
#' University of Idaho, medido en 1991.   
#' @usage
#' data(idahohd2)
#' @format Contiene cinco variables, como sigue:
#' \describe{
#'   \item{parce}{numero de la parcela de muestreo.}
#'   \item{narb}{numero del arbol dentro de la parcela.}
#' \item{spp}{especie del arbol, una variable factor  con niveles DF = Douglas-fir, GF = Grand fir, SF = Subalpine fir, WL = Western larch,
#'                 WC = Western red cedar, WP = White pine.}
#' \item{d}{Diámetro del tronco a los 1.3m sobre el suelo, en cm.}
#' \item{h}{Altura del arbol, en m.}
#'  }
#' @source 
#' Los datos fueron obtenidos desde la libreria alr4.  
#' @references
#' Weisberg S. 2014. Applied Linear Regression. 4th edition. New York: Wiley.
#' @examples
#' data(idahohd2)    
#' head(idahohd2) 
'idahohd2'
#' Chicken growth data.  
#' @description
#' The body weights of the chicks were measured at birth and every second day thereafter until day 20. They were 
#' also measured on day 21. There were four groups on chicks on different protein diets.  
#' @usage
#' data(chicksw)
#' @format Contains four variables, as follows:
#' \describe{
#'   \item{weight}{a numeric vector giving the body weight of the chick (gm).}
#'   \item{time}{a numeric vector giving the number of days since birth when the measurement was made.}
#' \item{chick}{an ordered factor with levels different giving a unique identifier for the chick. The ordering of the
#'             levels groups chicks on the same diet together and orders them according to their final weight 
#'             (lightest to heaviest) within diet.}
#' \item{diet}{a factor with levels 1,2,3 and 4 indicating which experimental diet the chick received.}
#'  }
#' @source 
#' The data were obtained from the alr4 library.  
#' @references
#' Crowder M, Hand D. 1990. Analysis of Repeated Measures. Chapman and Hall
#' @examples
#' data(chicksw)    
#' head(chicksw) 
'chicksw'
#' ludge data are at different cities, with a value of concentration zinc.  
#' @description
#' Dataset contains 36 observations   
#' @usage
#' data(sludge)
#' @format Contains four variables, as follows:
#' \describe{
#'   \item{city}{Name of city.}
#'   \item{rate}{Concentration rate of sludge.}
#' \item{zinc}{Value of concentration ( in ppm).}
#' \item{trt.comb}{Combination between city and rate factors.}
#'  }
#' @source 
#' The data were provided from.  
#' @references
#' not yet 
#' @examples
#' data(sludge)    
#' head(sludge) 
'sludge'
#' Annual basal area increment for four tree species.  
#' @description
#' The dataset contains 157 observations of the last ten years in 6-8 adult trees of different species at three
#'  elevations of altitudinal gradients sampled in four locations in Chile and two in Spain.
#' @usage
#' data(baiTreelines)
#' @format Contains seven columns, as follows:
#' \describe{
#'   \item{climate}{Climate of each location, mediterranean and temperate.}
#'   \item{site}{Name of Location of study (termmas:Termas de Chillan , antillanca:Antillanca area within Puyehue National Park,
#'               castillo:Cerro Castillo Natural Reserve, farellones:Farellones in Central Chile, 
#'               pyrenees: Sierra de Cutas area in Spanish Central Pyrenees,sierra:Sierra Nevada).}
#' \item{species}{name species of study (lenga: Nothofagus pumilio, frangel: Kageneckia angustifolia,
#'                uncinata: Pinus uncinata, sylvestris: Pinus sylvestris).}
#' \item{elevation}{Type of elevation. "Treeline", intermediate named as "inter", and closed or
#'       montane forest named as low.}
#' \item{tree}{Id for tree.}
#' \item{bai}{Value of annual basal area increment.}
#' \item{mean.bai}{Mean of annual basal area increment.}
#'  }
#' @source 
#' The data were obtained from the DRYAD repository at \doi{10.5061/dryad.ks97h}.  
#' @references
#' Piper F, Vinegla B, Linares J, Camarero J, Cavieres L, Fajardo A. 2016. Mediterranean and temperate treelines are 
#' controlled by different environmental drivers. Journal of of Ecology. 104: 691-702. 
#' @examples
#' data(baiTreelines)    
#' head(baiTreelines) 
'baiTreelines'
#' Incremento anual en area basal de cuatro especies arboreas.  
#' @description
#' Este set de datps contiene 157 observaciones, de los ultimos 10 años en 6-8 árboles adultos de cuatro especies 
#' en un gradiente altitudinal. Las muestras se distribuyeron en cuatro localidades o sitios de Chile y dos en España.
#' @usage
#' data(baiTreelines2)
#' @format Contains seven columns, as follows:
#' \describe{
#'   \item{clima}{Climate of each location, mediterranean and temperate.}
#'   \item{sitio}{Name of Location of study (termmas:Termas de Chillan , antillanca:Antillanca area within Puyehue National Park,
#'               castillo:Cerro Castillo Natural Reserve, farellones:Farellones in Central Chile, 
#'               pyrenees: Sierra de Cutas area in Spanish Central Pyrenees,sierra:Sierra Nevada).}
#' \item{especie}{name species of study (lenga: Nothofagus pumilio, frangel: Kageneckia angustifolia,
#'                uncinata: Pinus uncinata, sylvestris: Pinus sylvestris).}
#' \item{tipo.altitud}{Type of elevation. "Treeline", intermediate named as "inter", and closed or
#'       montane forest named as low.}
#' \item{arbol}{Id for tree.}
#' \item{bai}{Value of annual basal area increment.}
#' \item{bai.medio}{Mean of annual basal area increment.}
#'  }
#' @source 
#' The data were obtained from the DRYAD repository at \doi{10.5061/dryad.ks97h}.  
#' @references
#' Piper F, Vinegla B, Linares J, Camarero J, Cavieres L, Fajardo A. 2016. Mediterranean and temperate treelines are 
#' controlled by different environmental drivers. Journal of Ecology. 104: 691-702. 
#' @examples
#' data(baiTreelines2)    
#' head(baiTreelines2) 
'baiTreelines2'
#' Carbohydrates concentrations of tree species.  
#' @description
#' Dataset contains 863 observations, about of  total soluble carbohydrate, starch, and non structural carbohydrates 
#' concentrations per mass unit and per volume unit, in three tissues in early summer and early autumn 6-8 adult trees
#' of different species at three elevations of altitudinal gradients sampled in four locations of Chile 
#' and Spain.
#' @usage
#' data(carbohydrateTreelines)
#' @format Contains 16 variables, as follows:
#' \describe{
#'   \item{climate}{Climate of each location, mediterranean and temperate.}
#'   \item{site}{Name of Location of study (termas:Termas de Chillan , antillanca:Antillanca area within Puyehue National Park,
#'               castillo:Cerro Castillo Natural Reserve, farellones:Farellones in Central Chile, 
#'               pyrenees: Sierra de Cutas area in Spanish Central Pyrenees,sierra:Sierra Nevada).}
#' \item{species}{name species of study (lenga: Nothofagus pumilio, frangel: Kageneckia angustifolia,
#'                uncinata: Pinus uncinata, sylvestris: Pinus sylvestris).}
#' \item{tissue}{Type of tissue, new developing twings, stem sapwood and branches.}
#' \item{time}{Meauserement season (spring or autumn).}
#' \item{elevation}{Type of elevation. "Treeline", intermediate named as "mid", and closed or
#'       montane forest named as "low".}
#' \item{tree}{Id for tree.}
#' \item{tree.site}{Id site for each location of study.}
#' \item{tss}{Value of concentrations soluble carbohydrate per mass unit.}
#' \item{st}{Value of concentrations starch per mass unit.}
#' \item{nsc}{Value of concentrations non structural carbohydrates per mass unit.}
#' \item{tss.nsc}{.}
#' \item{wd}{It might be 'wood density', but not sure.}
#' \item{tss.mv}{Value of concentrations soluble carbohydrate per volume unit.}
#' \item{st.mv}{Value of concentrations starch per volume unit.}
#' \item{nsc.mv}{Value of concentrations non structural carbohydrates per volume unit.}
#'  }
#' @source 
#' The data were obtained from the DRYAD repository at \doi{10.5061/dryad.ks97h}.  
#' @references
#' Piper F, Vinegla B, Linares J, Camarero J, Cavieres L, Fajardo A. 2016. Mediterranean and temperate treelines are 
#' controlled by different environmental drivers. Journal of Ecology. 104: 691-702.  
#' @examples
#' data(carbohydrateTreelines)    
#' head(carbohydrateTreelines) 
'carbohydrateTreelines'
#' Contains information of forest plots across the Hawaiian archipelago.  
#' @description
#' Diameter at breast height (or occurrence) of individual trees, shrubs and tree
#'  ferns across 530 plots across the Hawaiian archipelago and includes native
#'   status and cultivated status of the 185 species.   
#' @usage
#' data(forestHawaii)
#' @format Contains 18 variables, as follows:
#' \describe{
#'   \item{island}{Island name.}
#'   \item{plot.id}{Unique numeric identifier for each plot.}
#' \item{study}{Brief name of study.}
#' \item{plot.area}{Plot area in m\eqn{^{2}}{^2}.}
#' \item{longitude}{Longitude of plot in decimal degrees; WGS84 coordinate system.}
#' \item{latitude}{Latitude of plot in decimal degrees; WGS84 coordinate system.}
#' \item{year}{Year in which plot data was collected.}
#' \item{census}{Numeric identifier for each census.}
#' \item{tree.id}{Unique numeric identifier for each individual.}
#' \item{scientific.name}{Genus and species of each individual following TPL v. 1.1.}
#' \item{family}{Family of each individual following TPL v. 1.1.}
#' \item{angiosperm}{Binary variable (1 = yes, 0 = no) indicating whether an individual is classified as an angiosperm following APG III.}
#' \item{monocot}{Binary variable (1 = yes, 0 = no) indicating whether an individual is classified as a monocot following APG III.}
#' \item{native.status}{Categorical variable ("native", "alien", "uncertain") indicating alien status of each individual following Wagner et al. (2005).}
#' \item{cultivated.status}{Binary variable (1 = yes, 0 = no, NA = not applicable) indicating if species is cultivated following PIER.}
#' \item{abundance}{Number of individuals (all = 1).}
#' \item{abundance.ha}{Abundance of each individual on a per hectare basis.}
#' \item{dbh}{Diameter at 1.3 m (in cm) for each individual; NA indicates that size was not measured, but was classified by size class.}
#'  }
#' @source 
#' The data were obtained from the DRYAD repository at \doi{10.5061/dryad.1kk02qr}.
#' @references
#' - Craven D, Knight T, Barton K, Bialic-Murphy L, Cordell S, Giardina C, Gillespie T, Ostertag R, Sack L,Chase J. 2018. 
#' OpenNahele: the open Hawaiian forest plot database. Biodiversity Data Journal 6: e28406.   
#' @examples
#' data(forestHawaii)    
#' table(forestHawaii$plot.id) 
'forestHawaii'
#' Maximum plant size in the Hawaiian archipelago.  
#' @description
#' Maximum plant size of 58 tree, shrub and tree fern species that occur 
#' in 530 forest plots across the Hawaiian archipelago. 
#' @usage
#' data(plantsHawaii)
#' @format Contains six variables, as follows:
#' \describe{
#'   \item{scientific.name}{Genus and epithet of each individual following The Plant List v. 1.1 (2013).}
#'   \item{family}{Family of each individual following The Plant List v. 1.1 (2013).}
#' \item{native.status}{Categorical variable ('native', 'alien', 'uncertain') indicating alien status of each individual following Wagner et al. (2005).}
#' \item{n}{Number of individuals used to estimate maximum plant size.}
#' \item{d.95}{Maximum plant size, estimated as D950.1 (King et al. 2006).}
#' \item{d.max.3}{Maximum plant size, estimated as Dmax3 (King et al. 2006).}
#'  }
#' @source 
#' The data were obtained from the DRYAD repository at \doi{10.5061/dryad.1kk02qr}.
#' @references
#' - Craven D, Knight T, Barton K, Bialic-Murphy L, Cordell S, Giardina C, Gillespie T, Ostertag R, Sack L,Chase J.
#' 2018. OpenNahele: the open Hawaiian forest plot database. Biodiversity Data Journal 6: e28406. 
#' @examples
#' data(plantsHawaii)    
#' head(plantsHawaii) 
'plantsHawaii'
#' Flora of Chile.  
#' @description
#' Dataset contains taxonomic level information
#' segregatted by latitude.  
#' @usage
#' data(floraChile)
#' @format Contains seven columns, as follows:
#' \describe{
#'   \item{family}{.}
#'   \item{genus}{.}
#' \item{scientific.name}{.}
#' \item{author}{.}
#' \item{origin}{.}
#' \item{life.form}{.}
#' \item{lat...}{.}
#'  }
#' @source 
#' The data are provided courtesy of Dr Jan Bannister at
#'  the Instituto Forestal (Chiloe, Chile).  
#' @references
#' - Bannister JR, Vidal OJ, Teneb E, Sandoval V. 2012. Latitudinal patterns
#'  and regionalization of plant diversity along a 4270‐km gradient in continental
#'   Chile. Austral Ecology, 37(4), 500-509. 
#' @examples
#' data(floraChile)    
#' head(floraChile) 
'floraChile'
#' Flora de Chile.  
#' @description
#' Contiene informacion taxonomica segregada por latitude.  
#' @usage
#' data(floraChile)
#' @format Contains seven columns, as follows:
#' \describe{
#'   \item{family}{.}
#'   \item{genus}{.}
#' \item{scientific.name}{.}
#' \item{author}{.}
#' \item{origin}{.}
#' \item{life.form}{.}
#' \item{lat...}{.}
#'  }
#' @source 
#' Datos cedidos por el  Dr Jan Bannister del Instituto Forestal (Chiloe, Chile).  
#' @references
#' - Bannister JR, Vidal OJ, Teneb E, Sandoval V. 2012. Latitudinal patterns
#'  and regionalization of plant diversity along a 4270‐km gradient in continental
#'   Chile. Austral Ecology, 37(4), 500-509. 
#' @examples
#' data(floraChile2)    
#' head(floraChile2) 
'floraChile2'
#' Contains information about regeneration of Nothofagus seedlings.  
#' @description
#' Dataset contains 442 observations.   
#' @usage
#' data(regNothofagus)
#' @format Contains 15 variables, as follows:
#' \describe{
#'   \item{site}{Id site of study.}
#'   \item{plot}{Number of plot.}
#' \item{scar}{Scarification in percentage of total area.}
#' \item{x.trans.total}{Transmitted radiation in percentage.}
#' \item{kPa}{Soil resistance to penetration.}
#' \item{SWC}{Soil water content.}
#' \item{SM}{Exposed mineral soil.}
#' \item{litter}{Litter cover in percentage.}
#' \item{CWD}{Ocular estimation in the regeneration plot in percentage.}
#' \item{MT}{Microtopography. 1 plane, 2 convex, 3 concave, 4 mixed (convex and concave) in the regeneration plot.}
#' \item{S}{Ground-layer vascular species richness in the regeneration plot..}
#' \item{LLES}{Long-lived early-seral tree species (N. dombeyi , N. alpina , Nothofagus pumilio ).}
#' \item{SLES}{Short-lived early-seral plants (Ribes spp. and Fuchsia sp).}
#' \item{LLLS}{Long-lived late-seral tree species (L. philippiana and Dasyphyllum diacantaoides ).}
#' \item{log.bam}{Logarithm of the cover of bamboo (\%) in the regeneration plot.}
#'  }
#' @source 
#' The data were obtained from the DRYAD repository at \doi{10.5061/dryad.3q977} 
#' @references
#' Soto D, Puettmann K.2018. Topsoil removal through scarification improves natural regeneration
#' in high-graded Nothofagus old-growth forests. Journal Applied Ecology. 55: 967- 976.  
#' @examples
#' data(regNothofagus)    
#' head(regNothofagus) 
'regNothofagus'
#' Contains information of demography of species.  
#' @description
#' Dataset contains 61 observations about life histories values for each species and site,
#'  as obtained from the parameterization carried out in studies that used the model SORTIE   
#' @usage
#' data(demograph)
#' @format Contains 15 variables, as follows:
#' \describe{
#'   \item{sp}{Name specie.}
#'   \item{site}{Name of site of study.}
#' \item{country}{Name of country.}
#' \item{site.n}{Code of site.}
#' \item{code}{Code of specie.}
#' \item{genus}{Genus of specie.}
#' \item{sps}{Abbreviated name specie.}
#' \item{family}{Family of specie.}
#' \item{phyl}{Type of phylogeny.}
#' \item{l.hab}{Type of leaf habit.}
#' \item{l.type}{.}
#' \item{leaf}{Type of leaf.}
#' \item{growth.l}{Growth at full light (time in years).}
#' \item{growth.d}{Growth in shade.}
#' \item{surv.d}{Survival in shade.}
#'  }
#' @source 
#' The data were obtained from the DRYAD repository.  
#' @references
#'  - Ameztegui A, Paquette A, Shipley B, Heym M, Messier C, Gravel D. 2016 . Shade tolerance and 
#'  the functional trait: demography relationship in temperate and boreal forests. Functional Ecology, 
#'  31: 821-830. 
#' @examples
#' data(demograph)    
#' head(demograph) 
'demograph'
#' Contains information of functional traits of species.
#' @description
#' Dataset contains 48 observations about about functional trait values for each of the 48 study species, 
#' including 23 evergreen and 25 deciduous.
#' @usage
#' data(sppTraits)
#' @format Contains 17 variables, as follows:
#' \describe{
#' 	\item{sp}{Abbreviated name of specie.}
#'   	\item{sp.name}{Name of specie.}
#' 	\item{family}{Family of specie.}
#' 	\item{genus}{Genus of specie.}
#' 	\item{phyl}{Type of phylogeny.}
#' 	\item{l.hab}{Type of leaf habit.}
#' 	\item{leaf}{Type of leaf.}
#' 	\item{lt}{.}
#' 	\item{lma}{Leaf mass area.}
#' 	\item{amass}{Photosynthetic capacity per unit leaf mass.}
#' 	\item{n.mass}{Leaf N content per unit mass.}
#' 	\item{pmass}{Leaf P content per unit mass.}
#' 	\item{l.lifespan}{Leaf life span.}
#' 	\item{l.length}{Leaf length.}
#' 	\item{sem}{Seed mass.}
#' 	\item{wd}{Wood density.}
#' 	\item{max.h}{Maximum height.}
#'   }
#' @source 
#' The data were provided from DRYAD repository  
#' @references
#'  - Ameztegui A, Paquette A, Shipley B, Heym M, Messier C, Gravel D. 2016 . Shade tolerance and 
#'  the functional trait: demography relationship in temperate and boreal forests. Functional Ecology, 
#'  31: 821-830. 
#' @examples
#' data(sppTraits)    
#' head(sppTraits) 
'sppTraits'
#' Contains information of Camera trap data on medium to large terrestrial mammals 
#' collected at 54 camera stations in Ruaha National Park, southern Tanzania.
#' @description
#' Dataset contains 14604 observations and sampling was carried out for two months during the
#' dry season of 2013 and two months during the wet season of 2014. Each camera station is associated
#' with a randomly placed camera and a trail-based camer, with the aim of comparing communities 
#' resulting from the two camera trap placement strategies. 
#' @usage
#' data(trailCameraTrap)
#' @format Contains 6 variables, as follows:
#' \describe{
#'   \item{reference}{Number of observation od datasets.}
#'   \item{placement}{Type of "placement" placed in each station (random or trail).}
#' \item{season}{Season where were made the samplings.}
#' \item{station}{Station where were collected the data.}
#' \item{specie}{Name of specie medium to large terrestrial mammals.}
#' \item{date.time}{The date and time of each photographic event is also given.}
#'  }
#' @source 
#' The data were provided by Dr Jeremy Cusack.  
#' @references
#'  - Cusack J, Dickman A, Rowcliffe M, Carbone C, Macdonald D, Coulson T. 2016 . Random versus
#'   game trail-based camera trap placement strategy for monitoring terrestrial mammal communities. PLoS ONE 10(5): e0126373.
#' @examples
#' data(trailCameraTrap)    
#' head(trailCameraTrap) 
'trailCameraTrap'
#' Contains information of abundance of plant species in the central-southern Andes of Chile.
#' @description
#' Abundance of plant species [50 total] (at parcel scale [100 m\eqn{^{2}}{^2}]) in burned Araucaria-Nothofagus 
#' forests with different levels of fire severity (ie, unburned = unburned, low_sev = low severity, 
#' mid_sev = medium severity , high_sev = high severity) in the China Muerta National Reserve, 
#' Andes of central-southern Chile.
#' @usage
#' data(sppAbundance)
#' @format Contains 6 variables, as follows:
#' \describe{
#'   \item{sp.name}{name of specie.}
#'   \item{sp.code.name}{code of specie}
#' \item{unburned}{Abundance of plants unburned.}
#' \item{low.sev}{Abundance of plants for low severity of burned.}
#' \item{mid.sev}{Abundance of plants for middle severity of burned.}
#' \item{high.sev}{Abundance of plants for high severity of burned.}
#'  }
#' @source 
#' The data are provided courtesy of Dr Andres Fuentes-Ramirez at the Universidad 
#' of La Frontera (Temuco, Chile)   
#' @references
#'  - Fuentes-Ramirez A, Salas-Eljatib C, Gonzalez M, Urrutia J, Arroyo P, Santibanez P. 2020. Initial response of understorey vegetation and tree
#'   regeneration to a mixed-severity fire in old-growth Araucaria-Nothofagus forests.Applied 
#'   Vegetation Science. 23:210-222.
#' @examples
#' data(sppAbundance)    
#' head(sppAbundance) 
'sppAbundance'
#' Tree volume for Pinus pinaster in the Baixo-Mino, Galicia, Spain. 
#'
#' @description
#' These are volume measurements data of sample trees in the Baixo-Mino region in Galicia, Spain.
#' @usage
#' data(pinaster)
#' @format Contains tree-level variables, as follows:
#' \describe{
#'   \item{stand}{stand number from the sample tree was selected.}
#' \item{si}{Site index of the stand.}
#' \item{tree.no}{tree number.}
#' \item{dbh}{Diameter at breast height, in cm.}
#' \item{htot}{Total height, in m.}
#'  \item{d4}{Upper-stem diameter at 4 m, in cm.}
#' \item{vol.wb}{Tree gross volume, in m\eqn{^{3}}{^3} with bark.}
#' \item{vol.wob}{Tree gross volume, in m\eqn{^{3}}{^3} without bark.}
#'  }
#' @source 
#' The data are provided courtesy of Dr Christian Salas-Eljatib at
#' the Universidad de Chile (Santiago, Chile).  
#' @references
#'  - Salas C, Nieto L, Irisarri A. 2005. Modelos de volumen para Pinus pinaster Ait. en la comarca del Baixo Mino,
#'   Galicia, Espana. Quebracho 12: 11-22. \url{https://eljatib.com/publication/2005-12-01_modelos_de_volumen_p/}
#' @examples
#' data(pinaster)    
#' head(pinaster) 
'pinaster'
#' Datos de volumen individual de árboles de Pinus pinaster en Galicia, España. 
#'
#' @description
#' Variables de volumen y otras a nivel de arbol para una muestra de árboles
#'  de Pinus pinaster en la comarca del Baixo-Mino en Galicia, España.
#' @usage
#' data(pinaster2)
#' @format Contiene las siguientes variables a nivel de arbol:
#' \describe{
#'   \item{rodal}{Rodal desde donde el arbol fue muestreado}
#' \item{ind.sitio}{Indice de sitio del rodal, en m.}
#' \item{arbol}{Numero del arbol.}
#' \item{dbh}{Diámetro a la altura del pecho, en cm.}
#' \item{htot}{Altura total, en m.}
#'  \item{d4}{Diámetro fustal a los 4 m, en cm.}
#' \item{vt.cc}{Volumen bruto total con corteza, en m\eqn{^{3}}{^3}.}
#' \item{vt.sc}{Volumen bruto total sin corteza, en m\eqn{^{3}}{^3}.}
#'  }
#' @source 
#' Los datos fueron cedidos por el Dr Christian Salas (Chile).  
#' @references
#'  - Salas C, Nieto L, Irisarri A. 2005. Modelos de volumen para Pinus pinaster Ait. en la comarca del Baixo Mino,
#'   Galicia, España. Quebracho 12: 11-22. \url{https://eljatib.com/publication/2005-12-01_modelos_de_volumen_p/}
#' @examples
#' data(pinaster2)    
#' head(pinaster2) 
'pinaster2'
#' Simulated yield of forestry plantations of exotic species in Chile. 
#'
#' @description
#' The yield tables of simulated plantations of Pinus radiata, Eucalyptus globulus, and Eucalyptus nitens
#'  are obtained from the Radiata simulator and EucaSim simulator built in Chile. Several stand-level variables 
#'  are part of the output.
#' @usage
#' data(simula)
#' @format Contains stand-level variables, as follows:
#' \describe{
#'   \item{species}{"P. radiata" is Pinus radiata, "E. globulus" is Eucalyptus globulus, and "E. nitens" is
#'   Eucalyptus nitens.}
#' \item{age}{plantation age, in years}
#'   \item{tph }{Tree density, in trees/ha}
#'  \item{gha }{Basal area, in m\eqn{^{2}}{^2}/ha}
#' \item{toph}{Dominant height, in m}
#'  \item{qmd}{quadratic mean diameter, in cm}
#' \item{totvol}{gross stand volume, in m\eqn{^{3}}{^3}/ha} 
#' \item{viu.10}{stand volume below an utilizacion index of 10 cm, in m\eqn{^{3}}{^3}/ha} 
#' \item{viu.15}{stand volume below an utilizacion index of 15 cm, in m\eqn{^{3}}{^3}/ha} 
#' \item{viu.20}{stand volume below an utilizacion index of 20 cm, in m\eqn{^{3}}{^3}/ha} 
#' \item{viu.25}{stand volume below an utilizacion index of 25 cm, in m\eqn{^{3}}{^3}/ha} 
#'  }
#' @source 
#'  The data were obtained as outputs for plantations without management in Chile. The academic
#'  version of the simulator was used. You can visit mnssimulacion.cl
#' @examples
#' data(simula)    
'simula'
#' Tree locations for a sample plot in the Llancahue experimental forest, near Valdivia, Chile. 
#'
#' @description
#' The Cartesian position, species, and diameter of trees within a plot were measured. The sample plot is  rectangular of 130 m by 70 m. Further details can be #' reviewed in the reference. 
#' @usage
#' data(pspLlancahue)
#' @format Contains tree-level variables, as follows:
#' \describe{
#'   \item{tree.code}{Tree identificator}
#' \item{spp.name}{species abreviation as follows: AP= Aextocicon puncatatum, EC=Eucryphia cordifolia, GA=Gevuina avellana, 
#'  LP= Laureliopsis philippiana, LS= Laurelia sempervirens, ND=Nothofagus dombeyi, Ot=Other, PS=Podocarpus saligna}
#' \item{dbh}{diameter at breast height, in cm}
#' \item{x.coord}{Cartesian position in the X-axis, in m}
#' \item{y.coord}{Cartesian position in the Y-axis, in m}
#'  }
#' @source 
#'  The data are provided courtesy of Prof. Daniel Soto at Universidad
#'  de Aysen (Coyhaique, Chile). 
#' @references
#' - Soto DP, Salas C, Donoso PJ, Uteau D. 2010. Heterogeneidad estructural y espacial de un bosque mixto dominado por
#' Nothofagus dombeyi despues de un disturbio parcial. Revista Chilena de Historia Natural 83(3): 335-347.
#' @examples
#' data(pspLlancahue)    
#' head(pspLlancahue) 
'pspLlancahue'
#' Ubicacion espacial de árboles en un parcela de muestreo en el bosque de Llancahue, cerca de Valdivia, Chile. 
#'
#' @description
#' La posicion cartesiana, especie, y diámetro de árboles en una parcela de muestreo rectangular de 130 m por 70 m. Mayores
#'  antecedentes aparecen en las referencias. 
#' @usage
#' data(pspLlancahue2)
#' @format Contains tree-level variables, as follows:
#' \describe{
#'  \item{arbol}{Identificador del árbol}
#' \item{espe}{Codificación de la especie como sigue: AP= Aextocicon puncatatum, EC=Eucryphia cordifolia, GA=Gevuina avellana, 
#'  LP= Laureliopsis philippiana, LS= Laurelia sempervirens, ND=Nothofagus dombeyi, Ot=Other, PS=Podocarpus saligna}
#' \item{dap}{Diámetro a la altura del pecho, en cm}
#' \item{coord.x}{Posicion cartesiana en el eje-X, en m}
#' \item{coord.y}{Posicion cartesiana en el eje-Y, en m}
#'  }
#' @source 
#'  Los datos fueron cedidos por el Prof. Daniel Soto de Universidad
#'  de Aysen (Coyhaique, Chile). 
#' @references
#' - Soto DP, Salas C, Donoso PJ, Uteau D. 2010. Heterogeneidad estructural y espacial de un bosque mixto dominado por
#' Nothofagus dombeyi despues de un disturbio parcial. Revista Chilena de Historia Natural 83(3): 335-347.
#' @examples
#' data(pspLlancahue2)    
#' head(pspLlancahue2) 
'pspLlancahue2'
#' Leaf measurements for Eucalyptus nitens trees in Tasmania, Australia. 
#'
#' @description
#' The length, width, and area of Eucalyptus nitens leaves were measured. 
#' @usage
#' data(eucaleaf)
#' @format Contains leaf-level variables, as follows:
#' \describe{
#'   \item{time}{Early or Late}
#' \item{tree}{an identificator for a given sample tree}
#' \item{shoot}{shoot description}
#' \item{l}{length of the leaf, in mm}
#' \item{w}{width of the leaf, in mm}
#' \item{la}{leaf area, in cm\eqn{^{2}}{^2}}
#'  }
#' @source 
#' Although the original source of the measurements is the Dissertation of Dr Candy (1999), 
#'  the data file used here was courtesy of Prof. Timothy Gregoire at
#'  Yale University (New Haven, CT, USA). Furthermore, these data were used by
#'  Gregoire and Salas (2009).
#' @references
#' - Candy SG. 1999. Predictive models for integrated pest management of the
#' leaf beetle Chrysophtharta bimaculata in Eucalyptus nitens in Tasmania. Doctoral dissertation,
#'  University of Tasmania, Hobart, Australia. 
#' @references
#' - Gregoire TG, and Salas C. 2009. Ratio estimation with measurement
#' error in the auxiliary variate. Biometrics 65(2):590-598 \doi{10.1111/j.1541-0420.2008.01110.x}
#' @examples
#' data(eucaleaf)    
#' head(eucaleaf) 
'eucaleaf'
#' Mediciones foliares para árboles de Eucalyptus nitens en Tasmania, Australia. 
#'
#' @description
#' Mediciones de largo, ancho y area de hojas de Eucalyptus nitens. 
#' @usage
#' data(eucaleaf)
#' @format Contiene variables a nivel de hoja, como sigue:
#' \describe{
#'   \item{tiempo}{factor a dos niveles: Temprano o Tardio}
#' \item{arbol}{un identificador del arbol muestra}
#' \item{meristema}{descripcion del meristema}
#' \item{largo}{largo de la hoja, en mm}
#' \item{ancho}{ancho de la hoja, en mm}
#' \item{area}{area foliar, en cm\eqn{^{2}}{^2}}
#'  }
#' @source 
#' Aunque la fuente original de estas mediciones proviene de la tesis del Dr Candy (1999), 
#'  el archivo de datos fue cortesia del Prof. Timothy Gregoire de
#'  Yale University (New Haven, CT, USA). Ademas, estos datos fueron ocupados en
#'  el estudio de Gregoire y Salas (2009).
#' @references
#' - Candy SG. 1999. Predictive models for integrated pest management of the
#' leaf beetle Chrysophtharta bimaculata in Eucalyptus nitens in Tasmania. Doctoral dissertation,
#'  University of Tasmania, Hobart, Australia. 
#' @references
#' - Gregoire TG, and Salas C. 2009. Ratio estimation with measurement
#' error in the auxiliary variate. Biometrics 65(2):590-598 \doi{10.1111/j.1541-0420.2008.01110.x}
#' @examples
#' data(eucaleaf2)    
#' head(eucaleaf2) 
'eucaleaf2'
#' Leaf measurements (all, n=744) for Eucalyptus nitens trees in Tasmania, Australia. 
#'
#' @description
#' The length, width, and area of Eucalyptus nitens leaves were measured for all the samples
#' of Candy (1999). 
#' @usage
#' data(eucaleafAll)
#' @format Contains leaf-level variables, as follows:
#' \describe{
#'   \item{time}{Early or Late}
#' \item{tree}{an identificator for a given sample tree}
#' \item{shoot}{shoot description}
#' \item{l}{length of the leaf, in mm}
#' \item{w}{width of the leaf, in mm}
#' \item{la}{leaf area, in cm\eqn{^{2}}{^2}}
#'  }
#' @source 
#' Although the original source of the measurements is the Dissertation of Dr Candy (1999), 
#'  the data file used here was courtesy of Prof. Timothy Gregoire at
#'  Yale University (New Haven, CT, USA). Furthermore, these data were used by
#'  Gregoire and Salas (2009).
#' @references
#' - Candy SG. 1999. Predictive models for integrated pest management of the
#' leaf beetle Chrysophtharta bimaculata in Eucalyptus nitens in Tasmania. Doctoral dissertation,
#'  University of Tasmania, Hobart, Australia. 
#' @examples
#' data(eucaleafAll)    
#' head(eucaleafAll) 
'eucaleafAll'
#' Mediciones foliares (todas, n=744) para árboles de Eucalyptus nitens en Tasmania, Australia. 
#'
#' @description
#' Mediciones de largo, ancho y area de hojas de Eucalyptus nitens para toda la muestra de Candy (1999). 
#' @usage
#' data(eucaleafAll2)
#' @format Contiene variables a nivel de hoja, como sigue:
#' \describe{
#'   \item{tiempo}{factor a dos niveles: Temprano o Tardio}
#' \item{arbol}{un identificador del arbol muestra}
#' \item{meristema}{descripcion del meristema}
#' \item{largo}{largo de la hoja, en mm}
#' \item{ancho}{ancho de la hoja, en mm}
#' \item{area}{area foliar, en cm\eqn{^{2}}{^2}}
#'  }
#' @source 
#' Aunque la fuente original de estas mediciones proviene de la tesis del Dr Candy (1999), 
#'  el archivo de datos fue cortesia del Prof. Timothy Gregoire de
#'  Yale University (New Haven, CT, USA). 
#' @references
#' - Candy SG. 1999. Predictive models for integrated pest management of the
#' leaf beetle Chrysophtharta bimaculata in Eucalyptus nitens in Tasmania. Doctoral dissertation,
#'  University of Tasmania, Hobart, Australia. 
#' @examples
#' data(eucaleafAll2)    
#' head(eucaleafAll2) 
'eucaleafAll2'
#' Age and physical measurement data for wild bears. Dataframe same as "bears" but without missing values.
#'
#' @description
#' Wild bears were anaesthetised, and their bodies were measured and weighed. One goal of the study
#'  was to make a table (or perhaps a set of tables) for people interested in estimating the weight of a
#'  bear based on other measurements. 
#' @usage
#' data(bearsDepu)
#' @format Contiene variables de nivel individual, como se describen a continuacion:
#' \describe{
#'   \item{id}{Bear identificator}
#' \item{age}{age in months}
#' \item{month}{Diameter at breast height, in cm}
#' \item{sex}{1 =male, 2 = female}
#' \item{headL}{length of head, in cm}
#' \item{headW}{width of head, in cm}
#' \item{neckG}{girth of neck, in cm}
#' \item{length}{body length, in cm}
#' \item{chestG}{girth of chest, in cm}
#' \item{weight}{body weight, in kg}
#' \item{obs}{observation number for bear}
#' \item{name}{name given to bear}
#'  }
#' @source 
#' Minitab, Inc. The data description is courtesy of Prof. Timothy Gregoire at
#'  Yale University (New Haven, CT, USA).
#' @references
#' According to Prof. Gregoire, This data set was supplied by Gary Alt. Entertaining 
#'  references are in Reader's Digest April, 1979, and Sports Afield September, 1981.
#' @examples
#' data(bearsDepu)    
#' head(bearsDepu)
#' @import  
'bearsDepu'
#' Age and physical measurement data for wild bears. Dataframe same as "bears" but without missing values.
#'
#' @description
#' Los osos salvajes fueron anestesiados y sus cuerpos fueron medidos y pesados. Uno de los objetivos del estudio fue hacer una 
#' tabla (o quizas un conjunto de tablas) para las personas interesadas en estimar el peso de un oso basandose en otras medidas.
#' Esto se usara porque es mas facil medir la longitud de un oso, por ejemplo, que pesarlo.
#' Observe que faltan valores para algunas de las variables.
#' @usage
#' data(bearsDepu2)
#' @format Contiene variables de nivel individual, como se describen a continuacion:
#' \describe{
#'   \item{id}{Identificador de oso}
#' \item{age}{edad en meses}
#' \item{month}{diámetro a la altura del pecho, en cm}
#' \item{sex}{1 = hombre, 2 = mujer}
#' \item{headL}{longitud de la cabeza, en cm}
#' \item{headW}{ancho de la cabeza, en cm}
#' \item{neckG}{circunferencia del cuello, en cm}
#' \item{length}{longitud del cuerpo, en cm}
#' \item{chestG}{circunferencia del pecho, en cm}
#' \item{weight}{peso corporal, en kg}
#' \item{obs}{numero de observacion para el oso}
#' \item{name}{nombre dado al oso}
#'  }
#' @source 
#' Minitab, Inc. The data description is courtesy of Prof. Timothy Gregoire at
#'  Yale University (New Haven, CT, USA).
#' @references
#' According to Prof. Gregoire, This data set was supplied by Gary Alt. Entertaining 
#'  references are in Reader's Digest April, 1979, and Sports Afield September, 1981.
#' @examples
#' data(bearsDepu2)    
#' head(bearsDepu2)
#' @import  
'bearsDepu2'
#' Age and physical measurement data for wild bears. 
#'
#' @description
#' Wild bears were anaesthetised, and their bodies were measured and weighed. One goal of the study
#'  was to make a table (or perhaps a set of tables) for people interested in estimating the weight of a
#'  bear based on other measurements. Notice that there are missing values for some of the variables.
#' @usage
#' data(bears)
#' @format Contains individual-level variables, as follows:
#' \describe{
#'   \item{id}{Bear id}
#' \item{age}{age in months}
#' \item{month}{Diameter at breast height, in cm}
#' \item{sex}{1 =male, 2 = female}
#' \item{headL}{length of head, in cm}
#' \item{headW}{width of head, in cm}
#' \item{neckG}{girth of neck, in cm}
#' \item{length}{body length, in cm}
#' \item{chestG}{girth of chest, in cm}
#' \item{weight}{body weight, in kg}
#' \item{obs}{observation number for bear}
#' \item{name}{name given to bear}
#'  }
#' @source 
#' Minitab, Inc. The data description is courtesy of Prof. Timothy Gregoire at
#'  Yale University (USA).
#' @references
#' According to Prof. Gregoire, This data set was supplied by Gary Alt. Entertaining 
#'  references are in Reader's Digest April, 1979, and Sports Afield September, 1981.
#' @examples
#' data(bears)    
#' head(bears) 
'bears'
#' Contains tree-level variables for roble (Nothofagus obliqua) in the Rucamanque experimental forest, near Temuco, Chile. 
#'
#' @description
#' These are tree-level measurement data of sample trees in the Rucamanque experimental forest, 
#'  near Temuco, in the Araucania region in south-centralChile, measured in 1999.  The
#' data are the same as in the dataframe "treevolruca", but only having observations for the 
#' species roble (Nothofagus obliqua).
#' @usage
#' data(treevolroble)
#' @format Contains tree-level variables, as follows:
#' \describe{
#'   \item{tree.no}{Tree id}
#' \item{dbh}{Diameter at breast height, in cm}
#' \item{htot}{Total height, in m.}
#'  \item{d6}{Upper-stem diameter at 6 m, in cm}
#' \item{vtot}{Tree gross volume, in m\eqn{^{3}}{^3} with bark.}
#'  }
#' @source 
#' The data are provided courtesy of Dr Christian Salas at
#' the Universidad de Chile (Santiago, Chile).  
#' @references
#' - Salas C. 2002. Ajuste y validación de ecuaciones de volumen para un relicto
#' del bosque de Roble-Laurel-Lingue. Bosque 23(2): 81-92. \doi{10.4067/S0717-92002002000200009} \url{https://eljatib.com/publication/2002-07-01_ajuste_y_validacion_/} 
#' @examples
#' data(treevolroble)    
#' head(treevolroble) 
'treevolroble'
#' Variables alometricas a nivel de arbol para roble (Nothofagus obliqua) en el bosque de Rucamanque, cerca de Temuco, Chile. 
#'
#' @description
#' These are tree-level measurement data of sample trees in the Rucamanque experimental forest, 
#'  near Temuco, in the Araucania region in south-centralChile, measured in 1999.  The
#' data are the same as in the dataframe "treevolruca", but only having observations for the 
#' species roble (Nothofagus obliqua).
#' @usage
#' data(treevolroble2)
#' @format Las siguientes columnas son parte de la dataframe:
#' \describe{
#'   \item{arbol}{Numero del arbol.}
#' \item{especie}{Especie.}
#' \item{dap}{Diámetro a la altura del pecho, en cm.}
#' \item{htot}{Altura total, en m.}
#'  \item{d6}{Diámetro fustal a los 6 m, en cm.}
#' \item{vtot}{Volumen bruto total, en m\eqn{^{3}}{^3} with bark.}
#'  }
#' @source 
#' The data are provided courtesy of Dr Christian Salas (Chile).  
#' @references
#' - Salas C. 2002. Ajuste y validación de ecuaciones de volumen para un relicto
#' del bosque de Roble-Laurel-Lingue. Bosque 23(2): 81-92. \doi{10.4067/S0717-92002002000200009} \url{https://eljatib.com/publication/2002-07-01_ajuste_y_validacion_/} 
#' @examples
#' data(treevolroble2)    
#' head(treevolroble2) 
'treevolroble2'
#' Contains tree-level variables of several species in the Rucamanque experimental forest, near Temuco, Chile. 
#'
#' These are tree-level measurement data of sample trees in the Rucamanque experimental forest, 
#'  near Temuco, in the Araucania region in south-centralChile, measured in 1999.  The following
#'  species are part of the data: laurel (laurelia sempervirens), lingue (Persea lingue), olivillo (Aextocicon puncatum), 
#'  roble (Nothofagus obliqua), tepa (Laureliosis philippiana), y tineo (Weinmannia trichosperma).
#' @usage
#' data(treevolruca)
#' @format Contains tree-level variables, as follows:
#' \describe{
#'   \item{tree.no}{Tree id.}
#' \item{spp}{Species.}
#' \item{dbh}{Diameter at breast height, in cm.}
#' \item{htot}{Total height, in m.}
#'  \item{d6}{Upper-stem diameter at 6 m, in cm.}
#' \item{vtot}{Tree gross volume, in m\eqn{^{3}}{^3} with bark.}
#'  }
#' @source 
#' The data were provided courtesy of Dr Christian Salas (Universidad de Chile, Santiago, Chile).
#' @references
#' - Salas C. 2002. Ajuste y validación de ecuaciones de volumen para un relicto
#' del bosque de Roble-Laurel-Lingue. Bosque 23(2): 81-92. \doi{10.4067/S0717-92002002000200009} \url{https://eljatib.com/publication/2002-07-01_ajuste_y_validacion_/} 
#' @examples
#' data(treevolruca)    
#' head(treevolruca) 
'treevolruca'
#' Variables alometricas a nivel de arbol para varias especies del bosque de Rucamanque, cerca de Temuco, Chile. 
#'
#' Volumen, altura y diámetro, entre otras para árboles muestra en el bosque de Rucamanque, cerca de Temuco, 
#' en la region de la Araucania, en el sur de Chile.  Las siguientes especies son parte de los datos: laurel (laurelia sempervirens), lingue (Persea lingue), olivillo (Aextocicon puncatum), 
#'  roble (Nothofagus obliqua), tepa (Laureliosis philippiana), y tineo (Weinmannia trichosperma).
#' @usage
#' data(treevolruca2)
#' @format Las siguientes columnas son parte de la dataframe:
#' \describe{
#'   \item{arbol}{Numero del arbol.}
#' \item{especie}{Especie.}
#' \item{dap}{Diámetro a la altura del pecho, en cm.}
#' \item{htot}{Altura total, en m.}
#'  \item{d6}{Diámetro fustal a los 6 m, en cm.}
#' \item{vtot}{Volumen bruto total, en m\eqn{^{3}}{^3} with bark.}
#'  }
#' @source 
#' Los datos fueron cedidos por el Dr Christian Salas-Eljatib (Chile).
#' @references
#' - Salas C. 2002. Ajuste y validación de ecuaciones de volumen para un relicto
#' del bosque de Roble-Laurel-Lingue. Bosque 23(2): 81-92. \doi{10.4067/S0717-92002002000200009} \url{https://eljatib.com/publication/2002-07-01_ajuste_y_validacion_/} 
#' @examples
#' data(treevolruca2)    
#' head(treevolruca2) 
'treevolruca2'
#' Contains plot-level variables in Araucaria araucana forests in southern Chile. 
#'
#'
#' @description
#' These are plot-level measurement data from the Araucaria araucana forests 
#'  in southern Chile, measured in 2009.  The data  was based on fixed-area plots of 1000 m\eqn{^{2}}{^2}.  They are two forest stands.
#' @usage
#' data(araucaria)
#' @format Contains plot-level variables as follows:
#' \describe{
#'   \item{stand}{Stand number}
#'   \item{plot.no}{Plot sample identificator number}
#'   \item{x.utm}{UTM  coordinate in X-axis, in km}
#'   \item{y.utm}{UTM  coordinate in Y-axis, in km}
#'     \item{slope}{Slope, in \%}
#' \item{aspect}{Aspect, in degrees}
#'     \item{eleva}{Elevation, in msnm}    
#'   \item{nha }{Tree density, in trees/ha}
#'  \item{gha }{Basal area, in m\eqn{^{2}}{^2}/ha}
#' \item{hdom}{Dominant height, in m}
#' \item{vha }{Gross stand volume, m\eqn{^{3}}{^3}/ha} 
#'  \item{dg}{Diameter of the average basal area tree of the plot, in cm}
#'  }
#' @source  
#' The data are provided courtesy of Dr Nelson Ojeda at Universidad de La Frontera (Temuco, Chile).  
#' @references
#' Salas C, Ene L, Ojeda N, Soto H. 2010. Metodos estadisticos parametricos y no parametricos
#'    para predecir variables de rodal basados en Landsat ETM+: una comparacion en un bosque
#'     de Araucaria araucana en Chile [Parametric and non-parametric statistical methods for 
#'     predicting plotwise variables based on Landsat ETM+: a comparison in an Araucaria araucana forest
#'      in Chile]. Bosque 31(3): 179-194. 
#' @examples
#' data(araucaria)    
#' head(araucaria) 
"araucaria"
#' Variables a nivel de parcela para bosques de Araucaria araucana el sur de Chile. 
#'
#'
#' @description
#' Estos son variables a nivel de parcela para bosques Araucaria araucana  
#'  en el sur de Chile, medidos en 2009.  Estas variables se basan en mediciones
#'  realizadas en parcelas de muestreo de superficie fija de 1000 m\eqn{^{2}}{^2}.  Hay dos rodales.
#' @usage
#' data(araucaria)
#' @format Contains plot-level variables as follows:
#' \describe{
#'   \item{rodal}{Stand number}
#'   \item{parcela}{Plot sample identificator number}
#'   \item{x.utm}{UTM  coordinate in X-axis, in km}
#'   \item{y.utm}{UTM  coordinate in Y-axis, in km}
#'     \item{pendiente}{Slope, in \%}
#' \item{exposicion}{Aspect, in degrees}
#'     \item{altitud}{Elevation, in msnm}    
#'   \item{nha}{Densidad, en arb/ha}
#'  \item{gha}{Area basal, en m\eqn{^{2}}{^2}/ha}
#' \item{hdom}{Altura dominante, en m}
#' \item{vha}{Volumen bruto, en m\eqn{^{3}}{^3}/ha} 
#'  \item{dg}{Diameter medio cuadratico, en cm}
#'  }
#' @source  
#' Los datos a nivel de arbol fueron cedidos por el Dr Nelson Ojeda de
#' la Universidad de La Frontera (Temuco, Chile).  
#' @references
#' Salas C, Ene L, Ojeda N, Soto H. 2010. Metodos estadisticos parametricos y no parametricos
#'    para predecir variables de rodal basados en Landsat ETM+: una comparacion en un bosque
#'     de Araucaria araucana en Chile. Bosque 31(3): 179-194. 
#' @examples
#' data(araucaria2)    
#' head(araucaria2) 
"araucaria2"
#' Diameter, height and volume for Black Cherry Trees
#' 
#' @description
#' This data set provides measurements of the diameter, height and volume of timber in 31 felled black cherry trees.
#' This dataframe is a slight modification to the original dataframe "trees" from the datasets R package.
#' @usage
#' data(treevol)
#' @format A data frame with 31 observations and three variables
#' \describe{
#' \item{dbh}{diameter at breast height, in cm}
#' \item{htot}{total height, in m}
#' \item{vtot}{volume of timber, in cubic meters}
#'  }
#' @source 
#' Ryan, T. A., Joiner, B. L. and Ryan, B. F. (1976) The Minitab Student Handbook. Duxbury Press.
#' @examples
#' pairs(treevol, panel = panel.smooth, main = "treevol dataframe")
#' plot(vtot ~ dbh, data = treevol, log = "xy")
#' coplot(log(vtot) ~ log(dbh) | htot, data = treevol,
#'        panel = panel.smooth)
#' summary(m1 <- lm(log(vtot) ~ log(dbh), data = treevol))
#' summary(m2 <- update(m1, ~ . + log(htot), data = treevol))
#' anova(m1,m2)
'treevol'
#' Volumen, altura, y diámetro para árboles de Black Cherry 
#' 
#' @description
#' Estos datos provienen de mediciones de volumen, altura y diámetro en 31 árboles volteados de black cherry (Prunus serotina).
#' Son una modificacion la dataframe 'trees' del paquete datasets de R.
#' @usage
#' data(treevol2)
#' @format Datos con 31 observaciones y tres variables
#' \describe{
#' \item{dap}{diámetro a la altura del pecho, en cm}
#' \item{atot}{altural total, en m}
#' \item{vtot}{volumen total, en m\eqn{^{3}}{^3}}
#'  }
#' @source 
#' Ryan, T. A., Joiner, B. L. and Ryan, B. F. (1976) The Minitab Student Handbook. Duxbury Press.
#' @examples
#' pairs(treevol2, panel = panel.smooth, main = "treevol dataframe")
#' plot(vtot ~ dap, data = treevol2, log = "xy")
#' coplot(log(vtot) ~ log(dap) | atot, data = treevol2,
#'        panel = panel.smooth)
#' summary(m1 <- lm(log(vtot) ~ log(dap), data = treevol2))
#' summary(m2 <- update(m1, ~ . + log(atot), data = treevol2))
#' anova(m1,m2)
'treevol2'
#' Diameter growth of orange trees
#' 
#' @description
#' The orange data frame has 35 rows and four columns of records of the growth of orange trees.
#' @usage
#' data(orange)
#' @format A time series data containing the following columns:
#' \describe{
#' \item{tree.id}{an ordered factor indicating the tree on which the measurement is made. The ordering is according to increasing maximum diameter.}
#' \item{time}{a numeric vector giving the numbers of days since 1968/12/31}
#' \item{girth}{a numeric vector of trunk perimeter (mm). This is probably a circumference at breast height, a standard measurement in forestry.}
#' \item{dbh}{a numeric vector of diameter at breast height (mm).}
#' \item{site}{a factor variable, representing site conditions with two levels.}
#' \item{spp}{a factor variable, representing tree species with three levels.}
#'  }
#' @source 
#' Modified by Christian Salas-Eljatib from the Orange R dataframe.
#' @examples
#' data(orange)
#' 
#' coplot(dbh ~ time | tree.id, data = orange, show.given = FALSE)
#' m1 <- nls(dbh ~ SSlogis(time, Asym, xmid, scal),
#'            data = orange, subset = tree.id == 3)
#' plot(dbh ~ time, data = orange, subset = tree.id == 3,
#'      xlab = "Time (number of days since 1968/12/31)",
#'      ylab = "Tree diameter (mm)", las = 1)
#' time <- seq(0, 1600, length.out = 101)
#' lines(time, predict(m1, list(time = time)))
'orange'
#' Crecimiento diametral de árboles de naranjo
#' 
#' @description
#' The orange data frame has 35 rows and four columns of records of the growth of orange trees.
#' @usage
#' data(orange2)
#' @format A time series data containing the following columns:
#' \describe{
#' \item{arbol}{indica el identificador del arbol.}
#' \item{tiempo}{numero de dias desde el 31 de diciembre de 1968.}
#' \item{peri}{el perimetro del tronco (mm), medido a la altura del pecho.}
#' \item{dap}{diámetro a la altura del pecho (mm).}
#' \item{sitio}{un factor, representando condiciones de sitio, en dos niveles.}
#' \item{espe}{un factor, representando especie del arbol, en tres niveles.}
#'  }
#'  
#' @source 
#' Modificado por Christian Salas-Eljatib desde la dataframe Orange de libreria datasets.
#' @examples
#' data(orange2)
#' 
#' coplot(dap ~ tiempo | arbol, data = orange2, show.given = FALSE)
#' m1 <- nls(dap ~ SSlogis(tiempo, Asym, xmid, scal),
#'            data = orange2, subset = arbol == 3)
#' plot(dap ~ tiempo, data = orange2, subset = arbol== 3,
#'      xlab = "Tiempo (numero de dias desde 31/12/1968)",
#'      ylab = "Diametro (mm)", las = 1)
#' tiempo <- seq(0, 1600, length.out = 101)
#' lines(tiempo, predict(m1, list(tiempo = tiempo)))
'orange2'
#' Height growth of Pinus taeda (Loblolly pine) trees
#' 
#' @description
#' The Loblolly data frame has 84 rows and tree columns of records of the tree height growth of Loblolly pine trees. This dataframe
#'  is a slight modification to the original dataframe "Loblolly" from the datasets R package.
#' @usage
#' data(ptaeda)
#' @format An object of class c("nfnGroupedData", "nfGroupedData", "groupedData", "data.frame") containing the following columns:
#' \describe{
#' \item{seed.id}{an ordered factor indicating the seed source for the tree. The ordering is according to increasing maximum height.}
#' \item{age}{a numeric vector of tree ages, in yr.}
#' \item{height}{a numeric vector of tree heights, in m.}
#'  }
#' @source 
#' Pinheiro, J. C. and Bates, D. M. (2000) Mixed-effects Models in S and S-PLUS. Springer.
#' @examples
#' 
#' data(ptaeda)
#' plot(height ~ age, data = ptaeda, subset = seed.id == 329,
#'      xlab = "Tree age (yr)", las = 1,
#'      ylab = "Tree height (m)",
#'      main = "Loblolly data and fitted curve (seed.id 329 only)")
#' m1 <- nls(height ~ SSasymp(age, Asym, R0, lrc),
#'            data = ptaeda, subset = seed.id == 329)
#' age <- seq(0, 30, length.out = 101)
#' lines(age, predict(m1, list(age = age)))
'ptaeda'
#' Contains tree-level biomass data for several species in Canada.
#'
#' @description
#' These are tree-level variables for several species in Canada.
#' 
#' @format 
#' \describe{
#'   \item{treenum}{tree number.}
#'   \item{spp}{species common name.}
#'   \item{dbh}{diameter at breast height, in cm.}
#'   \item{height}{total height, in m.}
#'   \item{totbiom}{total biomass, in kg.}
#'   \item{bolebiom}{stem biomass, in kg.}
#'   \item{branchbiom}{branches biomass, in kg.}
#'   \item{foliagebiom}{foliage biomass, in kg.}
#'  }
#' @source  
#' The data are provided courtesy of Prof. Timothy Gregoire at
#' the School of Forestry and Environmental Studies at Yale University (New Haven, CT, USA).
#' @examples
#' data(biomass)    
#' head(biomass) 
"biomass"
#' Biomasa a nivel de arbol para especies arboreas de Canada.
#'
#' @description
#' These are tree-level variables for several species in Canada.
#' 
#' @format 
#' \describe{
#'   \item{treenum}{tree number.}
#'   \item{spp}{species common name.}
#'   \item{dbh}{diameter at breast height, in cm.}
#'   \item{height}{total height, in m.}
#'   \item{totbiom}{total biomass, in kg.}
#'   \item{bolebiom}{stem biomass, in kg.}
#'   \item{branchbiom}{branches biomass, in kg.}
#'   \item{foliagebiom}{foliage biomass, in kg.}
#'  }
#' @source  
#' The data are provided courtesy of Prof. Timothy Gregoire at
#' the School of Forestry and Environmental Studies at Yale University (New Haven, CT, USA).
#' @examples
#' data(biomass2)    
#' head(biomass2) 
"biomass2"
#' Tree locations for several plots of Norway spruce in Austria
#'
#' @description
#' The Cartesian position, species, year, ID tree , and diameter of trees within a plot were measured. 
#' @usage
#' data(spatAustria)
#' @format Contains cartesian position of trees, and covariates, in sample plots, as follows:
#' \describe{
#' \item{plot.code}{Plot identificator}
#'   \item{tree.code}{Tree identificator}
#' \item{spp.name}{species abreviation as follows: PCAB=Picea abies, FASY= Fagus sylvatica, QCPE=Quercus petraea , PNSY= Pinus Sylvestris, LADC=Larix decidua}
#' \item{x.coord}{Cartesian position in the X-axis, in m}
#' \item{y.coord}{Cartesian position in the Y-axis, in m}
#' \item{year}{Measurement year}
#' \item{dbh}{diameter at breast-height, in cm}
#'  }
#' @references
#' - Kindermann G. Kristofel F, Neumann M, Rossler G, Ledermann T & Schueler. 2018. 109 years of forest growth measurements from
#'  individual Norway spruce trees. Sci. Data 5:180077 \doi{10.1038/sdata.2018.77}
#' @examples
#' data(spatAustria)    
#' head(spatAustria)
#' pos<-spatAustria
#' oldpar<-par(mar=c(4,4,0,0))
#' bord<-data.frame(x=c(min(pos$x.coord),max(pos$x.coord),min(pos$x.coord),max(pos$x.coord)),
#'                y=c(min(pos$y.coord),min(pos$y.coord),max(pos$y.coord),min(pos$y.coord)))
#' plot(bord,type="n", xlab="x (m)", ylab="y (m)", asp=1, bty='n')
#' points(pos$x.coord,pos$y.coord,col=pos$plot.code,cex=0.5) 
#' par(oldpar)
"spatAustria"
#' Functional traits of vegetative species in Chile.
#'
#' @description
#' Functional traits of vegetative species in Chile. Includes column with codified name (esp) 
#' @usage
#' data(traits)
#' @format 
#' \describe{
#'   \item{esp}{species codified name}
#'   \item{shadeTolerance}{indicates the species tolerance to shape. There are three main classes: shade-tolerant, shade-midtolerant and shade-intolerant}
#'   \item{spp.ci.name}{Scientific name.}
#'   \item{spp.ci.abb.}{.}
#'   \item{wd}{wood density in kg per cubic meters.}
#'  }
#' @source  
#' Some of the information on shade tolerance can be found in Soto et al 2010.
#' @references
#' - Soto DP, Salas C, Donoso PJ, Uteau D. 2010. Heterogeneidad estructural y espacial de un bosque mixto dominado por
#' Nothofagus dombeyi despues de un disturbio parcial. Revista Chilena de Historia Natural 83(3): 335-347.
"traits"
#' Rasgos funcionales para algunas especies vegetales de Chile.
#'
#' @description
#' Rasgos funcionales para algunas especies vegetales de Chile.  
#' @usage
#' data(traits2)
#' @format 
#' \describe{
#'   \item{especie}{Codigo alfanumerico para especie.}
#'   \item{tolerancia.sombra}{Tolerancia a la sombra de la especie.}
#'   \item{nombre.cient}{Nombre cientifico.}
#'   \item{nom.cient.abre}{Nombre cientifico abreviado.}
#'   \item{den.madera}{Densidad de la madera en kg/m\eqn{^{3}}{^3}.}
#'  }
#' @source  
#' Parte de la informacion sobre tolerancia a la sombra se encuentra en Soto et al 2010
#' @references
#' - Soto DP, Salas C, Donoso PJ, Uteau D. 2010. Heterogeneidad estructural y espacial de un bosque mixto dominado por
#' Nothofagus dombeyi despues de un disturbio parcial. Revista Chilena de Historia Natural 83(3): 335-347.
"traits2"
#' Names and other information of plant species (mainly trees)
#' 
#' @description
#' This data set provides names (taxonomy), of plant species. Includes codes and name abbreviations used by the Biometrics group at the Forest Biometrics and Modelling Lab, Universidad de Chile, Santiago, Chile.
#' @usage
#' data(speciesList)
#' @format A data frame with 63 observations on 31 variables
#' \describe{
#' \item{nesp}{Unique correlative specie number}
#' \item{spp.ci.name}{Species scientific name}
#' \item{spp.ci.abb}{Species scientific name abbreviation}
#' \item{common.name}{Species common name. No blank spaces,  no special characters}
#' \item{common.nameBlank}{Species common name. With blank spaces,  no special characters}
#' \item{esp}{Species code: code given by CEM Biometrics to identify species for different processing routines}
#' \item{common.nameLatex}{Species common name formatted for Latex}
#' \item{nTaxon}{Unique number of the taxon (i.e., species)}
#' \item{kingdom}{Taxonomic rank Kingdom. In this datase, all species belong to the Kingdom Plantae}
#' \item{division}{Taxonomic rank division or phylum within the Kingdom}
#' \item{class}{Taxonomic rank Class within the Kingdom}
#' \item{order}{Taxonomic rank Order within the Class}
#' \item{family}{Taxonomic rank Family within the Order}
#' \item{spp.ci.full}{Full scientific name including author}
#' \item{genus}{Taxonomic rank Genus within the Family}
#' \item{epithet}{Specific epithet}
#' \item{sppAuthor}{Species author}
#' \item{subSpp}{Subespecies: one of two or more populations of a species varying from one another by morphological characteristics}
#' \item{subSppAuthor}{Subespecies author}
#' \item{varSpp}{Species variety or varietas}
#' \item{varSppAuthor}{Variety author}
#' \item{formSpp}{Form or forma}
#' \item{formSppAuthor}{Form author}
#' \item{commonNamesList}{List of common names per species, separated by commas}
#' \item{synonyms}{Synonyms of the scientific name by which the species has been or is known}
#' \item{borCountries}{Border countries given the species distribution range}
#' \item{habit}{Habit. The general appearance, growth form, or architecture e.g., tree, shrub, grass}
#' \item{lifeCycle}{Life cycle}
#' \item{statusOri}{Status according to the species origin: Native or Endemic}
#' \item{regDist}{Distribution range of the species, within Chile administrative regions}
#' \item{elevRange}{Distribution range of the species, in terms of elevation. Meters above sea level}
#' \item{notes}{Notes}
#' }
#' @source 
#' Data provided from \url{https://investigacion.conaf.cl/repositorio/documento/ficha-repositorio.php?redo_id=1080946}
#' @references
#' Proyecto 004/2016 Lista sistematica actualizada de la flora vascular nativa de Chile, origen y distribucion geografica. VII Concurso del Fondo de Investigacion del Bosque Nativo
'speciesList'
#' Contains regeneration microsite data in Robinson Crusoe Island forest
#'
#' @description
#' These are plot-level measurement (2x2 m) data from the forests in the Robinson Crusoe Island, located
#'  in the Pacific Ocean, 667 km from mainland Chile. Measurements were collected in transects 
#'  of 100 to 240 meters in which, 398 squared plots (2x2 m) were set to include canopy gaps, 
#'  gap borders and closed forest conditions.

#'
#' @usage
#' data(invasivesRCI)
#'
#' @format Data has the following columns
#' \describe{
#'   \item{plot.id}{Plot identification code}
#'   \item{Gap.type}{Canopy gap classified as invaded=Inv, non invaded= Nat or treated =Treat(considering the estimated cover of invasive plant species)}
#'   \item{Forest.zone}{Location of the plot (gap, border or forest)}
#'   \item{Ferns}{Estimated cover of fern species (in 2x2 plots)}
#'   \item{Moss.liverw}{Estimated cover of mosses and liverworts ( in 2x2 plots)}
#'   \item{Cwd}{Estimated cover of coarse woody debris > 3 cm diameter ( in 2x2 plots)}
#'   \item{Litter}{Estimated cover of litter (in 2x2 plots)}
#'   \item{Ms}{Estimated cover of mineral soil ( in 2x2 plots)}
#'   \item{Rock}{Estimated cover of rocks (in 2x2 plots)}
#'   \item{Est.age}{Age category for the canopy gap associated to each plot}
#'     }
#' @source  
#'  The data are provided courtesy of Prof. Rodrigo Vargas-Gaete at Universidad
#'  de La Frontera (Temuco, Chile).
#' @references
#'  Vargas-Gaete R, Salas-Eljatib C, Gärtner SM, Vidal OJ, Bannister JR, Pauchard A. 2018. 
#'  Invasive plant species thresholds in the forests of Robinson Crusoe Island, Chile. 
#'  Plant Ecology & Diversity, 11(2), 205-215.
"invasivesRCI"
#' Contains species composition data of Prumnopitys andina (Lleuque) forests
#'
#' @description
#' Contains species composition data for forests with presence of Lleuque (Prumnopitys andina)
#' 
#' @format The dataframe has the following columns
#' \describe{
#'   \item{stand}{Stand number}
#'   \item{plot.num}{Plot number}
#'   \item{Aus.chi}{Tree density/ha of Austrocedrus chilensis}
#'   \item{May.dis}{Tree density/ha of Maytenus disticha}
#'   \item{Not.obl}{Tree density/ha of Nothofagus obliqua}
#'   \item{Pru.and}{Tree density/ha of Prumnopitys andina}
#'  }
#' @source  
#' The data are provided courtesy of Prof. Rodrigo Vargas-Gaete at Universidad
#'  de La Frontera (Temuco, Chile).
#' @references
#' Vargas-Gaete R, Salas-Eljatib C, Penneckamp D, Neira Z, Diez MC, Vargas-Picón, R. 2020. Estructura 
#' y regeneración de bosques de Prumnopitys andina en los Andes del sur de Chile. Gayana Botánica, 77(1), 48-58.
"lleuque"
#' On the National System of State Protected Wild Areas (SNASPE) of Chile.
#'
#' @description
#' 
#' Dataset contains the protected wild areas of Chile that are part of the National System of State Protected Wild Areas (SNASPE).
#' @usage
#' data(snaspeChile)
#' @format Contains the following variables:
#' \describe{
#' \item{unit.id}{Number for the unit.}
#' \item{unit}{Name of the protected area.}
#' \item{category}{Category of the unit. It can be either a National Park, a National Reserve or a Natural Monument.}
#' \item{commune}{Name of the commune (the smallest Chilean territorial division) where the unit is located.}
#' \item{province}{Province where the comunne is located (one territorial division level above the commune).}
#'  \item{region}{Region where the province is located (one territorial division level above the province and the biggest Chilean territorial division).}
#' \item{perim.km}{Perimeter, in km.}
#' \item{area.ha}{Area, in hectares.}
#' \item{area.m2}{Area, in m\eqn{^{2}}{^2}.}
#'  }
#' @source
#' These data is freely available at
#' \url{https://ide.minagri.gob.cl/geoweb/2019/11/21/medio-ambiente/}
#'   
#' @references
#' The SNASPE has been created and is currently managed by the National Forest Corporation (CONAF).
#' More information and documentation can be found at
#' \url{https://www.conaf.cl} 
#'  
#' @examples
#' data(snaspeChile)    
#' head(snaspeChile) 
"snaspeChile"
#' Sistema nacional de areas protegidas del estado (SNASPE) de Chile
#'
#' @description
#' 
#' Contiene variables general de las unidades del sistema de areas protegidas por el estado de 
#'  Chile (SNASPE).
#' @usage
#' data(snaspeChile2)
#' @format Contiene las siguientes variables para cada unidad del SNASPE:
#' \describe{
#' \item{uni.id}{numero indentificador de la unidad.}
#' \item{unidad}{Nombre de la unidad.}
#' \item{categoria}{Categoria de la unidad. It can be either a National Park, a National Reserve or a Natural Monument.}
#' \item{comuna}{Name of the commune (the smallest Chilean territorial division) where the unit is located.}
#' \item{province}{Province where the comunne is located (one territorial division level above the commune).}
#'  \item{region}{Region where the province is located (one territorial division level above the province and the biggest Chilean territorial division).}
#' \item{perim.km}{Perimeter, in km.}
#' \item{area.ha}{Area, in hectares.}
#' \item{area.m2}{Area, in m\eqn{^{2}}{^2}.}
#'  }
#' @source
#' Estos datos fueron obtenidos desde 
#' \url{https://ide.minagri.gob.cl/geoweb/2019/11/21/medio-ambiente/}
#'   
#' @references
#' EL SNASPE esta bajo la administracion de la Corporacion Nacional Forestal (CONAF) de Chile.
#' Mayor informacion y documentacion se puede encontrar en
#' \url{https://www.conaf.cl} 
#'  
#' @examples
#' data(snaspeChile2)    
#' head(snaspeChile2) 
"snaspeChile2"
#' Tree crown radii
#'
#' @description
#' 
#' Crown radii measurements in cardinal directions for sample trees at the Rucamanque experimental forest, near Temuco, Chile.
#'  Data were collected within a sample plot of 250 m\eqn{^{2}}{^2}, located in a secondary forest stand
#'  dominated by Nothofagus obliqua.
#' @usage
#' data(crown)
#' @format Contains of variables, as follows:
#' \describe{
#' \item{spp}{Species code. 'Ro' is Nothofagus obliqua (roble), 'Co' is Nothofagus dombeyi (Coigue) and 'Ol' is Olivillo.}
#' \item{dbh}{Diameter at breast height, in cm.}
#' \item{htot}{Total height, in m.}
#' \item{crad.n}{Crown radii towards the north, in m.}
#' \item{crad.e}{Crown radii towards the east, in m.}
#'  \item{crad.s}{Crown radii towards the south, in m.}
#' \item{crad.w}{Crown radii towards the west, in m.}
#' \item{x.coord}{Cardinal position at the X-axis, in m.}
#' \item{y.coord}{Cardinal position at the Y-axis, in m.}
#' \item{cr.diam}{Crown diameter, in m.}
#'  }
#' @source 
#' Data were provided by Dr Christian Salas-Eljatib, Universidad de Chile (Santiago, Chile).
#' @references
#' - Salas C. 2001. Caracterización básica del relicto de Biodiversidad 
#' Rucamanque [Basic characterization of the biodiversity remnant Rucamanque]. Bosque Nativo, 29:3-9. \url{https://eljatib.com/publication/2001-06-01_caracterizacion_basi/}
#' 
#' - Salas C, and Garcia O. 2006. Modelling height development of mature Nothofagus obliqua. 
#' Forest Ecology and Management 229 (1-3): 1–6. \doi{10.1016/j.foreco.2006.04.015}
#'  
#' @examples
#' data(crown)    
#' table(crown$spp) 
#' descstat(crown[,c("dbh","cr.diam")])
"crown"
#' Radios de copa de árboles
#'
#' @description
#' 
#' Mediciones de radios de copa en direcciones cardinales para árboles muestra en Rucamanque, cerca de Temuco, Chile.
#'  Los datos fueron colectados al interior de una parcela de muestreo de 250 m\eqn{^{2}}{^2}, establecidad en un bosque
#'  secundario dominado por Nothofagus obliqua.
#' @usage
#' data(crown2)
#' @format Contiene las siguientes columnas:
#' \describe{
#' \item{espe}{Código de especie, donde: 'Ro' es Nothofagus obliqua (Roble), 'Co' es Nothofagus dombeyi (Coigue) y 'Ol' es Olivillo.}
#' \item{dap}{Diámetro a la altura del pecho, en cm.}
#' \item{atot}{Altura total, en m.}
#' \item{rc.n}{Radio de copa hacia el Norte, en m.}
#' \item{rc.e}{Radio de copa hacia el Este, en m.}
#'  \item{rc.s}{Radio de copa hacia el Sur, en m.}
#' \item{rc.w}{Radio de copa hacia el Oeste, en m.}
#' \item{coord.x}{Posición cartesiana en el eje-X, en m.}
#' \item{coord.y}{Posición cartesiana en el eje-Y, en m.}
#' \item{dcopa}{Diámetro de copa, en m.}
#'  }
#' @source 
#' Datos cedidos por el Prof. Christian Salas-Eljatib, Universidad de Chile (Santiago, Chile).
#' @references
#' - Salas C. 2001. Caracterización básica del relicto de Biodiversidad 
#' Rucamanque [Basic characterization of the biodiversity remnant Rucamanque]. Bosque Nativo, 29:3-9. \url{https://eljatib.com/publication/2001-06-01_caracterizacion_basi/}
#' 
#' - Salas C, and Garcia O. 2006. Modelling height development of mature Nothofagus obliqua. 
#' Forest Ecology and Management 229 (1-3): 1–6. \doi{10.1016/j.foreco.2006.04.015}
#'  
#' @examples
#' data(crown2)    
#' table(crown2$espe) 
#' descstat(crown2[,c("dap","dcopa")])
"crown2"
#' Tree height growth of Douglas-fir sample trees in the Northwest of the United States
#' @description
#' Data contains 148 observations on the height growth of dominant trees of Pseudotsguga mensiezzi in the Northwest of the United States.
#' @usage
#' data(hgrowthDfir)
#' @format The data frame contains seven variables as follows:
#' \describe{
#'   \item{natfor.id}{Code identifier.}
#'   \item{plot.code}{Plot number identification}
#'   \item{tree.code}{Tree number identification.}
#'   \item{dbh}{Diameter at breast height at sampling, in in.}
#'   \item{htot}{Total height at sa,pling, in ft}
#'   \item{age}{Age of tree, yr}
#'   \item{height}{Height at a given age, in ft}
#'  }
#' @source 
#' The data were provided by Dr Christian Salas.  
#' @references
#' Monserud RA. Height growth and site index curves for Inland Douglas-
#' fir based on stem analysis data and forest habitat type. Forest Sci.,
#' 30(4):943-965, 1984.
#' @references 
#' Salas C, Stage AR, and Robinson AP. Modeling effects of
#' overstory density and competing vegetation on tree height growth. Forest
#' Sci., 54(1):107-122, 2008.
#' @examples
#' data(hgrowthDfir)    
#' head(hgrowthDfir)
"hgrowthDfir"
#' Crecimiento en altura de una muestra de árboles en los Estados Unidos
#' @description
#' Data contiene 148 obserrvaciones sobre el crecimiento en altura de árboles dominantes de Pseudotsguga mensiezzi en el Nor-Oeste de los Estados Unidos
#' @usage
#' data(hgrowthDfir2)
#' @format La data frame contiene siete variables:
#' \describe{
#'   \item{bosque.id}{Codigo identificador del bosque.}
#'   \item{parcela}{Codigo identificador de la parcela.}
#'   \item{arbol}{Numero de identificacion arbol.}
#'   \item{dap}{Diámetro a la altura del pecho, en  pulgadas.}
#'   \item{htot}{Altura total, en pies}
#'   \item{edad}{Edad, en os}
#'   \item{altura}{Altura para cada edad del arbol, en pies}
#'  }
#' @source 
#' La data fue cedida por el Dr Christian Salas-Eljatib.  
#' @references
#' Monserud RA. Height growth and site index curves for Inland Douglas-
#' fir based on stem analysis data and forest habitat type. Forest Sci.,
#' 30(4):943-965, 1984.
#' @references 
#' Salas C, Stage AR, and Robinson AP. Modeling effects of
#' overstory density and competing vegetation on tree height growth. Forest
#' Sci., 54(1):107-122, 2008.
#' @examples
#' data(hgrowthDfir2)    
#' head(hgrowthDfir2)
"hgrowthDfir2"
#' Edad y caracteristicas biometricas de osos salvajes. 
#'
#' @description
#' Los osos salvajes fueron anestesiados y sus cuerpos fueron medidos y pesados. Uno de los objetivos del estudio fue hacer una
#' tabla (o quizas un conjunto de tablas) para las personas interesadas en estimar el peso de un oso bas?ndose en otras medidas. 
#' Esto se usaraa porque en el bosque es mas facil medir la longitud de un oso, por ejemplo, que pesarlo.
#' Observe que faltan valores para algunas de las variables.
#' @usage
#' data(bears2)
#' @format Contiene variables de nivel individual, como se describen a continuacion:
#' \describe{
#'   \item{id}{Identificador de oso}
#' \item{age}{edad en meses}
#' \item{month}{Diámetro a la altura del pecho, en cm}
#' \item{sex}{1 = hombre, 2 = mujer}
#' \item{headL}{longitud de la cabeza, en cm}
#' \item{headW}{ancho de la cabeza, en cm}
#' \item{neckG}{circunferencia del cuello, en cm}
#' \item{length}{longitud del cuerpo, en cm}
#' \item{chestG}{circunferencia del pecho, en cm}
#' \item{weight}{peso corporal, en kg}
#' \item{obs}{numero de observacion para el oso}
#' \item{name}{nombre dado al oso}
#'  }
#' @source 
#' Minitab, Inc. The data description is courtesy of Prof. Timothy Gregoire at
#'  Yale University (USA).
#' @references
#' According to Prof. Gregoire, This data set was supplied by Gary Alt. Entertaining 
#'  references are in Reader's Digest April, 1979, and Sports Afield September, 1981.
#' @examples
#' data(bears2)    
#' head(bears2) 
'bears2'
#' Anaerobic potential of soccer players. 
#'
#' @description
#' Data about anaerobic variables of football players.
#' @usage
#' data(football)
#' @format The data frame contains 13 variables as follows:
#' \describe{
#'   \item{WPM}{}											
#' \item{WPMk}{}
#' \item{WPm}{}
#' \item{WPmk}{}
#' \item{WTT}{}
#' \item{WTTk}{}
#' \item{WIF}{}
#' \item{W5}{}
#' \item{W10}{}
#' \item{W15}{}
#' \item{W20}{}
#' \item{W25}{}
#' \item{W30}{}
#'  }
#' @source 
#' Data were provided by Dr Aquiles Yanez-Silva at Universidad Mayor (Santiago, Chile).
#' @references
#' Not yet.
#' @examples
#' data(football)    
#' head(football) 
'football'
#' Potencia anaerobica de jugadores de football. 
#'
#' @description
#' Datos sobre potencia anaerobica de jugadores de football.
#' @usage
#' data(football2)
#' @format Contiene variables de nivel individual, como se describen a continuacion::
#' \describe{
#' \item{WPM}{}											
#' \item{WPMk}{}
#' \item{WPm}{}
#' \item{WPmk}{}
#' \item{WTT}{}
#' \item{WTTk}{}
#' \item{WIF}{}
#' \item{W5}{}
#' \item{W10}{}
#' \item{W15}{}
#' \item{W20}{}
#' \item{W25}{}
#' \item{W30}{}
#'  }
#' @source 
#' Los datos fueron cedidos por el Dr Aquiles Yanez-Silva de la Universidad Mayor (Santiago, Chile).
#' @references
#' Not yet.
#' @examples
#' data(football2)    
#' head(football2) 
'football2'  
#' Height growth of Nothofagus alpina trees in Chile. 
#'
#' @description
#' Time series data of height for Nothofagus alpina (rauli) trees in south-central Chile. These sampled trees are part of the ones
#'  used in the following article:
#'  * Salas-Eljatib C. 2021. An approach to quantify climate-productivity relationships: an example from a widespread Nothofagus forest. Ecological Applications 31(4): e02285.
#' @usage
#' data(raulihg)
#' @format The data frame contains four variables as follows:
#' \describe{
#' \item{tree.code}{tree id code}											
#' \item{spp}{species common name}
#' \item{bha.t}{breast-height age, in yrs.}
#' \item{h.t}{total height, in m.}
#'  }
#' @source 
#' Data were provided by Dr Christian Salas-Eljatib (Santiago, Chile).
#' @references
#' Salas-Eljatib C. 2021. An approach to quantify climate-productivity relationships: an
#'  example from a widespread Nothofagus forest. Ecological Applications 31(4): e02285.
#' Salas-Eljatib, C. 2021. Time series height-data for Nothofagus alpina trees. \doi{10.6084/m9.figshare.13521602.v5} 
#' @examples
#' data(raulihg)    
#' head(raulihg) 
'raulihg'
#' Crecimiento en altura de árboles de Nothofagus alpina. 
#'
#' @description
#' Datos de series de tiempo de altura para árboles muestreados de Nothofagus alpina (rauli) en el centro-sur de Chile. Estos árboles son parte
#' de los usados en el siguiente articulo:
#'  * Salas-Eljatib C. 2021. An approach to quantify climate-productivity relationships: an example from a widespread Nothofagus forest. Ecological Applications 31(4): e02285.
#' @usage
#' data(raulihg2)
#' @format Contiene variables de nivel individual, como se describen a continuacion::
#' \describe{
#' \item{tree.code}{Codigo del arbol}											
#' \item{spp}{Nombre comun especie}
#' \item{bha.t}{Edad a la altura del pecho, en años.}
#' \item{h.t}{Altura total, en m.}
#'  }
#' @source 
#' Datos cedidos por el Dr Christian Salas-Eljatib (Universidad de Chile, Santiago, Chile).
#' @references
#' Salas-Eljatib C. 2021. An approach to quantify climate-productivity relationships: an
#'  example from a widespread Nothofagus forest. Ecological Applications 31(4): e02285.
#' Salas-Eljatib, C. 2021. Time series height-data for Nothofagus alpina trees. \doi{10.6084/m9.figshare.13521602.v5} 
#' @examples
#' data(raulihg2)    
#' head(raulihg2) 
'raulihg2'
#' Land-cover, environmental and sociodemographic data for the 34 municipalities composing the Greater Santiago area, Santiago, Chile.
#'
#' @description
#' dataset contains 476 observations, 34 categorical and 442 numerical. Land-cover data was generated through remote 
#' sensing classification techniques using Sentinel-2 satellite images from year 2016. Temperatures were obtained from 
#' TIRS band 10 of Landsat 8 satellites images. Particulate matter concentrations were estimated using spatial modelling
#' techniques from 10 pollution stations distributed in the city. Altitude was generated from a Digital Elevation Model. 
#' Population and poverty were gathered from Casen 2017 survey.
#' @usage
#' data(landCoverSantiago)
#' @format The data frame contains four variables as follows:
#' \describe{
#' \item{Comuna}{Name of Municipality}											
#' \item{p.Construido}{Percentage of surface covered by built-up area}
#' \item{p.Vegetacion}{Percentage of surface covered by vegetation}
#' \item{p.Desnudo}{Percentage of surface covered by bare soil}
#' \item{p.Pasto}{Percentage of surface covered by deciduous vegetation}
#' \item{p.Deciduo}{Percentage of surface covered by evergreen vegetation}
#' \item{p.Siempreverde}{Percentage of surface covered by evergreen vegetation}
#' \item{Temp Invierno}{Land surface temperature in celsius degrees at 2pm on a winter 0\% cloud day}
#' \item{Temp Verano}{Land surface temperature in celsius degrees at 2pm on a summer 0\% cloud day}
#' \item{PM10 Invierno}{Average particulate matter 10 micron during winter months}
#' \item{PM10 Verano}{Average particulate matter 10 micron during summer months}
#' \item{p.pobreza 2017}{Percentage of people under poverty line year 2017}
#' \item{Altitud promedio}{Average altitude of municipal area}
#' \item{Poblacion}{Total population of municipality}
#'  }
#' @source 
#' Data were provided by Dr Ignacio Fernandez at Universidad Adolfo Ibanez (Santiago, Chile).
#' @references
#' Not yet
#' @examples
#' data(landCoverSantiago)    
#' head(landCoverSantiago) 
'landCoverSantiago'
#' Cobertura territorial, ambiental y sociodemografica de los 34 municipios que componen el area del Gran Santiago, Santiago, Chile.. 
#'
#' @description
#' El conjunto de datos contiene 476 observaciones, 34 categoricas y 442 numericas. Los datos de cobertura 
#' terrestre se generaron mediante tecnicas de clasificacion de teledeteccion utilizando imagenes de satelite 
#' Sentinel-2 del año 2016. Las temperaturas se obtuvieron de la banda TIRS 10 de las imagenes de los satelites 
#' Landsat 8. Las concentraciones de material particulado se estimaron mediante tecnicas de modelado espacial 
#' de 10 estaciones de contaminacion distribuidas en la ciudad. La altitud se genero a partir de un modelo de 
#' elevacion digital. La poblacion y la pobreza se obtuvieron de la encuesta Casen 2017.
#' @usage
#' data(landCoverSantiago2)
#' @format Variables se describen a continuacion:
#' \describe{
#' \item{Comuna}{Name of Municipality}											
#' \item{p.Construido}{Porcentaje de superficie cubierta por area construida}
#' \item{p.Vegetacion}{Porcentaje de superficie cubierta por vegetacion}
#' \item{p.Desnudo}{Porcentaje de superficie cubierta por suelo desnudo}
#' \item{p.Pasto}{Porcentaje de superficie cubierta por cesped}
#' \item{p.Deciduo}{Porcentaje de superficie cubierta por vegetacion de hoja caduca}
#' \item{p.Siempreverde}{Porcentaje de superficie cubierta por vegetacion siempre verde}
#' \item{Temp Invierno}{Temperatura de la superficie terrestre en grados celsius a las 2 p.m.en un dia de invierno con 0\% de nubes}
#' \item{Temp Verano}{Temperatura de la superficie de la tierra en grados celsius a las 2 p.m.en un dia de verano con 0\% de nubes}
#' \item{PM10 Invierno}{Material particulado promedio de 10 micrones durante los meses de invierno}
#' \item{PM10 Verano}{Material particulado promedio de 10 micrones durante los meses de verano}
#' \item{p.pobreza 2017}{Porcentaje de personas por debajo de la linea de pobreza año 2017}
#' \item{Altitud promedio}{Altitud media del termino municipal}
#' \item{Poblacion}{poblacion total del municipio}
#'  }
#' @source 
#' Los datos fueron cedidos por el Dr Ignacio Fernandez de la Universidad Adolfo Ibanez (Santiago, Chile).
#' @references
#' Not yet
#' @examples
#' data(landCoverSantiago2)    
#' head(landCoverSantiago2) 
'landCoverSantiago2'
#' Plot-level data with variables from Andean Prumnopitys forests
#'
#' @description
#' Data on density, basal area, mean square diameter and other variables of 24 plots for Lleuque is provided.
#' @usage
#' data(standLleuque)
#' @format The data frame contains seven variables as follows:
#' \describe{
#' \item{rodal}{number of stand}											
#' \item{plot.id}{code of plot}
#' \item{nha}{Density of plot}
#' \item{gha}{Basal area of plot}
#' \item{qmd}{Quadratic mean diameter of plot}
#' \item{toph}{Dominant height of plot}
#' \item{structure}{Forest structure level: open, secondary adult, pure}
#'  }
#' @source 
#' The data are provided courtesy of Prof. Rodrigo Vargas-Gaete at Universidad
#'  de La Frontera (Temuco, Chile).
#' @references
#' Vargas-Gaete R, Salas-Eljatib C, Penneckamp D, Neira Z, Diez MC, Vargas-Picón, R. 2020. Estructura 
#' y regeneración de bosques de Prumnopitys andina en los Andes del sur de Chile. Gayana Botánica, 77(1), 48-58.
#' @examples
#' data(standLleuque)    
#' head(standLleuque) 
'standLleuque'
#'  Datos con variables a nivel de parcela de bosques de Prumnopitys andina
#'
#' @description
#' Se proporciona informacion de densidad, area basal, diámetro medio cuadratico  y otras variables de 24 parcelas para Lleuque.
#' @usage
#' data(standLleuque2)
#' @format Variables se describen a continuacion::
#' \describe{
#' \item{rodal}{Numero de rodal}											
#' \item{plot.id}{Codigo de parcela}
#' \item{nha}{Densidad de parcela}
#' \item{gha}{Area basal de parcela}
#' \item{qmd}{Diámetro medio cuadratico}
#' \item{toph}{Altura dominante}
#' \item{estructura}{Estructura del bosque. Abiero, secundario adulto o puro}
#'  }
#' @source 
#' The data are provided courtesy of Prof. Rodrigo Vargas-Gaete at Universidad
#'  de La Frontera (Temuco, Chile).
#' @references
#' Vargas-Gaete R, Salas-Eljatib C, Penneckamp D, Neira Z, Diez MC, Vargas-Picón, R. 2020. Estructura 
#' y regeneración de bosques de Prumnopitys andina en los Andes del sur de Chile. Gayana Botánica, 77(1), 48-58.
#' @examples
#' data(standLleuque2)    
#' head(standLleuque2) 
'standLleuque2'
#' This dataset has 43 columns and 4247 rows. Each row corresponds to an epiphyte individual located on the 
#' reliable sections of the host trees
#'
#' @description
#' This study is part of the project "Diversity and dynamics of vascular epiphytes in Colombian Andes" 
#' supported by COLCIENCIAS (contract 2115-2013). The data corresponds to the first large-scale 
#' assessment of vascular epiphyte mortality in the neotropics. Based on two consecutive annual surveys,
#' we followed the fate of 4247 epiphytes to estimate the epiphyte mortality rate on 116 host trees
#' at nine sites. Additional variables were taken from the area of study in order to find relationships
#' with epiphyte mortality.
#' @usage
#' data(deadLianas)
#' @format The data frame contains four variables as follows:
#' \describe{
#' \item{PlotSite}{Municipality name of the 9 study sites}					
#' \item{Y.Plot}{Latitude of the plot in decimal degrees}
#' \item{X.Plot}{Longitude of the plot in decimal degrees}
#' \item{PhoroNo}{ID number of the sampled host trees in each site}
#' \item{EpiFam}{Epiphyte taxonomic family}
#' \item{EpiGen}{Epiphyte taxonomic genus}
#' \item{cf.aff}{Abbreviations of Latin terms in the context of taxonomy. cf. "confer" meaning "compare with". aff.: "affinis" meaning "similar to".}
#' \item{Species}{Epiphyte (morpho) species name}
#' \item{Author}{Author of the scientific name}
#' \item{EpiAzi}{Azimuth of the epiphyte individual on each host tree}
#' \item{BraAzi}{Azimuth of the branch in which the epiphyte individual was found}
#' \item{EpiDisTru}{Distance in meters from the trunk to the epiphyte attachment site on a branch}
#' \item{EpiSize}{Estimated size of the epiphyte individual in centimetres}
#' \item{EpiAttHei}{Epiphyte attachment height in meters}
#' \item{Date0}{Date of the first census}
#' \item{Date1}{Date of the final census}
#' \item{Location}{Section (roots, trunks, branches) of the host tree in which theepiphyte individual was found}
#' \item{Mortality}{Dichotomous variable. 0 if the epiphyte individual was dead in the final census and 1 if otherwise}
#' \item{MorCat}{Mechanical or non-mechanical cause of mortality}
#' \item{Elevation}{Elevation (m a.s.l.) of the plot}
#' \item{AP_bio12}{Annual precipitation in the plot (mm yr-1)}
#' \item{PDM_bio14}{Precipitation of driest month in the plot (mm)}
#' \item{PS_bio15}{Precipitation seasonality in the plot (coefficient of variation)}
#' \item{MDT_bio2}{Mean Diurnal Range (Mean of monthly (max temp - min temp)) in the plot (oC*10)}
#' \item{TS_bio4}{Temperature seasonality in the plot (standard deviation*100)}
#' \item{ATR_bio7}{Annual temperature range in the plot (10 celsius degrees)}
#' \item{AET}{Actual evapotranspiration in the plot (mm yr-1)}
#' \item{BasAre}{Basal area of trees with DBH major or equal to 5 cm (AB) in the plot (m\eqn{^{2}}{^2}/ha)}
#' \item{BasAre5_10}{Basal area of trees with greater or equal than 5  DBH and  less than 10 cm in the plot (m\eqn{^{2}}{^2}/ha)}
#' \item{BasAre10}{Basal area of trees with greater or equal than 10 cm DBH in the plot (m\eqn{^{2}}{^2}/ha)}
#' \item{Ind10}{Number of canopy trees (with greater or equal than 10 cm DBH ) in the plot}
#' \item{Ind5}{Number of understory trees (with greater or equal than 5  DBH and  less than 10 cm) in the plot}
#' \item{Ind5_10}{Number of trees with greater or equal than 5  DBH and  less than 10 cm in the plot}
#' \item{Ind10_15}{Number of trees with greater or equal than 10  DBH and  less than 15 cm in the plot}
#' \item{Ind15_20}{Number of trees with greater or equal than 15  DBH and  less than 20 cm in the plot}
#' \item{Ind20_25}{Number of trees with greater or equal than 20  DBH and  less than 25 cm in the plot}
#' \item{Ind25_30}{Number of trees with greater or equal than 25  DBH and  less than 30 cm in the plot}
#' \item{Ind30}{Number of trees with DBH major or equal to 30 cm in the plot}
#' \item{TreeHei}{Total tree height in meters}
#' \item{MedHei}{Median height of trees in each plot}
#' \item{MaxHei}{Maximum height of trees in each plot}
#' \item{BranchNumb}{Number of branches of the host tree}
#' \item{Obs}{Observations and notes in Spanish}
#'  }
#' @source 
#' Data were extracted from Zuleta, D., Benavides, A.M., Lopez-Ros, V. & Duque, A. 2016. Local and regional determinants
#' of vascular epiphyte mortality in the Andean mountains of Colombia .
#' @references
#' Zuleta, D., Benavides, A.M., Lopez-Rios, V. & Duque, A. 2016. Local and regional determinants
#' of vascular epiphyte mortality in the Andean mountains of Colombia.
#' @examples
#' data(deadLianas)    
#' head(deadLianas) 
'deadLianas'
#' Este conjunto de datos tiene 43 columnas y 4247 filas. Cada fila corresponde a un individuo epifito ubicado en el
#' secciones confiables de los árboles hospedantes  
#'
#' @description
#' Este estudio es parte del proyecto "Diversidad y din?mica de ep?fitas vasculares en los Andes colombianos".
#' apoyado por COLCIENCIAS (contrato 2115-2013). Los datos corresponden a la primera gran escala
#' evaluaci?n de la mortalidad de ep?fitas vasculares en los neotr?picos. Basado en dos encuestas anuales consecutivas,
#' Seguimos el destino de 4247 ep?fitas para estimar la tasa de mortalidad de ep?fitas en 116 ?rboles hospedantes.
#' en nueve sitios. Se tomaron variables adicionales del area de estudio para encontrar relaciones
#' con mortalidad de epifitas.
#' @usage
#' data(deadLianas2)
#' @format Variables se describen a continuacion::
#' \describe{
#' \item{PlotSite}{Nombre del municipio de los 9 sitios de estudio}					
#' \item{Y.Plot}{Latitud del grafico en grados decimales}
#' \item{X.Plot}{Longitud de la grafica en grados decimales}
#' \item{PhoroNo}{numero de identificacion de los árboles hospedantes muestreados en cada sitio}
#' \item{EpiFam}{Familia taxonomica de epifitas}
#' \item{EpiGen}{Genero taxonomico de epifitas}
#' \item{cf.aff}{Abreviaturas de terminos latinos en el contexto de la taxonomia. cf. "conferir" que significa "comparar con". aff .: "affinis" que significa "similar a"}
#' \item{Species}{Nombre de la especie epifita (morfo)}
#' \item{Author}{Autor del nombre cientifico}
#' \item{EpiAzi}{Azimut del individuo epifito en cada arbol huesped}
#' \item{BraAzi}{Azimut de la rama en la que se encontro el individuo epifito}
#' \item{EpiDisTru}{Distancia en metros desde el tronco hasta el sitio de union de la epifita en una rama}
#' \item{EpiSize}{Tamaño estimado del individuo epifito en centimetros}
#' \item{EpiAttHei}{Altura del accesorio de la epifita en metros}
#' \item{Date0}{Fecha del primer censo}
#' \item{Date1}{Fecha del censo final}
#' \item{Location}{Seccion (raices, troncos, ramas) del arbol anfitrion en el que se encontro el individuo epifito}
#' \item{Mortality}{Variable dicotomica. 0 si el individuo epifito estaba muerto en el censo final y 1 si no}
#' \item{MorCat}{Causa de mortalidad mecanica o no mecanica}
#' \item{Elevation}{Elevacion (msnm) de la parcela}
#' \item{AP_bio12}{Precipitacion anual en la parcela (mm año-1)}
#' \item{PDM_bio14}{Precipitacion del mes mas seco en la parcela (mm)}
#' \item{PS_bio15}{Estacionalidad de la precipitacion en la parcela (coeficiente de variacion)}
#' \item{MDT_bio2}{Rango diurno medio (Media mensual (temperatura maxima - temperatura minima)) en la grafica (10 grados celsius)}
#' \item{TS_bio4}{Estacionalidad de la temperatura en la grafica (desviacion estandar * 100)}
#' \item{ATR_bio7}{Rango de temperatura anual en la parcela (10 grados centigrados)}
#' \item{AET}{Evapotranspiracion real en la parcela (mm año-1)}
#' \item{BasAre}{Area basal de árboles con DAP mayor o igual a 5 cm (AB) en la parcela (m\eqn{^{2}}{^2}/ha)}
#' \item{BasAre5_10}{Area basal de árboles con DAP mayor o igual a 5 y menor a 10 cm en la parcela (m\eqn{^{2}}{^2}/ha)}
#' \item{BasAre10}{Area basal de árboles con DAP mayor o igual a 10 cm en la parcela (m\eqn{^{2}}{^2}/ha)}
#' \item{Ind10}{Numero de árboles del dosel (con un DAP superior o igual a 10 cm) en la parcela}
#' \item{Ind5}{Numero de árboles de sotobosque (con DAP mayor o igual a 5 y menor a 10 cm) en la parcela}
#' \item{Ind5_10}{Numero de árboles con un DAP mayor o igual a 5 y menos de 10 cm en la parcela}
#' \item{Ind10_15}{Numero de árboles con un DAP mayor o igual a 10 y menos de 15 cm en la parcela}
#' \item{Ind15_20}{Numero de árboles con un DAP mayor o igual a 15 y menos de 20 cm en la parcela}
#' \item{Ind20_25}{Numero de árboles con un DAP mayor o igual a 20 y menos de 25 cm en la parcela}
#' \item{Ind25_30}{Numero de árboles con un DAP mayor o igual a 25 y menos de 30 cm en la parcela}
#' \item{Ind30}{Numero de árboles con DAP mayor o igual a 30 cm en la parcela}
#' \item{TreeHei}{Altura total del arbol en metros}
#' \item{MedHei}{Altura media de los árboles en cada parcela}
#' \item{MaxHei}{Altura maxima de los árboles en cada parcela}
#' \item{BranchNumb}{Numero de ramas del arbol anfitrion}
#' \item{Obs}{Observaciones y notas en español}
#'  }
#' @source 
#' Data fue extraida desde Zuleta, D., Benavides, A.M., Lopez-Ros, V. & Duque, A. 2016. Local and regional determinants
#' of vascular epiphyte mortality in the Andean mountains of Colombia .
#' @references
#' Zuleta, D., Benavides, A.M., Lopez-Rios, V. & Duque, A. 2016. Local and regional determinants
#' of vascular epiphyte mortality in the Andean mountains of Colombia.
#' @examples
#' data(deadLianas2)    
#' head(deadLianas2) 
'deadLianas2'
#' Data contains  climatic, forest structure and forest mortality variable
#'
#' @description
#' The data file contains one row per unique 3.5km grid cell by year combination. The data frame covers 
#' all grid cells within the state of California where at least one Aerial Detection Survey (ADS) flight 
#' was taken between 2009 and 2015, so each grid cell position has between 1 and 7 years of data 
#' (reflected as 1 to 7 rows in the data file per grid cell position). The main response variables 
#' are mort.bin (presence of any mortality) and mort.tph (number of dead trees/ha within the given 
#' grid cell by year).
#' @usage
#' data(deadForestCA)
#' @format The data frame contains four variables as follows:
#' \describe{
#' \item{live.bah}{Live basal area from the GNN dataset}											
#' \item{live.tph}{Live trees per hectare from the GNN dataset}
#' \item{pos.x}{rank-order x-position of the grid cell (position 1 is western-most)}
#' \item{pos.y}{rank-order y-position of the grid cell (position 1 is northern-most)}
#' \item{alb.x}{x-coordinate of the grid cell centroid in California Albers (EPSG 3310)}
#' \item{alb.y}{y-coordinate of the grid cell centroid in California Albers (EPSG 3310)}
#' \item{mort.bin}{1= dead trees observed in grid cell. 0= no dead trees observed}
#' \item{mort.tph}{Dead trees per hectare from the aggregated ADS dataset}
#' \item{mort.tpa}{Dead trees per acre from the aggregated ADS dataset}
#' \item{year}{Year of the ADS flight. Most flights occurred from May-August.}
#' \item{Defnorm}{Mean annual climatic water deficit for the grid cell, for Oct 1-Sept 31 water year, averaged from 1981-2015}
#' \item{Def0}{Climatic water deficit for the grid cell during the Oct-Sept water year overlapping the summer ADS flight of the given year}
#' \item{Defz0}{Z-score for climatic water deficit for the given grid cell/water year. Calculated as (Def0-Defnorm)/(standard deviation in deficit among all years 1981-2015 for the given grid cell)}
#' \item{Defz1}{Z-score for climatic water deficit for the given grid cell in the preceeding water year.}
#' \item{Defz2}{Z-score for climatic water deficit for the given grid cell two water years prior.}
#' \item{Tz0}{Z-score for temperature for the given grid cell/year.}
#' \item{Pz0}{Z-score for precipitation for the given grid cell/year.}
#' \item{Defquant}{FDCI variable. Quantile of Defnorm of the given grid cell, relative to the Defnorm of all other grid cells with a basal area within 2.5 m\eqn{^{2}}{^2}/ha of the given cell is basal area.}
#'  }
#' @source 
#' The data were provided from DRYAD repository.
#' @references
#' -Derek J. N. Young, Jens T. Stevens, J. Mason Earles, Jeffrey Moore, Adam Ellis, Amy L. Jirka, and Andrew M. Latimer.
#'  Long-term climate and competition explain forest mortality patterns under extreme drought.Ecology Letters, 20(1):78-86, 2017.
#' @references
#' -C. Salas-Eljatib, Andres Fuentes-Ramirez, Timothy G. Gregoire, Adison Altamirano, and Valeska Yaitul. A study on the effects of unbalanced data when
#'  fitting logistic regression models in ecology. Ecological Indicators, 85:502-508, 2018
#' @examples
#' data(deadForestCA)    
#' head(deadForestCA) 
'deadForestCA'
#' Los datos contienen variables climaticas, de estructura forestal y de mortalidad forestal.  
#'
#' @description
#' El archivo de datos contiene una fila por combinacion unica de celda de cuadricula de 3,5 km por año. 
#' El marco de datos cubre todas las celdas de la cuadricula dentro del estado de California donde se 
#' tomo al menos un vuelo de la Encuesta de deteccion aerea (ADS) entre 2009 y 2015, por lo que cada posicion
#' de celda de la cuadricula tiene entre 1 y 7 años de datos (reflejados como 1 a 7 filas en el archivo de datos
#' por posicion de celda de cuadricula). Las principales variables de respuesta son mort.bin (presencia de alguna mortalidad)
#'  y mort.tph (numero de árboles muertos /ha dentro de la celda de la cuadricula por año).
#' @usage
#' data(deadForestCA2)
#' @format Variables se describen a continuacion::
#' \describe{
#' \item{live.bah}{Area basal viva del conjunto de datos GNN}											
#' \item{live.tph}{Arboles vivos por hectarea del conjunto de datos GNN}
#' \item{pos.x}{posicion x del orden de clasificacion de la celda de la cuadricula (la posicion 1 es la mas occidental)}
#' \item{pos.y}{posicion y del orden de clasificacion de la celda de la cuadricula (la posicion 1 es la mas al norte)}
#' \item{alb.x}{coordenada x del centroide de la celda de la cuadricula en California Albers (EPSG 3310)}
#' \item{alb.y}{coordenada y del centroide de la celda de la cuadricula en California Albers (EPSG 3310)}
#' \item{mort.bin}{1 = árboles muertos observados en la celda de la cuadricula. 0 = no se observaron árboles muertos}
#' \item{mort.tph}{Arboles muertos por hectarea del conjunto de datos ADS agregado}
#' \item{mort.tpa}{Arboles muertos por acre del conjunto de datos ADS agregado}
#' \item{year}{año del vuelo de ADS. La mayoria de los vuelos se realizaron entre mayo y agosto}
#' \item{Defnorm}{Deficit hidrico climatico anual medio para la celda de la cuadricula, para el año hidrico del 1 de octubre al 31 de septiembre, promediado de 1981 a 2015}
#' \item{Def0}{Deficit de agua climatica para la celda de la cuadricula durante el año hidrologico de octubre a septiembre que se superpone al vuelo ADS de verano del año dado}
#' \item{Defz0}{Puntaje Z para el deficit hidrico climatico para la celda de cuadricula / año hidrico dado. Calculado como (Def0-Defnorm) / (desviacion estandar en el deficit entre todos los años 1981-2015 para la celda de la cuadricula dada}
#' \item{Defz1}{Puntuacion Z para el deficit h?drico climatico para la celda de la cuadricula dada en el año hidrologico anterior.}
#' \item{Defz2}{Puntuacion Z para el deficit hidrico climatico para la celda de la cuadricula dada dos años antes.}
#' \item{Tz0}{Puntaje Z para la temperatura para la celda de cuadricula / año dado.}
#' \item{Pz0}{Puntaje Z para la precipitacion para la celda / año de la cuadricula dado.}
#' \item{Defquant}{Variable FDCI. Cuantil de Defnorm de la celda de la cuadricula dada, en relacion con la Defnorm de todas las demas celdas de la cuadricula con un area basal dentro de 2.5 m\eqn{^{2}}{^2}/ha de la celda dada}
#'  }
#' @source 
#' The data were provided from DRYAD repository.
#' @references
#' -Derek J. N. Young, Jens T. Stevens, J. Mason Earles, Jeffrey Moore, Adam Ellis, Amy L. Jirka, and Andrew M. Latimer.
#'  Long-term climate and competition explain forest mortality patterns under extreme drought.Ecology Letters, 20(1):78-86, 2017.
#' @references
#' -Salas-Eljatib C, Fuentes-Ramirez A., Gregoire TG, Altamirano A., and Yaitul V. A study on the effects of unbalanced data when
#'  fitting logistic regression models in ecology. Ecological Indicators, 85:502-508, 2018.
#' @examples
#' data(deadForestCA2)    
#' head(deadForestCA2) 
'deadForestCA2'
#' Data of forest fire occurrence
#'
#' @description
#' Data of forest fire occurrence from Altamirano et al. (2013) as our population, containing 7210 total observations (N), with only 
#' 890 cases of fire occurrence (N 1 ) and 6320 cases of non occurrence (N 0 ). The binary variable (Y) is the occurrence of forest 
#' fire, where Y equal to 1 denotes occurrence and Y equal to 0  otherwise.
#' @usage
#' data(forestFire)
#' @format The data frame contains four variables as follows:
#' \describe{
#' \item{fire}{Presence of forest fire (1 yes, 0 no)}											
#' \item{xcoord}{Geographic coordinate x.utm}
#' \item{ycoord}{Geographic coordinate y.utm}
#' \item{aspect}{Exposure (degrees from north)}
#' \item{eleva}{Elevation (m)}
#' \item{slope}{Slope (degrees)}
#' \item{distr}{Distance to dirt roads}
#' \item{distcity}{Distance to cities}
#' \item{distriver}{Distance to paved roads}
#' \item{covera}{Land use classifications according to a polygon}
#' \item{coverb}{Land use classifications according to a polygon}
#' \item{tempe}{Minimum temperature of the coldest month}
#' \item{ppan}{Annual precipitation}
#' \item{ndii}{Normalized difference infrared index}
#' \item{nvdi}{Normalized difference vegetation index}
#' \item{tempe2}{Minimum temperature of the warmest month}
#' \item{ppan2}{Precipitation of the driest month}
#' \item{frec.fire}{Frequency of fires}
#' \item{perc.fire}{Percentage of fire frequency}
#' \item{fireClass}{Class for frecuency fire}
#' \item{asp.class}{Class of variable exposure}
#' \item{eleva.class}{Class of numerical variable elevation}
#' \item{slope.class}{Class of numerical variable slope}
#' \item{ndii.class}{Normalized difference infrared index class}
#' \item{nvdi.class}{Normalized difference vegetation index class}
#'  }
#' @source 
#' Data were provided by Dr Adison Altamirano at the Universidad de La Frontera (Temuco, Chile).
#' @references
#' Altamirano A, Salas C, Yaitul V, Smith-Ramirez C, Avila A. Infuencia de la heterogeneidad 
#' del paisaje en la ocurrencia de incendios forestales en Chile Central. Revista de Geografia del Norte Grande, 55:157-170, 2013.
#' @examples
#' data(forestFire)    
#' head(forestFire) 
'forestFire'
#' Datos de ocurrencia de incendios forestales  
#'
#' @description
#' Datos de ocurrencia de incendios forestales de Altamirano et al. (2013) como nuestra poblacion, que contiene 7210 observaciones
#' totales (N), con solo 890 casos de ocurrencia de incendios (N1) y 6320 casos de no ocurrencia (N0). La variable binaria (Y)
#' es la ocurrencia de un incendio forestal, donde Y igual a 1 denota ocurrencia e igual a 0 en caso contrario.
#' @usage
#' data(forestFire2)
#' @format Variables se describen a continuacion:
#' \describe{
#' \item{fire}{Presencia de incendio forestal (1 si, 0 no)}											
#' \item{xcoord}{Coordenada geografica x.utm}
#' \item{ycoord}{Coordenada geografica y.utm}
#' \item{aspect}{Exposicion (grados desde el norte)}
#' \item{eleva}{Elevacion (m)}
#' \item{slope}{Pendiente (grados)}
#' \item{distr}{Distancia a caminos de tierra}
#' \item{distcity}{Distancia a ciudades}
#' \item{distriver}{Distancia a caminos pavimentados}
#' \item{covera}{Clasificaciones de uso del suelo segun un poligono}
#' \item{coverb}{Clasificaciones de uso del suelo segun un poligono}
#' \item{tempe}{Temperatura m?nima del mes m?s frio}
#' \item{ppan}{Precipitacion anual}
#' \item{ndii}{Indice infrarrojo de diferencia normalizado}
#' \item{nvdi}{Indice de vegetacion de diferencia normalizado}
#' \item{tempe2}{Temperatura m?nima del mes mas calido}
#' \item{ppan2}{Precipitacion del mes mas seco}
#' \item{frec.fire}{Frecuencia de incendios}
#' \item{perc.fire}{Porcentajede la frecuencia de incendios}
#' \item{fireClass}{Clase para variable frecuencia de incendio}
#' \item{asp.class}{Clase de variable exposicion }
#' \item{eleva.class}{Clase de variable numerica elevacion}
#' \item{slope.class}{Clase de variable numerica pendiente}
#' \item{ndii.class}{Clase de indice infrarrojo de diferencia normalizado}
#' \item{nvdi.class}{Clase de indice de vegetacion de diferencia normalizado}
#'  }
#' @source 
#' Datos fueron cedidos por el Dr Christian Salas-Eljatib (Santiago, Chile).
#' @references
#' Altamirano A, Salas C, Yaitul V, Smith-Ramirez C, and Avila A. Infuencia de la heterogeneidad 
#' del paisaje en la ocurrencia de incendios forestales en Chile Central. Revista de Geografia del Norte Grande, 55:157-170, 2013.
#' @examples
#' data(forestFire2)    
#' head(forestFire2) 
'forestFire2'
#' Tree-level measurements and spatial coordinates in rucamanque property 
#'
#' @description
#' Tree level measurements and spatial coordinates in a permanent sample plot of 1 ha (100 x 100m) in the Rucamanque 
#' Experimental Forests, near Temuco, Chile.
#' @usage
#' data(pspRuca)
#' @format The data frame contains four variables as follows:
#' \describe{
#' \item{tree.no}{tree number}											
#' \item{spp}{Species name, "N. obliqua" is Nothofagus obliqua, "Ap" is Aexitocicum puncatatum, etc.}
#' \item{status}{1 alive, 0 standing-dead}
#' \item{dbh}{diameter at breast-height, in cm}
#' \item{x.coord}{Cartesian position at the X-axis, in m}
#' \item{y.coord}{Cartesian position at the Y-axis, in m}
#' \item{crown.class}{Crown class (1: superior, 2: intermediate, 3; inferior)}
#'  }
#' @source 
#' Data were provided by Dr Christian Salas-Eljatib (Universidad de Chile, Santiago, Chile).
#' @references
#' Salas C, LeMay V, Nunez P, Pacheco P, and Espinosa A. 2006. Spatial patterns in an old-growth Nothofagus obliqua forest in 
#' south-central Chile. Forest Ecology and Management 231(1-3): 38-46.
#' @examples
#' data(pspRuca)    
#' head(pspRuca) 
'pspRuca'
#' Medidas a nivel de arbol y coordenadas espaciales en predio rucamanque  
#'
#' @description
#' Medidas a nivel de arbol y coordenadas espaciales en un parcela de muestreo permanente de 1 ha (100 x 100m) en el Rucamanque 
#' Bosques experimentales, cerca de Temuco, Chile.
#' @usage
#' data(pspRuca2)
#' @format Variables se describen a continuacion::
#' \describe{
#' \item{tree.no}{Numero de arbol}											
#' \item{spp}{Nombre de la especie, "N. obliqua" es Nothofagus obliqua, "Ap" es Aexitocicum puncatatum, etc.}
#' \item{status}{1 vivo, 0 muerto en pie}
#' \item{dbh}{Diámetro a la altura del pecho, en cm}
#' \item{x.coord}{Posicion cartesiana en el eje X, en m}
#' \item{y.coord}{Posicion cartesiana en el eje Y, en m}
#' \item{crown.class}{Clase de corona (1: superior, 2: intermedio, 3; inferior)}
#'  }
#' @source 
#' Los datos fueron cedidos por el Dr Christian Salas-Eljatib (Santiago, Chile).
#' @references
#' Salas C, LeMay V, Nunez P, Pacheco P, and Espinosa A. 2006. Spatial patterns in an old-growth Nothofagus obliqua forest in 
#' south-central Chile. Forest Ecology and Management 231(1-3): 38-46.
#' @examples
#' data(pspRuca2)    
#' head(pspRuca2) 
'pspRuca2'																							
#' About the R-Squared statistics: the Anscombe quartet dataset
#'
#' @description
#' A dataset that contains four pairs of columns with the same descriptive
#'  statistics; however, there is a difference when representing the points through a graph.
#' @usage
#' data(aboutrsq)
#' @format The data frame contains four variables as follows:
#' \describe{
#' \item{X1}{Integers values that represent X-axis for Y1, Y2 and Y3 column}											
#' \item{Y1}{Float values that represent Y-axis for X1 column}
#' \item{Y2}{Float values that represent Y-axis for X1 column}
#' \item{Y3}{Float values that represent Y-axis for X1 column}
#' \item{X2}{Integers values that represent X-axis for Y4 column}
#' \item{Y4}{Float values that represent Y-axis for X2 column}
#'  }
#' @source 
#' Data were assembled by Dr Christian Salas-Eljatib (Santiago, Chile).
#' @references
#' Anscombe, Francis J. (1973). Graphs in statistical analysis. The American Statistician, 27, 17-21. \doi{10.2307/2682899}
#' @examples
#' data(aboutrsq)    
#' head(aboutrsq) 
'aboutrsq'
#' Sobre el estadistico R2: los datos del cuarteto de Anscombe  
#'
#' @description
#' Dataset que contiene 4 pares de columnas con la mismos estadisticos descriptivos,
#'  sin embargo si existe diferencia al representar los puntos mediante un grafico. 
#' @usage
#' data(aboutrsq2)
#' @format Variables se describen a continuacion::
#' \describe{
#' \item{X1}{Valores enteros que representan el eje X para las columnas Y1, Y2 e Y3}								
#' \item{Y1}{Valores flotantes que representan el eje Y para la columna X1}
#' \item{Y2}{Valores flotantes que representan el eje Y para la columna X1}
#' \item{Y3}{Valores flotantes que representan el eje Y para la columna X1}
#' \item{X2}{Valores enteros que representan el eje X para las columnas Y4}
#' \item{Y4}{Valores flotantes que representan el eje Y para la columna X2}
#'  }
#' @source 
#' Datos fueron contribuidos por el Prof. Christian Salas-Eljatib (Universidad de Chile, Santiago, Chile).
#' @references
#' Anscombe FJ. 1973. Graphs in statistical analysis. The American Statistician, 27, 17-21. \doi{10.2307/2682899}
#' @examples
#' data(aboutrsq2)    
#' head(aboutrsq2) 
'aboutrsq2'																							
#' Biomass dataset
#'
#' @description
#' Dataset that contains nine pairs of columns with information about biomass of 40 samples.
#' @usage
#' data(slashpine)
#' @format The data frame contains nine variables as follows:
#' \describe{
#' \item{tree_id}{tree code}											
#' \item{dbh}{diameter}
#' \item{h}{heigth}
#' \item{lcl}{live crown lenght}
#' \item{age}{age tree}
#' \item{wood}{wood biomass}
#' \item{bark}{bark biomass}
#' \item{crown}{crown biomass}
#' \item{tree}{tree biomass}
#'  }
#' @source 
#' Data were provided by Dr Christian Salas-Eljatib (Universidad de Chile, Santiago, Chile).
#' @references
#' Parresol BR. 2001. Additivity of nonlinear biomass equations. Canadian Journal of For Research, 31:865-878.
#' @examples
#' data(slashpine)    
#' head(slashpine) 
'slashpine'
#' Biomasa  
#'
#' @description
#' Dataset que contiene 9 pares de columnas con informacion sobre la biomasa de 40 árboles. 
#' @usage
#' data(slashpine2)
#' @format Variables se describen a continuacion::
#' \describe{
#' \item{tree_id}{Identifcador arbol}											
#' \item{dbh}{diámetro}
#' \item{h}{altura total}
#' \item{lcl}{largo de copa}
#' \item{age}{edad arbol}
#' \item{wood}{biomasa madera}
#' \item{bark}{biomasa corteza}
#' \item{crown}{biomasa copa}
#' \item{tree}{biomasa arbol}
#'  }
#' @source 
#' Datos fueron contribuidos por el Dr Christian Salas-Eljatib (Universidad de Chile, Santiago, Chile).
#' @references
#' Parresol BR. 2001. Additivity of nonlinear biomass equations. Canadian Journal of For Research, 31:865-878.
#' @examples
#' data(slashpine2)    
#' head(slashpine2) 
'slashpine2'																							