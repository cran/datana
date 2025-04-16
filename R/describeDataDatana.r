#' Resultados elecciones presidenciales en Argentina segunda vuelta
#' 2023.
#' @description Corresponde a los datos públicos entregados por el
#'     ministerio del interior de Argentina, referentes a las
#'     elecciones presidenciales efectuadas el año 2023
#' @usage data(argsegundavuelta23)
#' @format Este set de datos contiene las siguientes columnas:
#'     \describe{ \item{año}{Es el año calendario en el cual se lleva
#'     a cabo la elección.}  \item{recuento_id}{Indica el
#'     identificador numérico del tipo de recuento.}
#'     \item{distrito_id}{Indica el identificador numérico del
#'     distrito origen de los datos.}  \item{seccion_nombre}{Indica el
#'     nombre de la sección origen de los datos.}
#'     \item{mesa_id}{Identificador de la mesa origen de los datos.}
#'     \item{cargo_id}{Identificador del cargo para el cual se han
#'     contado los votos.}  \item{agrupacion_nombre}{Indica nombre de
#'     la agrupación política a la cual se han consignado los
#'     votos. Puede ser nulo en el caso de votos no positivos.}
#'     \item{estado_final}{Indica si el telegrama ha sido totalizado
#'     en el recuento provisional. Este campo podrá ser nulo para los
#'     recuentos definitivos.}  
#'     \item{eleccion_tipo}{Es el tipo de
#'     elección.}  
#'     \item{recuento_tipo}{Indica el tipo de recuento
#'     origen de los datos.}  
#'     \item{distrito_nombre}{Indica el nombre
#'     del distrito origen de los datos.}  
#'     \item{circuito_id}{Indica
#'     el identificador numérico o alfanumérico del circuito origen de
#'     los datos.}  
#'     \item{mesa_tipo}{Indicador del tipo de mesa origen
#'     de los datos.}  
#'     \item{cargo_nombre}{Indica el nombre del cargo
#'     para el cual se han contado los votos.}
#'     \item{votos_tipo}{Indica el tipo de votos que se han
#'     contabilizado.}  
#'     \item{seccionprovincial_id}{Indica el
#'     identificador numérico de la sección provincial origen de los
#'     datos.}  
#'     \item{eleccion_id}{Indica el identificador numérico
#'     del tipo de elección.}  
#'     \item{padron_tipo}{Indica el tipo de
#'     padrón del cual provienen los datos.}  
#'     \item{seccion_id}{Indica
#'     el identificador numérico de la sección origen de los datos.}
#'     \item{circuito_nombre}{Indica el identificador numérico o
#'     alfanumérico del circuito origen de los datos.}
#'     \item{mesa_electores}{Cantidad de electores de la mesa origen
#'     de los datos.}  
#'     \item{agrupacion_id}{Indicador de la agrupación
#'     política. Puede ser nulo en el caso de votos no positivos.}
#'     \item{votos_cantidad}{Cantidad de votos contabilizados.}
#'     \item{seccionprovincial_nombre}{Indica el nombre de la sección
#'     provincial origen de los datos.}
#'     }
#' @source Los datos fueron obtenidos de la Direccion Nacional
#'     Electoral (DINE) de Argentina
#' @examples
#' data(argsegundavuelta23)
#' df<-argsegundavuelta23    
#' head(df) 
#' table(df$distrito_nombre)
#' table(df$mesa_tipo,df$distrito_nombre)
#' tapply(df$votos_cantidad, df$distrito_nombre, summary)
'argsegundavuelta23'
#' Productividad científica de estudiantes de postgrado  
#' @description
#' Corresponde a un estudio realizado en xxxx, sobre el numero
#' de papers publicados por estudiantes egresados de programas
#' de doctorado luego de 3 años.
#' @usage
#' data(papersdocstu)
#' @format Este set de datos contiene las siguientes columnas:
#' \describe{
#'   \item{papers}{Es el número de artículos cientificos publicados
#'   luego de 3 años de egresado.}
#'   \item{genero}{Hombre/mujer.}
#'   \item{est.civil}{Estado civil del egresado.}
#'   \item{nin.men5}{Número de hijos menores a 5 años que dependen del
#'   egresado.}
#'   \item{prog.prest}{Puntaje asignado al prestigio del programa de 
#'   postgrado.}
#'   \item{papers.guia}{Número de papers publicados por el profesor(a)
#'   guía del egresado, en el mismo periodo de tiempo.}
#'  }
#' @source 
#' Los datos fueron obtenidos desde el paquete 'pslp' de R
#' @examples
#' data(papersdocstu)
#' df<-papersdocstu    
#' head(df) 
#' table(df$genero)
#' table(df$est.civil,df$genero)
#' tapply(df$papers,df$est.civil,summary)
'papersdocstu'
#' CO2 emissions and temperature at country-level.  
#' @description
#' Data obtained from the \eqn{hockeystick} package, which
#' retrieves annual global carbon 
#' dioxide emissions since 1750 from the World Data
#'  repository https://github.com/owid/co2-data, as well as
#'  other climate-related variables.
#' @usage
#' data(co2temp)
#' @format The data contains 75 variables, and the fully 
#' description can be reviewed in the references provided
#' here.
#' \describe{
#'\item{country}{Country.}                                  
#' \item{year}{Calendar year.}                                     
#' \item{iso_code}{TBA.}                                 
#' \item{population}{Population size, in number of people.}                               
#' \item{gdp}{Gross domestic product, a measure of the value added created
#'  through the production of goods and services in a country.}                                      
#' \item{cement_co2}{TBA.}                               
#' \item{cement_co2_per_capita}{TBA.}                    
#' \item{co2}{TBA.}                                      
#' \item{co2_growth_abs}{TBA.}                           
#' \item{co2_growth_prct}{TBA.}                          
#' \item{co2_including_luc}{TBA.}                        
#' \item{co2_including_luc_growth_abs}{TBA.}             
#' \item{co2_including_luc_growth_prct}{TBA.}            
#' \item{co2_including_luc_per_capita}{TBA.}             
#' \item{co2_including_luc_per_gdp}{TBA.}                
#' \item{co2_including_luc_per_unit_energy}{TBA.}        
#' \item{co2_per_capita}{TBA.}                           
#' \item{co2_per_gdp}{TBA.}                              
#' \item{co2_per_unit_energy}{TBA.}                      
#' \item{coal_co2}{TBA.}                                 
#' \item{coal_co2_per_capita}{TBA.}                      
#' \item{consumption_co2}{TBA.}                           
#' \item{consumption_co2_per_capita}{TBA.}                
#' \item{consumption_co2_per_gdp}{TBA.}                   
#' \item{cumulative_cement_co2}{TBA.}                     
#' \item{cumulative_co2}{TBA.}                            
#' \item{cumulative_co2_including_luc}{TBA.}              
#' \item{cumulative_coal_co2}{TBA.}                       
#' \item{cumulative_flaring_co2}{TBA.}                    
#' \item{cumulative_gas_co2}{TBA.}                        
#' \item{cumulative_luc_co2}{TBA.}                        
#' \item{cumulative_oil_co2}{TBA.}                        
#' \item{cumulative_other_co2}{TBA.}                      
#' \item{energy_per_capita}{TBA.}                         
#' \item{energy_per_gdp}{TBA.}                            
#' \item{flaring_co2}{TBA.}                               
#' \item{flaring_co2_per_capita}{TBA.}                    
#' \item{gas_co2}{TBA.}                                   
#' \item{gas_co2_per_capita}{TBA.}                        
#' \item{ghg_excluding_lucf_per_capita}{TBA.}             
#' \item{ghg_per_capita}{TBA.}                            
#' \item{land_use_change_co2}{TBA.}                       
#' \item{land_use_change_co2_per_capita}{TBA.}           
#' \item{methane}{TBA.}                                  
#' \item{methane_per_capita}{TBA.}                       
#' \item{nitrous_oxide}{TBA.}                            
#' \item{nitrous_oxide_per_capita}{TBA.}                 
#' \item{oil_co2}{TBA.}                                  
#' \item{oil_co2_per_capita}{TBA.}                       
#' \item{primary_energy_consumption}{TBA.}               
#' \item{share_global_cement_co2}{TBA.}                  
#' \item{share_global_co2}{TBA.}                         
#' \item{share_global_co2_including_luc}{TBA.}           
#' \item{share_global_coal_co2}{TBA.}                    
#' \item{share_global_cumulative_cement_co2}{TBA.}       
#' \item{share_global_cumulative_co2}{TBA.}              
#' \item{share_global_cumulative_co2_including_luc}{TBA.}
#' \item{share_global_cumulative_coal_co2}{TBA.}         
#' \item{share_global_cumulative_flaring_co2}{TBA.}      
#' \item{share_global_cumulative_gas_co2}{TBA.}          
#' \item{share_global_cumulative_luc_co2}{TBA.}          
#' \item{share_global_cumulative_oil_co2}{TBA.}          
#' \item{share_global_cumulative_other_co2}{TBA.}        
#' \item{share_global_flaring_co2}{TBA.}                 
#' \item{share_global_gas_co2}{TBA.}                     
#' \item{share_global_luc_co2}{TBA.}                     
#' \item{share_global_oil_co2}{TBA.}                     
#' \item{share_global_other_co2}{TBA.}                   
#' \item{share_of_temperature_change_from_ghg}{TBA.}     
#' \item{temperature_change_from_ch4}{TBA.}              
#' \item{temperature_change_from_co2}{TBA.}              
#' \item{temperature_change_from_ghg}{TBA.}              
#' \item{temperature_change_from_n2o}{TBA.}              
#' \item{total_ghg}{TBA.}                                
#' \item{total_ghg_excluding_lucf}{TBA.}               
#' \item{trade_co2}{TBA.}                                
#' \item{trade_co2_share}{TBA.}
#'  }
#' @source 
#' The data were obtained from the \eqn{hockeystick} library of R.  
#'  Notice that in the 
#'  dataframe only a portion of countries have been
#'  kept. 
#' @references
#' - \url{https://www.globalcarbonproject.org/carbonbudget/}
#' 
#' - Friedlingstein P. et al. 2020. Global Carbon Budget 2020, 
#' Earth System Science Data 12:3269-3340 \doi{10.5194/essd-12-3269-2020}
#' @examples
#' data(co2temp)    
#' names(co2temp)
#' table(co2temp$country)  
#' lattice::xyplot(co2~year|country,data=co2temp,type="l",as.table=TRUE)
'co2temp'
#' Datos encuesta CASEN del 2022  
#' @description
#' Encuesta de Caracterización Socioeconómica Nacional (CASEN) de Chile, 
#'  es realizada por el Ministerio de Desarrollo Social y Familia con 
#'  el objetivo de disponer de información que permita conocer
#'  situación de los hogares y de la población. Estos datos corresponden
#'  a los de la encuesta CASEN 2022. 
#' @usage
#' data(casen)
#' @format Este set de datos contiene las siguientes columnas:
#' \describe{
#'   \item{id.vivienda}{Identificador de la vivienda.}
#'   \item{id.persona}{Identificador de la persona.}
#'   \item{region}{Región administrativa de Chile.}
#'   \item{comuna}{Comuna.}
#'   \item{edad}{Edad de la persona, en años.}
#'   \item{sexo}{Sexo de la persona.}
#'   \item{esc}{Años de escolaridad (edad >= 15).}
#'   \item{educ}{Clasificación de educación recibida.}
#'   \item{personas.hogar}{Número de personas que habitan en el hogar.}
#'   \item{tipohogar}{Nivel de tipo de hogar según encuesta.}
#'   \item{activ}{Nivel de actividad actual de la persona según encuesta.}
#'   \item{ytot}{Ingreso total.}
#'   \item{ytoth}{Ingreso total del hogar.}
#'   \item{ypch}{Ingreso total per cápita del hogar.}
#'   \item{ytotcor}{Ingreso total corregido.}
#'   \item{ytotcorh}{Ingreso total corregido del hogar.}
#'   \item{ypc}{Ingreso total corregido per cápita del hogar.}
#'   \item{mayor.nivel.edu}{¿Cuál es el nivel educacional al que asiste o el más alto al cual asistió?}
#'   \item{area.edu.cinef}{Clasificación Internacional Normalizada de Educación (CINE-F).}
#'   \item{subarea.edu.cinef}{Clasificación Internacional Normalizada de Sub-Area de Educación (CINE-F).}
#'   \item{previ.salud}{Sistema de previsión de salud.}   
#'  }
#' @source 
#' Los datos fueron obtenidos desde el web 
#' \url{https://observatorio.ministeriodesarrollosocial.gob.cl/encuesta-casen}.
#'  Note que solo algunas columnas son utilizadas aca, así
#'  como el nombre de algunas columnas fueron levemente cambiados.
#' @examples
#' data(casen)    
#' head(casen) 
#' table(casen$region)
#' table(casen$region,casen$sexo)
#' tapply(casen$ytotcor,casen$sexo,sum)
'casen'
#' Elección primaria para la presidencia de Chile  
#' @description
#' Datos a nivel de mesa de la votación para elecciones primarias para 
#' Presidente de Chile en 2021. 
#' @usage
#' data(primary)
#' @format Este set de datos contiene las siguientes columnas:
#' \describe{
#'   \item{region.no}{Región administrativa de Chile.}
#'   \item{region}{Nombre de la región.}   
#'   \item{provincia}{Provincia.}
#'   \item{distrito}{Distrito.}
#'   \item{comuna}{Comuna.}
#'   \item{circu.elec}{Circunscripción electoral.}
#'   \item{local}{Local de votación.}
#'   \item{tipo.mesa}{tipo de mesa.}
#'   \item{mesa}{Código identificador de la mesa.}
#'   \item{mesas.fusionadas}{Mesas fusionadas.}
#'   \item{nro.voto}{.}
#'   \item{lista}{Lista política del candidato.}
#'   \item{pacto}{Pacto político del candidato.}
#'   \item{partido}{Partido político del candidato.}
#'   \item{candidato}{Nombre del candidato.}
#'   \item{votos}{Número total de votos.}       
#'  }
#' @source 
#' Los datos fueron obtenidos desde el servicio electoral de Chile (SERVEL) 
#' en el web \url{https://www.servel.cl}. El nombre del archivo 
#'  era Resultados Primarias Presidenciales 2021 CHILE.xlsx, y fue descargado
#'   el 4 de octubre del 2022. Los datos fueron ordenados, y solo aquellas 
#'   filas que contenian información en la columna 'votos' son parte de 
#'   la dataframe.
#' @examples
#' data(primary)    
#' head(primary) 
#' table(primary$region)
#' table(primary$region,primary$candidato)
#' tapply(primary$votos,primary$candidato,sum)
'primary'
#' Large trees in forests near Tolga, in Eastern Norway. 
#'
#' @description
#' The study area is situated in the municipality of Tolga, located in
#'  Hedmark County, Eastern Norway. Field plots 32 m × 32 m in size were 
#'  established in forests. A total of 1109 plots were sampled. In each plot, 
#'   Scots pines (Pinus sylvestris L.). trees with a stem diameter larger 
#'   than 35 cm were measured and counted. 
#' @usage
#' data(largetrees)
#' @format Contains two variables, as follows:
#' \describe{
#'   \item{plot}{Plot code.}
#' \item{y}{Number of large-diameter trees in a given sample plot.}
#'  }
#' @source 
#' Although Christian Salas was part of the study, he just reproduced the 
#' needed data  to mimic the distribution of the random variable of interest,
#'  as shown in the study of Korkhonen et al (2016).
#' @references
#' - Korhonen L, Salas C, Ostgard T, Lien V, Gobakken T, Naesset E. 2016. 
#' Predicting the occurrence of large-diameter trees using airborne laser 
#' scanning. Canadian Journal of Forest Research
#'  46:461–469. \doi{10.1139/cjfr-2015-0384}
#' @examples
#' data(largetrees)    
#' head(largetrees) 
#' hist(largetrees$y)
'largetrees'
#' Árboles grandes en bosques cercanos a Tolga, en el Este de Noruega. 
#'
#' @description
#' El área de estudio esta ubicada en la municiplaidad de Tolga, en la comuna
#'  de Hedmark, al Este de Noruega. 1109 parcelas de muestreo de 32 m × 32 m 
#'  se establecieron en los bosques. En cada parcela, los árboles de 
#'  pino escoses (Pinus sylvestris L.). que tuvieran un diámetro mayor a 35 cm
#'   fueron medidos y contados. 
#' @usage
#' data(largetrees2)
#' @format Los datos poseen las siguientes dos columnas:
#' \describe{
#'   \item{parc}{Identificador de la parcela de muestreo.}
#' \item{y}{Número de árboles de gran diámetro encontrados en una parcela de 
#' muestreo.}
#'  }
#' @references
#' - Korhonen L, Salas C, Ostgard T, Lien V, Gobakken T, Naesset E. 2016. 
#' Predicting the occurrence of large-diameter trees using airborne laser 
#' scanning. Canadian Journal of Forest 
#' Research 46:461–469. \doi{10.1139/cjfr-2015-0384}
#' @source 
#' Aunque el Prof. Christian Salas fue parte del estudio, acá se han 
#' reproducido los datos necesarios que imitan la distribución de
#'  la variable aleatoria de interés, tal como se muestra en el 
#'  estudio de Korkhonen et al (2016).

#' @examples
#' data(largetrees2)    
#' head(largetrees2) 
#' hist(largetrees2$y)
'largetrees2'
#' Population density growth of beetles
#'
#' @description
#' Temporal measurements of density of beetles (Tribolium confusum) growing in
#'  different controlled environments.
#' 
#' @format 
#' \describe{
#'   \item{days}{Number of days.}
#'   \item{diet}{The quantities of flour (in grams) of the environments where
#'    the beetles were growing.  Six levels of the factor Diet.}
#'   \item{type}{The various stage of beetles, i.e., eggs, larvae, pupae, 
#'   and adults.}
#'   \item{density}{The number of insects per environment.}
#'  }
#' @source  
#' Data from Table No. 1, page 116, of Chapman (1928). Series of experiments 
#' under controlled
#'  conditions in which flour beetles (Tribolium confusum) are kept in 
#'  environments of known size. 
#'  The period from egg to adult is approximately forty days at 27C degrees. 
#'  The data were entered by Miss Yamara Arancibia, a former 
#'  student of Prof. Christian Salas-Eljatib.
#'  
#' @references 
#' - Chapman RN. 1928. The quantitative analysis of environmental factors. 
#' Ecology 9(2):111-122.  \doi{10.2307/1929348}
#' @examples
#' data(beetles)
#' table(beetles$type)
#' name.diet<-unique(beetles$diet)
#' num.diet<-length(name.diet)
#' ##Time series plot
#' #first, some computation
#' alys<-with(beetles,tapply(density,list(as.factor(days),as.factor(diet)),sum))
#' out<-as.data.frame(alys)
#' out$time<-row.names(out)
#' head(out)
#' #Figure 1 of the paper
#' matplot(out[,"time"], out[,1:num.diet], las=1, type=c("b"),pch=1,
#'         xlab="Time in days",ylab="Total individuals")
#' legend("topleft", legend = name.diet, title = "Diet (gr)",
#'        col = 1:6, lty = 1:6, pch = 1)
"beetles"
#' Crecimiento poblacional de escarabajos
#'
#' @description
#' Mediciones temporales de densidad de escarabajos (*Tribolium confusum*) 
#' creciendo en  diferentes ambientes controlados.
#' 
#' @format 
#' \describe{
#'   \item{dias}{Número de dias.}
#'   \item{dieta}{La cantidad de harina (en gramos) de ambientes donde crecen 
#'   los escarabajos.  Seis niveles del factor Dieta.}
#'   \item{tipo}{Estados de desarrollo de los escarabajos, i.e., huevos, 
#'   larvas, pupas, y adultos.}
#'   \item{densidad}{Número total de individuos por ambiente de crecimiento.}
#'  }
#' @source  
#' Datos del Cuadro No. 1, page 116, de Chapman (1928). Serie de experimentos 
#' bajo condiciones controladas
#'  donde escarabajos (Tribolium confusum) se mantienen en ambientes de tamaño 
#'  conocido. 
#'  El periodo desde huevo a adulto es de aproximadamente de cuarenta dias a 
#'  27 grados Celsius. Los datos fueron digitados por la Srta. Yamara
#'   Arancibia, una estudiante del Prof. Christian Salas-Eljatib.
#'  
#' @references 
#' - Chapman RN. 1928. The quantitative analysis of environmental factors. 
#' Ecology 9(2):111-122.  \doi{10.2307/1929348}
#' @examples
#' data(beetles2)    
#' table(beetles2$tipo)
#' nom.dieta<-unique(beetles2$dieta)
#' num.dieta<-length(nom.dieta)
#' ##Grafico de serie de tiempo
#' #primero algunos calculos
#' alys<-with(beetles2,tapply(
#'           densidad,list(as.factor(dias),as.factor(dieta)),sum)
#'           )
#' out<-as.data.frame(alys)
#' out$tiempo<-row.names(out)
#' head(out)
#' ##Figura 1 del paper
#' matplot(out[,"tiempo"], out[,1:num.dieta], las=1, type=c("b"),pch=1,
#'         xlab="Tiempo en dias",ylab="Densidad de individuos")
#' legend("topleft", legend = nom.dieta, title = "Dieta (gr)",
#'        col = 1:6, lty = 1:6, pch = 1)
"beetles2"
#' Soil treatment experiment in tree seedlings  
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
#'  Miss Nayeli Ramirez, a former student of Prof. Christian Salas-Eljatib.
#' @references
#' - Freese, F 1967. Elementary statistical methods for foresters. 
#' Agriculture Handbook 3171, USDA Forest Service.
#' @examples
#' data(soiltreat)    
#' head(soiltreat) 
#' tapply(soiltreat$inc.h,soiltreat$treat,summary)
#' tapply(soiltreat$inc.h,soiltreat$treat,sd)
'soiltreat'
#' Tratamientos del suelo en el crecimiento de plantulas.  
#' @description
#' Un experimento sobre el efecto de tres tratamientos del suelo en el 
#' crecimiento en altura de plantulas de 2-años de edad. Los tratamientos 
#' fueron  asignados aleatoriamente a tres parcelas dentro de cada uno de 
#' 11 bloques. Cada parcela esta  constituida por hasta 50 plantulas. 
#' El promedio del incremento en altura de los últimos 5 años fue la 
#' variable de interes para evaluar los tratamientos.   
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
#' Cuadro de la página 71 de Freese (1967). Los datos fueron digitados por 
#' la Srta. Nayeli Ramirez, una estudiante del Prof. Christian Salas-Eljatib. 
#' @references
#' - Freese, F 1967. Elementary statistical methods for foresters. Agriculture 
#' Handbook 3171, USDA Forest Service.
#' @examples
#' data(soiltreat2)    
#' head(soiltreat2) 
#' tapply(soiltreat2$alt.inc,soiltreat2$tmo,summary)
#' tapply(soiltreat2$alt.inc,soiltreat2$tmo,sd)
'soiltreat2'
#' Tree-level cork biomass data for Oak trees in Portugal
#'
#' @description
#' Measurements of cork weight in *Quercus suber* (Oak) trees in Portugal.
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
#'  by authors accompanied by a note which said "After the article was 
#'  published we discovered a problem with 2 of the observations so Teresa	
#'  and I decided it was best just to delete them."
#' @references 
#' - Fonseca TJ, Parresol BR. 2001. A new model for cork weight estimation 
#' in northern Portugal with methodology for construction of 
#' confidence intervals. Forest Ecology and Management 152(1):131–139.
#' @examples
#' data(corkoak)    
#' head(corkoak) 
"corkoak"
#' Datos de biomasa de corcho en árboles de Encino en Portugal
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
#'  y los autores originales mencionaron "After the article was published we
#'   discovered a problem with 2 of the observations so Teresa and I decided 
#'   it was best just to delete them."
#' @references 
#' - Fonseca TJ, Parresol BR. 2001. A new model for cork weight estimation 
#' in northern Portugal with methodology for construction of confidence 
#' intervals. Forest Ecology and Management 152(1):131–139.
#' @examples
#' data(corkoak2)    
#' head(corkoak2) 
"corkoak2"
#' Tree-list data from a forest sampling work (usually term as a 
#' forest inventory). 
#'
#' @description
#' Tree-level variables measured within three sample plots in a 
#' forest sampling effort. This sort of work is commonly referred as 
#' a forest inventory. Notice that plots might have different areas. 
#' The sampling was carried out in a secondary forest of Nothofagus obliqua 
#' in the Rucamanque experimental station, near the city of Temuco, in
#' southern Chile.
#' @usage
#' data(treelistinve)
#' @format Contains tree-level variables, as follows:
#' \describe{
#'   \item{plot}{Plot number.}
#'   \item{plot.size}{Plot size, in m\eqn{^{2}}{^2}.}
#'   \item{tree}{Tree identificator}
#' \item{species}{species common name as follows: Olivillo= Aextocicon 
#' puncatatum, Tepa= Laureliopsis philippiana, Lingue= Persea lingue, 
#' Coigue=Nothofagus dombeyi, Roble=Nothofagus obliqua, Other=Other}
#' \item{dbh}{Diameter at breast-height, in cm.}
#' \item{toth}{Total height, in m. Only measured for some sample trees.}
#'  }
#' @source 
#'  The data are provided courtesy of Prof. Christian Salas-Eljatib 
#'  (Universidad de Chile, Santiago, Chile). 
#' @references 
#' - Salas C. 2001. Caracterización básica del relicto de Biodiversidad 
#' Rucamanque. Bosque Nativo, 29:3-9. 
#' \url{https://eljatib.com/publication/2001-06-01_caracterizacion_basi/}
#' 
#' - Salas C. 2002. Ajuste y validación de ecuaciones de volumen para un 
#' relicto del bosque de Roble-Laurel-Lingue. Bosque 23(2): 81-92. 
#' \doi{10.4067/S0717-92002002000200009} 
#' \url{https://eljatib.com/publication/2002-07-01_ajuste_y_validacion_/} 
#' @examples
#' data(treelistinve)    
#' head(treelistinve) 
#' tapply(treelistinve$dbh,treelistinve$species,summary)
'treelistinve'
#' Lista de árboles en un muestreo forestal (usualmente llamado
#' inventario forestal). 
#'
#' @description
#' Variables a nivel de árbol medidas en tres unidades de muestreo (i.e., 
#' parcelas) establecidas en un muestreo forestal. Este tipo de muestreo 
#' de bosques, es comunmente conocido como "inventario forestal". 
#'  Note que las parcelas podrían tener diferentes superficies. El muestreo
#'  fue realizado en un bosque secundario dominado por
#'   Nothofagus obliqua en el predio Rucamanque, en 
#'   las cercanías de la ciudad de Temuco, en el sur de Chile.
#' @usage
#' data(treelistinve2)
#' @format Contiene variables a nivel de árbol dentro de parcelas.
#' \describe{
#'   \item{parce}{Número de la parcela de muestreo.}
#'   \item{sup.parce}{Superficie de la parcela, en m\eqn{^{2}}{^2}.}
#'   \item{arbol}{Número identificador del árbol.}
#' \item{spp}{Nombre comun de especies como sigue: Olivillo= Aextocicon 
#' puncatatum, Tepa= Laureliopsis philippiana, Lingue= Persea lingue, 
#' Coigue=Nothofagus dombeyi, Roble=Nothofagus obliqua, Other=Other}
#' \item{dap}{Diámetro a la altura del pecho, en cm.}
#' \item{atot}{Altura total, en m. Solo medida en algunas árboles muestra.}
#'  }
#' @source 
#'  Los datos fueron cedidos por el Prof. Christian Salas-Eljatib,
#'   Universidad de Chile (Santiago, Chile). 
#' @references
#' - Salas C. 2001. Caracterización básica del relicto de Biodiversidad 
#' Rucamanque. Bosque Nativo, 29:3-9. 
#' \url{https://eljatib.com/publication/2001-06-01_caracterizacion_basi/}
#' 
#' - Salas C. 2002. Ajuste y validación de ecuaciones de volumen para un relicto
#' del bosque de Roble-Laurel-Lingue. Bosque 23(2): 81-92.
#'  \doi{10.4067/S0717-92002002000200009} 
#'  \url{https://eljatib.com/publication/2002-07-01_ajuste_y_validacion_/} 
#' @examples
#' data(treelistinve2)    
#' unique(treelistinve2$parce) 
#' table(treelistinve2$parce,treelistinve2$sup.parce)
#' tapply(treelistinve2$dap,treelistinve2$spp,summary)
'treelistinve2'
#' Tree-level data from a sample plot established in a *Eucalyptus globulus*
#'  plantation.  
#' @description
#' Tree-level variables collected for all trees (even the variable height) 
#' within a sample plot in a forestry plantation of *Eucalyptus globulus* near
#'  Gorbea, southern Chile. The plot size is 500 m\eqn{^{2}}{^2}. 
#'  The plantation is 15 yr-old and had been subject to three thinnings. 
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
#' The data were provided courtesy of Dr 
#' Christian Salas-Eljatib (Universidad de Chile, Santiago, Chile).  
#' @examples
#' data(eucaplot)    
#' head(eucaplot$health) 
#' descstat(eucaplot[,c("dbh","toth")])
'eucaplot'
#' Lista de árboles con todas las variables medidas en una parcela 
#' de muestreo, establecida en una plantación de *Eucalyptus globulus*.   
#' @description
#' Variables a nivel individual medidas en todos los árboles 
#' (incluso la variable altura) encontrados en una parcela de 
#' muestreo en una plantación forestal de *Eucalyptus globulus* cerca de 
#' Gorbea, en el sur de Chile. La superficie de la parcela es 
#' de 500 m\eqn{^{2}}{^2}. La plantación tiene 15 años de edad y 
#' ha estado sujeta a tres raleos.
#' @usage
#' data(eucaplot2)
#' @format Los datos contienen las siguientes cuatro columnas:
#' \describe{
#'   \item{dap}{Diámetro a la altura del pecho, en cm.}
#'   \item{sanidad}{Evaluación cualitativa de la sanidad 
#'   del árbol (1: buena, 2: media, 3: mala).}
#'   \item{forma}{Evaluación cualtitativa de la forma del 
#'   fuste (1: buena, 2: media, 3: mala).}
#'   \item{clase.copa}{Clase de copa (1: superior, 2: intermedio, 3: inferior).}
#'   \item{atot}{Altura total, en m.}
#'  }
#' @source 
#' Los datos fueron cedidos por el Prof. Christian Salas 
#' (Universidad de Chile, Santiago, Chile), y colectados
#' por él mientras fue Profesor del Departamento de Ciencias Forestales en 
#' la Universidad de La Frontera (Temuco, Chile). La plantación se encontraba 
#' dentro de un predio del colega (QEPD) Hugo Castro.  
#' @examples
#' data(eucaplot2)    
#' table(eucaplot2$sanidad) 
#' descstat(eucaplot2[,c("dap","atot")])
'eucaplot2'
#' Tree-list (realistic-) data in a sample plot established in a 
#' *Eucalyptus globulus* plantation in southern Chile.  
#' @description
#' Tree-level variables collected in a sample plot (area=500 m\eqn{^{2}}{^2}) 
#' in a forestry plantation of *Eucalyptus globulus* near Gorbea, in southern 
#' Chile. The variable height, was only measured in a sub-sample of 
#' trees within the plot. The plantation is 15 yr-old and had been subject to 
#' three thinnings. 
#' @usage
#' data(eucaplotr)
#' @format The dataframe contains four variables as follows:
#' \describe{
#'   \item{dbh}{Diameter at breast height, in cm.}
#'   \item{health}{health status (1: good, 2: medium, 3: bad).}
#'   \item{shape}{stem shape for timber purposes (1: good, 2: medium, 3: bad).}
#'   \item{crown.class}{Crown class (1: superior, 2: intermedium, 3: lower).}
#'   \item{toth}{Total height, in m.}
#'  }
#' @source 
#' The data were provided courtesy of Dr
#'  Christian Salas-Eljatib (Universidad de Chile,
#'  Santiago, Chile).  
#' @examples
#' data(eucaplotr)    
#' head(eucaplotr$health)
#' descstat(eucaplotr[,c("dbh","toth")])  
'eucaplotr'
#' Lista de árboles con variables medidas (más realista) en una parcela de 
#' muestreo, establecida en una plantación de Eucalyptus globulus.   
#' @description
#' Variables a nivel individual medidas en los árboles encontrados en una 
#' parcela de muestreo (de 500 m\eqn{^{2}}{^2}) en una plantación forestal 
#' de *Eucalyptus globulus*, cerca de Gorbea (Sur de Chile). La variable 
#' altura fue medida solo en una sub-muestra de árboles. La plantación 
#' tiene 15 años de edad y ha estado sujeta a tres raleos.
#' @usage
#' data(eucaplotr2)
#' @format Los datos contienen las siguientes cuatro columnas:
#' \describe{
#'   \item{dap}{Diámetro a la altura del pecho, en cm.}
#'   \item{sanidad}{Evaluación cualitativa de la sanidad del árbol 
#'   (1: buena, 2: media, 3: mala).}
#'   \item{forma}{Evaluación cualtitativa de la forma del fuste
#'    (1: buena, 2: media, 3: mala).}
#'   \item{clase.copa}{Clase de copa (1: superior, 2: intermedio, 3: inferior).}
#'   \item{atot}{Altura total, en m. Esta variable fue medida solo en
#'    una submuestra de árboles.}
#'  }
#' @source 
#' Los datos fueron cedidos por el Prof. Christian Salas-Eljatib 
#' (Universidad de Chile, Santiago, Chile), y colectados
#' por él mientras fue Profesor del Departamento de Ciencias Forestales en 
#' la Universidad de La Frontera (Temuco, Chile).
#' La plantación se encontraba dentro de un predio del colega (QEPD) Hugo 
#' Castro.  
#' @examples
#' data(eucaplotr2)    
#' table(eucaplotr2$sanidad) 
#' descstat(eucaplotr2[,c("dap","atot")])
'eucaplotr2'
#' Eleccion presidencial del 2021 en Chile.  
#' @description
#' Datos de mesa de la eleccion presidencial del 2012 en Chile. La eleccion 
#' se llevo a cabo el 19 de Diciembre del 2021. 
#' @usage
#' data(president)
#' @format Los datos contienen las siguientes columnas:
#' \describe{
#'   \item{region.no}{Número de la region adminsitrativa de Chile.}
#'   \item{region}{Nombre de la region administrativa de Chile}
#'   \item{provincia}{Provincia.}
#'   \item{circu.senatorial}{Circunscripcion senatorial.}
#'   \item{distrito}{Distrit.}
#'   \item{comuna}{County.}
#'   \item{circu.elec}{Circunscripcion electoral.}
#'   \item{local}{Local de votacion. Generalmente es un colegio.}
#'   \item{no.mesa}{Número de mesa.}
#'   \item{tipo.mesa}{Tipo de mesa de votacion.}
#'   \item{mesas.fusionadas}{Mesa de votacion fucionada.}
#'   \item{electores}{Electores.}
#'   \item{nro.en.voto}{.}
#'   \item{candidato}{Candidato, ya sea Gabriel Boric o Jose A. Kast}
#'   \item{votos.tricel}{Número total de votos segun el TRICEL (Tribunal 
#'   calificador de elecciones).}       
#'  }
#' @source 
#' Los datos fueron obtenidos desde el sitio web del Servicio Electoral del
#'  Gobierno de Chilean (SERVEL) en \url{https://www.servel.cl}.
#'  El archivo de datos descargado el 24 de Octubre del 2022 tenia el nombre
#'   Resultados mesa presidencial TRICEL 2v 2021-1.xlsx.
#' @examples
#' data(president)    
#' head(president) 
'president'
#' Presence or absence of sea ice from logbook records of annual cruises
#' @description
#' Data containing 52717 observations about presence of sea ice from logbook
#'  records of annual cruises to the B-C-B in an unbroken record between 
#'  years 1850 to 1910. 
#' @usage
#' data(presenceIce)
#' @format The dataframe contains the following columns:
#' \describe{
#'   \item{ship.id}{The code number for ships.}
#'   \item{move.type}{Type of movement of ships. 0 indicates a sail-powered 
#'   vessel and 1 indicates an auxiliary-powered vessel.}
#'   \item{year}{Year of registry.}
#'   \item{month}{Month of registry.}
#'   \item{day}{Day of registry.}
#'   \item{lat.dec}{Decimal latitude.}
#'   \item{long.dec}{Decimal longitude.}
#'   \item{e.w}{East or west of the Prime Meridian.}
#'   \item{ice.cov}{Sea Ice Observed. 0 no see (Not registered) and 1 presence
#'    sea ice (Registered).}
#'  }
#' @source 
#' The data were provided from Sea Ice Group at the Geophysical Institute.   
#' @references
#' Mahoney A, Bockstoce J, Botkin D, Eicken H, Nisbet R. 2011. Sea-Ice 
#' Distribution in the Bering and Chukchi Seas: Information from Historical 
#' Whaleships' Logbooks and Journals
#' ARCTIC. 64(4): 465-477.
#' @examples
#' data(presenceIce)    
#' head(presenceIce) 
'presenceIce'
#' Diameter growth increments of a tropical tree species in Hawaii
#' @description
#' Tree size, competition, and diameter growth increment of
#'  *Metrosideros polymorpha* trees collected in the Kilauea Volcano, Hawaii. 
#' Data containing 64 observations at the current annual growth 
#' rate (defined as dbh increment within one calendar year) of each tree
#'  was measured from 1986 to 1988.
#' @usage
#' data(hawaii)
#' @format The dataframe has the following columns:
#' \describe{
#'   \item{tree.code}{Tree number identification. The first letter of the 
#'   ID representsa cohort. Six cohorts representing a chronosequence 
#'   were sampled.}
#'   \item{dbh}{Initial stem diameter, in cm.}
#'   \item{toth}{Total height, in m.}
#'   \item{crown.area}{Crown outline area, in square meters.}
#'   \item{comp.ind}{Competition index (Basal area of nearest neighbor 
#'   divided by square of distance to nearest neighbor plus
#'          basal area of second nearest neighbor divided by square of 
#'          distance to second nearest neighbor).}
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
#' Tamaño del árbol, competencia, e incremento corriente anual de árboles de
#'  *Metrosideros polymorpha* colectado en el volcan Kilauea, en Hawaii.
#'   Los datos contienen 64 observaciones de incremento corriente anual 
#' (definido como el incremento en diámetro en un año calendario) de cada 
#' árbol. Estos incrementos fueron medidos desde el año 1986 a 1988.
#' @usage
#' data(hawaii)
#' @format Estos datos contienen las siguientes columnas:
#' \describe{
#'   \item{arb.id}{Codigo identificador del árbol. La primera letra del 
#'   ID representa
#'   un cohorte. Hay seis cohortes que representan una cronosecuencia.}
#'   \item{dap}{Diámetro a la altura del pecho, en cm.}
#'   \item{atot}{Altura total, en m.}
#'   \item{area.copa}{Area de copa, en metros cuadrados.}
#'   \item{ind.comp}{Competition index (Basal area of nearest neighbor divided
#'    by square of distance to nearest neighbor plus
#'          basal area of second nearest neighbor divided by square of distance
#'           to second nearest neighbor).}
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
#' Sampling plots data from a Pinus radiata plantation near Capitan Pastene, 
#' Region de La Araucania, Chile.  
#' @description
#' Tree-level information collected within sample plots in a forestry 
#' plantation of Pinus radiata near Capitan Pastene, in southern Chile. 
#' Sample plots size is 150 m\eqn{^{2}}{^2}.
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
#' The data are provided courtesy of Mr. Mauricio Lobos-Beneventi 
#' (Temuco, Chile).  
#' @examples
#' data(radiatapl)    
#' head(radiatapl) 
'radiatapl'
#' Datos a nivel de árbol de parcelas de muestreo en plantaciones de 
#' Pinus radiata  
#' @description
#' Es un listado de árboles con características medidas dentro de 
#' unidades de muestreo en una plantación de Pinus radiata cercana a
#'  Capitan Pastene, 
#' Region de la Araucania, Chile. Las parcelas de muestreo 
#' tienen 150 m\eqn{^{2}}{^2}.
#' @usage
#' data(radiatapl2)
#' @format Los datos contienen las siguientes columnas
#' \describe{
#'   \item{parce}{Número de identificación de la parcela de muestreo.}
#'   \item{arbol}{Número de identificación del árbol dentro de la parcela.}
#'   \item{dap}{Diámetro a los 1.3 m en el fuste, en cm.}
#'   \item{atot}{Altura total, en m. Solo registrada para algunos árboles 
#'   muestra.}
#'  }
#' @source 
#' Los datos son cortesía del Ing. Forestal Mauricio 
#' Lobos-Beneventi (Temuco, Chile).  
#' @examples
#' data(radiatapl2)    
#' head(radiatapl2) 
'radiatapl2'
#' Time series of annual precipitations in cities of Chile.  
#' @description
#' Data contains annual precipitations in six cities in Chile (Santiago, 
#' Talca, Chillán, Temuco, Valdivia, and Puerto Montt) at different years.  
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
#' Data contains annual precipitations in six cities in Chile (Santiago, 
#' Talca, Chillan, Temuco, Valdivia, and Puerto Montt) at different years.  
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
#' Diameter and height growth of Grand-fir (Abies grandis) sample trees  
#' @description
#' Diameter and height growth of 66 Grand-fir trees. Data derived from 
#' stem analysis sample
#' trees collected by Dr Albert Stage (US Forest Service, Moscow, ID, USA.)
#' @usage
#' data(treegr)
#' @format Contains seven column, as follows:
#' \describe{
#'   \item{tree.id}{Tree number identificator. An unique number to each 
#'   sample tree.}
#'   \item{forest}{Forest type.}
#'   \item{habitat}{Forest habitat type.}
#'   \item{tree.code}{A composite tree code representing the following
#'    columns: tree.id-forest-habitat}
#'   \item{age}{Age, in yr}
#'   \item{dbh}{Diameter at breast-height, in cm.}
#'   \item{toth}{Total height, in m.}
#'  }
#' @source 
#' Originally, the data were provided by Dr Albert Stage (R.I.P) to 
#' Professor Andrew Robinson (University
#' of Idaho, USA), whom used them to explain the fitting of statistical
#'  models. Dr Christian Salas-Eljatib was a former graduate student of 
#'  Statistics of Prof Robinson at the University of Idaho.  
#' @references
#' Stage, A. R., 1963. A mathematical approach to polymorphic site index 
#' curves for Grand fir. Forest Science 9 (2), 167–180.
#' @examples
#' data(treegr)    
#' head(treegr) 
'treegr'
#' Crecimiento en diámetro y altura de árboles muestras de Grand-fir
#'  (Abies grandis) 
#' @description
#' Crecimiento en diámetro y altura de 66 árboles de Grand-fir. Los datos 
#' fueron derivados a partir de árboles muestras de analisis fustal
#'  colectados por el Dr Albert Stage (US Forest Service, Moscow, ID, USA.)
#' @usage
#' data(treegr2)
#' @format Contiene las siguientes siete columnas:
#' \describe{
#'   \item{num.arb}{Número identificador del árbol. Unico para cada árbol 
#'   muestra.}
#'   \item{bosque}{Tipo forestal.}
#'   \item{habitat}{Clasificación de tipo de habitat.}
#'   \item{cod.arb}{Un código que combina a las siguientes columnas: 
#'   num.arb-bosque-habitat}
#'   \item{edad}{Edad, en años.}
#'   \item{dap}{Diámetro a la altura del pecho, en cm. Note que los 
#'   decimales es debido a 
#'     que esta variable originalmente fue medida en pulgadas.}
#'   \item{atot}{Altura total, in m. Note que los decimales es debido 
#'   a que esta variable
#'    fue originalmente medida en pies.}
#'  }
#' @source 
#' Originalmente los datos fueron cedidos por el Dr Albert Stage (Q.E.P.D) 
#' al Profesor Andrew Robinson (University
#'  of Idaho, USA), quien los usaba para explicar el ajuste de modelos 
#'  estadísticos. El Dr Christian Salas-Eljatib fue un estudiante de postgrado 
#'  en estadística del Prof. Robinson en la Univ. of Idaho.  
#' @references
#' Stage AR. 1963. A mathematical approach to polymorphic site index curves for 
#'  Grand fir. Forest Science 9(2):167–180.
#' @examples
#' data(treegr2)    
#' head(treegr2) 
'treegr2'
#' Fertilization experiment data.  
#' @description
#' Data contains volume data at plot-level for a fertilization
#' experiment.  
#' @usage
#' data(fertiliza)
#' @format Contains two variables, as follows:
#' \describe{
#'   \item{treat}{Treatment level.}
#'   \item{volume}{Plot-level volume, in m\eqn{^{3}}{^3}.}
#'  }
#' @source 
#' The data were provided by Dr Christian Salas-Eljatib (Universidad de Chile,
#'  Santiago, Chile).  
#' @references
#' not yet 
#' @examples
#' data(fertiliza)
#' head(fertiliza)
#' class(fertiliza$treat)
#' unique(fertiliza$treat)
#' means.g <- tapply(fertiliza$volume,fertiliza$treat,mean);means.g
#' sds.g <- tapply(fertiliza$volume,fertiliza$treat,sd);sds.g
#' ns.g <- tapply(fertiliza$volume,fertiliza$treat,length);ns.g
'fertiliza'
#' Experimento de fertilización
#' @description
#' Datos a nivel de parcela de un experimento de fertilización con tratamientos
#' y replicas.  
#' @usage
#' data(fertiliza2)
#' @format Contiene tres columnas como sigue:
#' \describe{
#'   \item{tmo}{Tratamiento.Factor medido en diferentes niveles.}
#'   \item{vol}{Volumen de madera en la parcela experimental, 
#'   en m\eqn{^{3}}{^3}.}
#'  }
#' @source 
#' Datos cedidos por el Prof. Christian Salas.  
#' @references
#' not yet 
#' @examples
#' data(fertiliza2)
#' head(fertiliza2)
#' class(fertiliza2$tmo)
#' unique(fertiliza2$tmo)
#' media.g <- tapply(fertiliza2$vol,fertiliza2$tmo,mean);media.g
#' desvst.g <- tapply(fertiliza2$vol,fertiliza2$tmo,sd);desvst.g
#' n.g <- tapply(fertiliza2$vol,fertiliza2$tmo,length);n.g
#' 
'fertiliza2'
#' Data on fish growth.  
#' @description
#' Data on samples of small mouth bass collected in West Bearskin Lake, 
#' Minnesota, in 1991. The
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
#' The data were obtained from the \eqn{alr4} library of R.  
#' @references
#' Weisberg S. 2014. Applied Linear Regression. 4th edition. Hoboken NJ: Wiley 
#' @examples
#' data(fishgrowth)    
#' head(fishgrowth) 
'fishgrowth'
#' Crecimiento de peces
#' @description
#' Data on samples of small mouth bass collected in West Bearskin Lake,
#'  Minnesota, in 1991. The
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
#' Datos obtenidos desde el paquete \eqn{alr4} de R.  
#' @references
#' Weisberg S. 2014. Applied Linear Regression. 4th edition. Hoboken NJ: Wiley 
#' @examples
#' data(fishgrowth2)    
#' head(fishgrowth2) 
'fishgrowth2'
#' Tree-level variables of several sample plots of invasive Pinus spp in Chile.  
#' @description
#' These are tree-lavel measurement data from Pinus spp invasion in 
#' *Araucaria-Nothofagus* forests in the Malalcahuello National Reserve in
#'  La Araucania region in southhern Chile, measured in 2012. 
#' There are 26 plots and plot size is 100 m\eqn{^{2}}{^2}.
#' @usage
#' data(pinusSpp)
#' @format Contains eight variables, as follows:
#' \describe{
#' \item{plot.id}{Plot sample ID.}
#' \item{plot.size}{Plot size, en m\eqn{^{2}}{^2}.}
#' \item{lat.s}{Decimal coordinate of S latitude.}
#' \item{long.w}{Decimal coordinate of W longitude.}
#' \item{indv.id}{Tree identificator number in each plot. Same indv/id for 
#' multi-stem trees.}
#' \item{stem.id}{Stem identificator number in each plot.}
#' \item{spp}{Specie.}
#' \item{dbh}{Diameter at breast-height, in cm.}
#' \item{toth}{Total height, in m.}
#' \item{hcb}{Height to crown base, in m.}
#' \item{crown.lenght}{Crown lenght, in m.}
#' }
#' @source 
#'  The data are provided courtesy of Drs Anibal Pauchard and Rafael García at
#'   the Laboratorio de Invasiones
#'  Biológicas, Universidad de Concepcion (Concepción, Chile).
#' @references
#'  Cobar-Carranza A, Garcia R, Pauchard A, Pena E. 2014. Effect of 
#'  Pinus contorta invasion on forest fuel properties and
#'  its potential implications on the fire regime of Araucaria araucana and 
#'  Nothofagus antarctica forests. Biological Invasions. 16(11): 2273-2291. 
#'  \doi{10.1007/s10530-014-0663-8}
#
#' @examples
#' data(pinusSpp)    
#' head(pinusSpp) 
#' length(unique(pinusSpp$plot.id)) 
#' boxplot(dbh~plot.id, data=pinusSpp) 
'pinusSpp'
#' Variables a nivel de árbol en parcelas de muestreo de Pinus spp en Chile.  
#' @description
#' Mediciones a nivel de árbol para estudiar la invasion de Pinus spp en 
#' bosques de Araucaria-Nothofagus en 
#' la Reserva Nacional Malalcahuello en la region de la Araucania en el sur de 
#' Chile. 
#' Hay 26 parcelas, y la superficie de cada una es de 100 m\eqn{^{2}}{^2}.
#' @usage
#' data(pinusSpp2)
#' @format Los datos contienen ocho columnas que se detallan a continuacion:
#' \describe{
#' \item{parcela}{Número de la parcela.}
#' \item{sup.parcela}{Superficie de la parcela, en m\eqn{^{2}}{^2}.}
#' \item{lat.s}{Decimal coordinate of S latitude.}
#' \item{long.w}{Decimal coordinate of W longitude.}
#' \item{indv.id}{Identificador del árbol en la parcelaeach plot. Same indv/id 
#' for multi-stem trees.}
#' \item{fuste.id}{Identificador del fuste.}
#' \item{espe}{Especie.}
#' \item{dap}{Diámetro a la altura del pecho, en cm.}
#' \item{atot}{Altura total, en m.}
#' \item{hcc}{Altura comienzo de copa, en m.}
#' \item{largo.copa}{Largo de copa, en m.}
#' }
#' @source 
#'  Los datos fueron cedidos por los Drs. Anibal Pauchard y Rafael García del 
#'  Laboratorio de Invasiones
#'  Biológicas, Universidad de Concepción (Concepción, Chile).
#' @references
#'  Cobar-Carranza A, Garcia R, Pauchard A & Pena E. 2014. Effect of 
#'   Pinus contorta invasion on forest fuel properties and
#'   its potential implications on the fire regime of *Araucaria araucana* 
#'   and Nothofagus antarctica forests. Biological Invasions. 16(11):2273-2291.
#'   \doi{10.1007/s10530-014-0663-8}
#
#' @examples
#' data(pinusSpp2)    
#' head(pinusSpp2) 
#' length(unique(pinusSpp2$parce)) 
#' boxplot(dap~parce, data=pinusSpp2) 
'pinusSpp2'
#' Contains spatial location of Pinus contorta trees in sample plots.  
#' @description
#' These are tree-level measurement data, with cartesian location of each tree, 
#' from Pinus contorta invasion in 
#' Patagonian steppe in Coyhaique in southhern Chile, measured in 2011. 
#' There are 3 plots, each
#'  of 10.000 m\eqn{^{2}}{^2}.   
#' @usage
#' data(pcontorta)
#' @format Contains eight variables, as follows:
#' \describe{
#'   \item{plot.id}{Plot sample ID.}
#'   \item{tree.id}{Tree identificator number in each plot. Same indv/id for 
#'   multi-stem trees.}
#' \item{y.coord}{coordinate of S latitude.}
#' \item{x.coord}{coordinate of W longitude.}
#' \item{substrate}{Ground cover in which each pine grow. Bare soil, 
#' Festuca pallescens, Baccharis magellanica, 
#' Oreopulus glacialis, Acaena integerrima and others species.}
#' \item{drc}{Diameter at the root collar on trees, in mm.}
#' \item{h}{Height of trees, in cm.}
#' \item{canopy.area}{Proyection of canopy area of each tree, 
#' in square meters.}
#' }
#' @source 
#'  The data are provided courtesy of Drs Anibal Pauchard and Rafael Garcia at 
#'  the Laboratorio de Invasiones Biologicas,
#'  Universidad de Concepción (Concepción, Chile).
#' @references
#'  Pauchard A, Escudero A, García RA, de la Cruz M, Langdon B, Cavieres LA,
#'   Esquivel J. 2016.
#'  Pine invasions in treeless environments: dispersal overruns microsite
#'   heterogeneity. 
#'  Ecology and Evolution. 6(2): 447-459. 
#' @examples
#' data(pcontorta)    
#' head(pcontorta)
#' unique(pcontorta$plot.id) 
'pcontorta'
#' Ubicación espacial de árboles de Pinus contorta en parcela de muestreo  
#' @description
#' Mediciones a nivel de árbol, con la ubicación cartesian de cada árbol de 
#' Pinus contorta, en parcelas
#' de muestreo para estudio de invasion en la estepa Patagonica en Coyhaique 
#' en el sur de Chile. Hay tres parcelas, cada
#'  una de 10.000 m\eqn{^{2}}{^2}.   
#' @usage
#' data(pcontorta2)
#' @format Contiene ocho variables, como siguen:
#' \describe{
#'   \item{parcela}{Parcela.}
#'   \item{arbol}{Número de árbol en cada parcela. Mismo árbol/id para árboles
#'    multifustales.}
#' \item{coord.y}{coordinada de latitud W.}
#' \item{coord.x}{coordinada de longitud W.}
#' \item{substrato}{Cobertura del suelo donde cada pino crece. Bare soil, 
#' Festuca pallescens, Baccharis magellanica, 
#' Oreopulus glacialis, Acaena integerrima and others species.}
#' \item{h}{Height of trees, in cm.}
#' \item{diam.cuello}{Diámetro del cuello, en mm.}
#' \item{area.copa}{Area de copa, en m\eqn{^{2}}{^2}.}
#' }
#' @source 
#'  Los datos fueron cedidos por los Drs. Anibal Pauchard y Rafael Garcia del 
#'  Laboratorio de Invasiones Biologicas,
#'  Universidad de Concepcion (Chile).
#' @references
#'  Pauchard A, Escudero A, Garcia RA, de la Cruz M, Langdon B, Cavieres LA, 
#'  Esquivel J. 2016.
#'  Pine invasions in treeless environments: dispersal overruns microsite
#'   heterogeneity. 
#'  Ecology and Evolution. 6(2): 447-459. \doi{10.1002/ece3.1877}
#' @examples
#' data(pcontorta2)    
#' head(pcontorta2)
#' unique(pcontorta2$plot.id) 
'pcontorta2'
#' Airquality data in New York city.
#' @description
#' Daily air quality measurements in New York, May to September 1973.   
#' @usage
#' data(airquality)
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
#' The data were obtained from the library \eqn{datasets}.  
#' @references
#' Chambers J, Cleveland W, Kleiner B, Tukey P. 1983. Graphical Methods for
#'  Data Analysis. Belmont. CA: Wadsworth.
#' @examples
#' data(airquality)    
#' head(airquality) 
'airquality'
#' Calidad del aire en la ciudad de Nueva York.  
#' @description
#' Calidad del aire diario medido en New York, de Mayo a Septiembre de 1973.   
#' @usage
#' data(airquality2)
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
#' Los datos fueron obtenidos desde la librería 'datasets'.  
#' @references
#' Chambers J, Cleveland W, Kleiner B, Tukey P. 1983. Graphical Methods for
#'  Data Analysis. Belmont. CA: Wadsworth.
#' @examples
#' data(airquality2)    
#' head(airquality2) 
'airquality2'
#' Presidential election data of Florida (USA) in 2000.  
#' @description
#' County-by-county vote for president in Florida in 2000 for Bush, Gore 
#' and Buchanan.  
#' @usage
#' data(election)
#' @format Contains three variables, as follows:
#' \describe{
#'   \item{gore}{Vote for Gore.}
#'   \item{bush}{Vote for Bush.}
#' \item{buchanan}{Vote for Pat Buchanan.}
#'  }
#' @source 
#' The data were obtained from the \eqn{alr4} library.  
#' @references
#' Weisberg S. 2014. Applied Linear Regression. 4th edition. Hoboken NJ: Wiley 
#' @examples
#' data(election)    
#' head(election) 
'election'
#' Elección presidencial en el estado de Florida (USA) en el 2000.  
#' @description
#' Conteo de votos a nivel de condado en el estado de Florida, año 2000.  
#' @usage
#' data(election2)
#' @format Contiene las siguientes tres columnas:
#' \describe{
#'   \item{gore}{Votos para Gore. Número de votos para Al Gore.}
#'   \item{bush}{Votos para Bush. Número de votos para George W. Bush.}
#' \item{buchanan}{Votos para Buchaman. Número de votos para Pat Buchanan.}
#'  }
#' @source 
#' Los datos se obtuvieron desde el paquete \eqn{alr4} de R.  
#' @references
#' Weisberg S. 2014. Applied Linear Regression. 4th edition. Hoboken NJ: Wiley 
#' @examples
#' data(election2)    
#' head(election2) 
'election2'
#' Tree height-diameter data from Idaho (USA)  
#' @description
#' These data are forest inventory measures from the Upper Flat Creek stand 
#' of the University of Idaho Experimental Forest, dated 1991.   
#' @usage
#' data(idahohd)
#' @format Contains five variables, as follows:
#' \describe{
#'   \item{plot}{Plot number.}
#'   \item{tree}{Tree within plot.}
#' \item{species}{A factor with levels DF = Douglas-fir, GF = Grand fir, 
#' SF = Subalpine fir, WL = Western larch,
#'                 WC = Western red cedar, WP = White pine.}
#' \item{dbh}{Diameter 137 cm perpendicular to the bole, cm.}
#' \item{height}{Height of the tree, in m.}
#'  }
#' @source 
#' The data were assembled from the 'ufc' dataframe from the \eqn{alr4} library.  
#' @references
#' Weisberg S. 2014. Applied Linear Regression. 4th edition. New York: Wiley.
#' @examples
#' data(idahohd)    
#' head(idahohd) 
#' plot(height~dbh, data=idahohd)
'idahohd'
#' Altura-diámetro de árboles en el estado de Idaho (USA)  
#' @description
#' Estos datos provienen de un muestreo en el bosque experimental de la 
#'  University of Idaho, en Upper Flat Creek, Idaho, USA. Medido en 1991.   
#' @usage
#' data(idahohd2)
#' @format Contiene cinco variables detalladas a continuación:
#' \describe{
#'   \item{parce}{Número de la parcela de muestreo.}
#'   \item{arbol}{Número del árbol dentro de la parcela.}
#' \item{spp}{Especie del árbol, una variable factor  con niveles 
#' DF = Douglas-fir, GF = Grand fir, SF = Subalpine fir, WL = Western larch,
#'                 WC = Western red cedar, WP = White pine.}
#' \item{dap}{Diámetro del fuste a los 1.3 m sobre el suelo, en cm.}
#' \item{atot}{Altura del árbol, en m.}
#'  }
#' @source 
#' Los datos fueron obtenidos desde la dataframe 'ufc' de la librería \eqn{alr4}.  
#' @references
#' Weisberg S. 2014. Applied Linear Regression. 4th edition. New York: Wiley.
#' @examples
#' data(idahohd2)    
#' head(idahohd2)
#' plot(atot~dap, data=idahohd2)
'idahohd2'
#' Chicken growth data.  
#' @description
#' The body weights of the chicks were measured at birth and every second day 
#' thereafter until day 20. They were 
#' also measured on day 21. There were four groups on chicks on different
#'  protein diets.  
#' @usage
#' data(chicksw)
#' @format Contains four variables, as follows:
#' \describe{
#' \item{chick}{An ordered factor with levels different giving a unique 
#' identifier for the chick. The ordering of the
#'             levels groups chicks on the same diet together and orders 
#'             them according to their final weight 
#'             (lightest to heaviest) within diet.}
#' \item{diet}{A factor with levels 1,2,3 and 4 indicating which experimental 
#' diet the chick received.}
#'   \item{time}{A numeric vector giving the number of days since birth when 
#'   the measurement was made.}
#'   \item{weight}{A numeric vector giving the body weight of the chick (gm).}
#'  }
#' @source 
#' The data were obtained from the \eqn{alr4} library.  
#' @references
#' Crowder M, Hand D. 1990. Analysis of Repeated Measures. Chapman and Hall
#' @examples
#' data(chicksw)    
#' head(chicksw) 
'chicksw'
#' Crecimiento de pollos.  
#' @description
#' El peso de pollos fueron medidos al momento de nacer y cada dia por medio 
#' hasta el dia 20. 
#' Ellos también fueron medidos el día 21. Hubo cuatro grupos de pollos en
#'  diferentes dietas de proteinas.  
#' @usage
#' data(chicksw2)
#' @format Contine cuatro variables, como sigue:
#' \describe{
#' \item{pollo}{Un identificador único para cada pollo. La numeracion esta 
#' ordenado segun el peso final dentro de cada dieta.}
#' \item{dieta}{Un factor con cuatro nivels: 1,2,3 y 4 indicando que dieta 
#' recibió el pollo.}
#'   \item{tiempo}{Número de días desde el nacimiento.}
#'   \item{peso}{Peso del pollo (gm).}
#'  }
#' @source 
#' Los datos fueron obtenidos desde la librería \eqn{alr4}.  
#' @references
#' Crowder M, Hand D. 1990. Analysis of Repeated Measures. Chapman and Hall
#' @examples
#' data(chicksw2)    
#' head(chicksw2) 
'chicksw2'
#' Chicken growth data -- kept it only for the book.  
#' @description
#' These data are the same as in the 'chicksw' dataframe, which
#' is the one that should be preferred. Nonetheless, I kept the name of this
#' dataframe (i.e., ChickWeight) to be able for using in the book of
#'  Salas-Eljatib (2021).
#' Further details of the dataframe can be found by typing "?chicksw"
#' @usage
#' data(ChickWeight)
#' @format Contains four variables, as follows:
#' \describe{
#'   \item{weight}{A numeric vector giving the body weight of the chick (gm).}
#'   \item{Time}{A numeric vector giving the number of days since birth when 
#'   the measurement was made.}
#' \item{Chick}{An ordered factor with levels different giving a unique 
#' identifier for the chick. The ordering of the
#'             levels groups chicks on the same diet together and orders
#'              them according to their final weight 
#'             (lightest to heaviest) within diet.}
#' \item{Diet}{A factor with levels 1,2,3 and 4 indicating which experimental 
#' diet the chick received.}
#'  }
#' @source 
#'  See related-details on this, for the dataframe "chicksw".  
#' @references
#' - Salas-Eljatib, C. 2021. Análisis de datos con el programa estadístico R:
#'  una introducción
#'  aplicada. Ediciones Universidad Mayor, Santiago, Chile. 170 p.
#'   \url{https://eljatib.com/rlibro}
#' @examples
#' data(ChickWeight)    
#' head(ChickWeight) 
'ChickWeight'
#' Sludge data are at different cities, with a value of concentration zinc.  
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
#' The data were provided from.. still remember.  
#' @references
#' not yet 
#' @examples
#' data(sludge2)    
#' table(sludge$city,sludge$rate) 
#' levels(sludge$city)
#' tapply(sludge$zinc, list(sludge$city,sludge$rate), mean)
'sludge'
#' Sludge data are at different cities, with a value of concentration zinc.  
#' @description
#' Datos de contenido de Zinc en el tratamiento de lodos
#' @usage
#' data(sludge2)
#' @format Contiene las siguinetes cuatro variables:
#' \describe{
#'   \item{ciudad}{Nombre de la ciudad.}
#'   \item{tasa}{Tasa de concentracion de lodo.}
#' \item{zinc}{Concentracion de Zinc, en ppm.}
#' \item{trt.comb}{Identificador de la combinacion de niveles entre los 
#' factores ciudad y tasa.}
#'  }
#' @source 
#' The data were provided from.. still remember.  
#' @references
#' not yet 
#' @examples
#' data(sludge2)    
#' table(sludge2$ciudad,sludge2$tasa) 
#' levels(sludge2$ciudad)
#' tapply(sludge2$zinc, list(sludge2$ciudad,sludge2$tasa), mean)
'sludge2'
#' Annual basal area increment for four tree species.  
#' @description
#' The dataset contains 157 observations of the last ten years in 6-8 adult 
#' trees of different species at three
#'  elevations of altitudinal gradients sampled in four locations in 
#'  Chile and two in Spain.
#' @usage
#' data(baitreeline)
#' @format Contains seven columns, as follows:
#' \describe{
#'   \item{climate}{Climate of each location, mediterranean and temperate.}
#'   \item{site}{Name of Location of study (termmas:Termas de Chillan , 
#'   antillanca:Antillanca area within Puyehue National Park,
#'               castillo:Cerro Castillo Natural Reserve, farellones:Farellones
#'                in Central Chile, 
#'               pyrenees: Sierra de Cutas area in Spanish Central Pyrenees,
#'               sierra:Sierra Nevada).}
#' \item{species}{name species of study (lenga: Nothofagus pumilio, frangel:
#'  Kageneckia angustifolia,
#'                uncinata: Pinus uncinata, sylvestris: Pinus sylvestris).}
#' \item{elevation}{Type of elevation. "Treeline", intermediate named as 
#' "inter", and closed or
#'       montane forest named as low.}
#' \item{tree}{Id for tree.}
#' \item{bai}{Value of annual basal area increment.}
#' \item{mean.bai}{Mean of annual basal area increment.}
#'  }
#' @source 
#' The data were obtained from the DRYAD repository
#'  at \doi{10.5061/dryad.ks97h}.  
#' @references
#' Piper F, Vinegla B, Linares J, Camarero J, Cavieres L, Fajardo A. 2016.
#'  Mediterranean and temperate treelines are 
#' controlled by different environmental drivers. Journal of of Ecology. 
#' 104: 691-702. 
#' @examples
#' data(baitreeline)    
#' head(baitreeline) 
'baitreeline'
#' Incremento anual en area basal de cuatro especies arboreas.  
#' @description
#' Este set de datps contiene 157 observaciones, de los ultimos 10 años
#'  en 6-8 árboles adultos de cuatro especies 
#' en un gradiente altitudinal. Las muestras se distribuyeron en cuatro
#'  localidades o sitios de Chile y dos en España.
#' @usage
#' data(baitreeline2)
#' @format Contains seven columns, as follows:
#' \describe{
#'   \item{clima}{Climate of each location, mediterranean and temperate.}
#'   \item{sitio}{Name of Location of study (termmas:Termas de Chillan, 
#'   antillanca:Antillanca area within Puyehue National Park,
#'               castillo:Cerro Castillo Natural Reserve, farellones:Farellones 
#'               in Central Chile, 
#'               pyrenees: Sierra de Cutas area in Spanish Central Pyrenees,
#'               sierra:Sierra Nevada).}
#' \item{especie}{name species of study (lenga: Nothofagus pumilio, frangel: 
#' Kageneckia angustifolia,
#'                uncinata: Pinus uncinata, sylvestris: Pinus sylvestris).}
#' \item{tipo.altitud}{Type of elevation. "Treeline", intermediate named as 
#' "inter", and closed or
#'       montane forest named as low.}
#' \item{arbol}{Id for tree.}
#' \item{bai}{Value of annual basal area increment.}
#' \item{bai.medio}{Mean of annual basal area increment.}
#'  }
#' @source 
#' The data were obtained from the DRYAD repository
#'  at \doi{10.5061/dryad.ks97h}.  
#' @references
#' Piper F, Vinegla B, Linares J, Camarero J, Cavieres L, Fajardo A. 2016. 
#' Mediterranean and temperate treelines are 
#' controlled by different environmental drivers. Journal of Ecology
#'  104: 691-702. 
#' @examples
#' data(baitreeline2)    
#' head(baitreeline2) 
'baitreeline2'
#' Carbohydrates concentrations of tree species.  
#' @description
#' Dataset contains 863 observations, about of  total soluble carbohydrate, 
#' starch, and non structural carbohydrates 
#' concentrations per mass unit and per volume unit, in three tissues in early
#'  summer and early autumn 6-8 adult trees
#' of different species at three elevations of altitudinal gradients sampled 
#' in four locations of Chile 
#' and Spain.
#' @usage
#' data(carbohtrees)
#' @format Contains 16 variables, as follows:
#' \describe{
#'   \item{climate}{Climate of each location, mediterranean and temperate.}
#'   \item{site}{Name of Location of study (termas:Termas de Chillan, 
#'   antillanca:Antillanca area within Puyehue National Park,
#'               castillo:Cerro Castillo Natural Reserve, farellones:Farellones
#'                in Central Chile, 
#'               pyrenees: Sierra de Cutas area in Spanish Central Pyrenees,
#'               sierra:Sierra Nevada).}
#' \item{species}{name species of study (lenga: Nothofagus pumilio, frangel: 
#' Kageneckia angustifolia,
#'                uncinata: Pinus uncinata, sylvestris: Pinus sylvestris).}
#' \item{tissue}{Type of tissue, new developing twings, stem sapwood and 
#' branches.}
#' \item{time}{Meauserement season (spring or autumn).}
#' \item{elevation}{Type of elevation. "Treeline", intermediate named as "mid",
#'  and closed or
#'       montane forest named as "low".}
#' \item{tree}{Id for tree.}
#' \item{tree.site}{Id site for each location of study.}
#' \item{tss}{Value of concentrations soluble carbohydrate per mass unit.}
#' \item{st}{Value of concentrations starch per mass unit.}
#' \item{nsc}{Value of concentrations non structural carbohydrates per mass 
#' unit.}
#' \item{tss.nsc}{.}
#' \item{wd}{It might be 'wood density', but not sure.}
#' \item{tss.mv}{Value of concentrations soluble carbohydrate per volume unit.}
#' \item{st.mv}{Value of concentrations starch per volume unit.}
#' \item{nsc.mv}{Value of concentrations non structural carbohydrates per 
#' volume unit.}
#'  }
#' @source 
#' The data were obtained from the DRYAD repository 
#' at \doi{10.5061/dryad.ks97h}.  
#' @references
#' Piper F, Vinegla B, Linares J, Camarero J, Cavieres L, Fajardo A. 2016. 
#' Mediterranean and temperate treelines are controlled by different 
#' environmental drivers. Journal of Ecology 104: 691-702.  
#' \doi{10.1111/1365-2745.12555}
#' @examples
#' data(carbohtrees)    
#' head(carbohtrees) 
'carbohtrees'
#' Concentración de carbohidratos de especies arbóreas  
#' @description
#' Los datos contienen 863 observaciones, sobre carbohidratos totales solubles, 
#' almidon, y carbohidratos no-estructurales 
#'  por unidad de masa y por unidad de volumen, en tres tejidos obtenidos al
#'   comienzo del verano y al comienzo del otoño. Lo
#'  anterior fue medido entre 6-8 árboles adultos de diferentes especies en un
#'   gradiente altitudinal, muestreados en
#'  cuatro sitios en Chile y España.
#' @usage
#' data(carbohtrees2)
#' @format Hay 16 variables disponibles:
#' \describe{
#'   \item{clima}{Tipo de clima de cada sitio: mediterraneo o temperado.}
#'   \item{sitio}{Nombre del sitio de estudio, como sigue: "termas" (Termas de
#'    Chillán), "antillanca" (sector
#'   Antillanca dentro del Parque Nacional), "castillo" (Reserva Nacional Cerro
#'    Castillo), "farellones" (Farellones, a 20 Kms de Santiago,
#'   en Chile), "pyrenees" (Sierra de Cutas area in Spanish Central Pyrenees), 
#'   "sierra" (Sierra Nevada).}
#' \item{especie}{name species of study (lenga: Nothofagus pumilio, frangel:
#'  Kageneckia angustifolia,
#'                uncinata: Pinus uncinata, sylvestris: Pinus sylvestris).}
#' \item{tejido}{Type of tissue, new developing twings, stem sapwood and 
#' branches.}
#' \item{temporada}{Meauserement season (spring or autumn).}
#' \item{altitud}{Type of elevation. "Treeline", intermediate named as "mid", 
#' and closed or
#'       montane forest named as "low".}
#' \item{arbol}{Id for tree.}
#' \item{arb.sitio}{Id site for each location of study.}
#' \item{cts}{Concentración de carbohidratos solubles totales por unidad
#'  de masa.}
#' \item{almidon}{Concentración de almidon por unidad de masa.}
#' \item{cne}{Concentración de carbohidratos no-estructurales por unidad
#'  de masa.}
#' \item{cts.cne}{División entre cts y cne.}
#' \item{dmade}{It might be 'wood density', but not sure.}
#' \item{tss.mv}{Value of concentrations soluble carbohydrate per volume unit.}
#' \item{st.mv}{Value of concentrations starch per volume unit.}
#' \item{nsc.mv}{Value of concentrations non structural carbohydrates per 
#' volume unit.}
#'  }
#' @source 
#' Los datos fueron obtenidos desde el repositorio
#'  DRYAD en \doi{10.5061/dryad.ks97h}.  
#' @references
#' Piper F, Vinegla B, Linares J, Camarero J, Cavieres L, Fajardo A. 2016. 
#' Mediterranean and temperate treelines are controlled by different 
#' environmental drivers. Journal of Ecology 104:691-702.  
#' \doi{10.1111/1365-2745.12555}
#' @examples
#' data(carbohtrees2)    
#' head(carbohtrees2) 
'carbohtrees2'
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
#' - Bannister JR, Vidal OJ, Teneb E, Sandoval V. 2012. Latitudinal 
#' patterns
#'  and regionalization of plant diversity along a 4270‐km gradient 
#'  in continental
#'   Chile. Austral Ecology 37(4):500-509. 
#'   \doi{10.1111/j.1442-9993.2011.02312.x}
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
#' Datos cedidos por el  Dr Jan Bannister del Instituto
#'  Forestal (Chiloe, Chile).  
#' @references
#' - Bannister JR, Vidal OJ, Teneb E, Sandoval V. 2012. Latitudinal patterns
#'  and regionalization of plant diversity along a 4270‐km gradient 
#'  in continental Chile. Austral Ecology 37(4):500-509. 
#'   \doi{10.1111/j.1442-9993.2011.02312.x}
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
#' \item{MT}{Microtopography. 1 plane, 2 convex, 3 concave, 4 mixed
#'  (convex and concave) in the regeneration plot.}
#' \item{S}{Ground-layer vascular species richness in the regeneration plot..}
#' \item{LLES}{Long-lived early-seral tree species (N. dombeyi , N. alpina , 
#' Nothofagus pumilio ).}
#' \item{SLES}{Short-lived early-seral plants (Ribes spp. and Fuchsia sp).}
#' \item{LLLS}{Long-lived late-seral tree species (L. philippiana and 
#' Dasyphyllum diacantaoides ).}
#' \item{log.bam}{Logarithm of the cover of bamboo (\%) in the regeneration 
#' plot.}
#'  }
#' @source 
#' The data were obtained from the DRYAD repository
#'  at \doi{10.5061/dryad.3q977} 
#' @references
#' Soto D, Puettmann K.2018. Topsoil removal through scarification improves 
#' natural regeneration
#' in high-graded Nothofagus old-growth forests.
#'  Journal Applied Ecology 55: 967- 976.  
#' @examples
#' data(regNothofagus)    
#' head(regNothofagus) 
'regNothofagus'
#' Contains information of demography of species.  
#' @description
#' Dataset contains 61 observations about life histories values for each 
#' species and site,
#'  as obtained from the parameterization carried out in studies that
#'   used the model SORTIE   
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
#'  - Ameztegui A, Paquette A, Shipley B, Heym M, Messier C, Gravel D. 2016. 
#'  Shade tolerance and 
#'  the functional trait: demography relationship in temperate and boreal 
#'  forests. Functional Ecology 31: 821-830. 
#' @examples
#' data(demograph)    
#' head(demograph) 
'demograph'
#' Contains information of functional traits of species.
#' @description
#' Dataset contains 48 observations about about functional trait values 
#' for each of the 48 study species, 
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
#'  - Ameztegui A, Paquette A, Shipley B, Heym M, Messier C, Gravel D. 2016. 
#'  Shade tolerance and the functional trait: demography relationship 
#'  in temperate and boreal forests. Functional Ecology 
#'  31: 821-830. 
#' @examples
#' data(sppTraits)    
#' head(sppTraits) 
'sppTraits'
#' Camera trap data on mammals in Ruaha National Park, southern Tanzania.
#' @description
#' Dataset contains 14604 observations and sampling was carried out for 
#' two months during the
#' dry season of 2013 and two months during the wet season of 2014. Each 
#' camera station is associated
#' with a randomly placed camera and a trail-based camer, with the aim of 
#' comparing communities 
#' resulting from the two camera trap placement strategies. 
#' @usage
#' data(cameratrap)
#' @format Contains 6 variables, as follows:
#' \describe{
#'   \item{reference}{Number of observation od datasets.}
#'   \item{placement}{Type of "placement" placed in each station (random or
#'    trail).}
#' \item{season}{Season where were made the samplings.}
#' \item{station}{Station where were collected the data.}
#' \item{specie}{Name of specie medium to large terrestrial mammals.}
#' \item{date.time}{The date and time of each photographic event is 
#' also given.}
#'  }
#' @source 
#' The data were provided by Dr Jeremy Cusack.  
#' @references
#'  - Cusack J, Dickman A, Rowcliffe M, Carbone C, Macdonald D, 
#'  Coulson T. 2016. Random versus
#'   game trail-based camera trap placement strategy for monitoring terrestrial
#'    mammal communities. PLoS ONE 10(5): e0126373.
#' @examples
#' data(cameratrap)    
#' head(cameratrap) 
'cameratrap'
#' Camaras trampa de mamiferos en el parque nacional Ruaha, en el sur de 
#' Tanzania
#' @description
#' Contains information of Camera trap data on medium to large terrestrial
#'  mammals 
#' collected at 54 camera stations in Ruaha National Park, southern Tanzania.
#' Dataset contains 14604 observations and sampling was carried out for two
#'  months during the
#' dry season of 2013 and two months during the wet season of 2014. Each 
#' camera station is associated
#' with a randomly placed camera and a trail-based camer, with the aim of 
#' comparing communities 
#' resulting from the two camera trap placement strategies. 
#' @usage
#' data(cameratrap2)
#' @format Contiene 6 variables, como sigue:
#' \describe{
#'   \item{referencia}{Number of observation od datasets.}
#'   \item{posicion}{Type of "placement" placed in each station (random or
#'    trail).}
#' \item{temporada}{Season where were made the samplings.}
#' \item{estacion}{Station where were collected the data.}
#' \item{especie}{Name of specie medium to large terrestrial mammals.}
#' \item{fecha.hora}{The date and time of each photographic event is also
#'  given.}
#'  }
#' @source 
#' Los datos fueron cedidos por el Dr Jeremy Cusack.  
#' @references
#'  - Cusack J, Dickman A, Rowcliffe M, Carbone C, Macdonald D, Coulson T. 
#'  2016. Random versus game trail-based camera trap placement strategy for 
#'  monitoring terrestrial mammal communities. PLoS ONE 10(5): e0126373.
#' @examples
#' data(cameratrap2)    
#' head(cameratrap2) 
'cameratrap2'
#' Contains information of abundance of plant species in the central-southern
#'  Andes of Chile.
#' @description
#' Abundance of plant species [50 total] (at parcel scale
#'  [100 m\eqn{^{2}}{^2}]) in burned Araucaria-Nothofagus 
#' forests with different levels of fire severity (ie, unburned = unburned, 
#' low_sev = low severity, 
#' mid_sev = medium severity , high_sev = high severity) in the China Muerta 
#' National Reserve, 
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
#' The data are provided courtesy of Dr Andres Fuentes-Ramirez at the 
#' Universidad de La Frontera (Temuco, Chile)   
#' @references
#'  - Fuentes-Ramirez A, Salas-Eljatib C, Gonzalez M, Urrutia J, Arroyo P, 
#'  Santibanez P. 2020. Initial response of understorey vegetation and tree
#'   regeneration to a mixed-severity fire in old-growth Araucaria-Nothofagus 
#'   forests. Applied Vegetation Science. 23:210-222.
#' @examples
#' data(sppAbundance)    
#' head(sppAbundance) 
'sppAbundance'
#' Tree volume for Pinus pinaster in the Baixo-Mino, Galicia, Spain. 
#'
#' @description
#' These are volume measurements data of sample trees in the Baixo-Mino 
#' region in Galicia, Spain.
#' @usage
#' data(pinaster)
#' @format Contains tree-level variables, as follows:
#' \describe{
#'   \item{stand}{stand number from the sample tree was selected.}
#' \item{si}{Site index of the stand.}
#' \item{tree.no}{tree number.}
#' \item{dbh}{Diameter at breast height, in cm.}
#' \item{toth}{Total height, in m.}
#'  \item{d4}{Upper-stem diameter at 4 m, in cm.}
#' \item{volwb}{Tree gross volume, in m\eqn{^{3}}{^3} with bark.}
#' \item{volwob}{Tree gross volume, in m\eqn{^{3}}{^3} without bark.}
#'  }
#' @source 
#' The data are provided courtesy of Dr Christian Salas-Eljatib at
#' the Universidad de Chile (Santiago, Chile).  
#' @references
#'  - Salas C, Nieto L, Irisarri A. 2005. Modelos de volumen para 
#'  Pinus pinaster Ait. en la comarca del Baixo Mino,
#'   Galicia, España. Quebracho 12: 11-22. 
#'   \url{https://eljatib.com/publication/2005-12-01_modelos_de_volumen_p/}
#' @examples
#' data(pinaster)    
#' head(pinaster) 
'pinaster'
#' Volumen individual de árboles de Pinus pinaster en Galicia, España. 
#'
#' @description
#' Variables de volumen y otras a nivel de árbol para una muestra de árboles
#'  de Pinus pinaster en la comarca del Baixo-Mino en Galicia, España.
#' @usage
#' data(pinaster2)
#' @format Contiene las siguientes variables a nivel de árbol:
#' \describe{
#'   \item{rodal}{Rodal desde donde el árbol fue muestreado}
#' \item{ind.sitio}{Indice de sitio del rodal, en m.}
#' \item{arbol}{Número del árbol.}
#' \item{dap}{Diámetro a la altura del pecho, en cm.}
#' \item{atot}{Altura total, en m.}
#'  \item{d4}{Diámetro fustal a los 4 m, en cm.}
#' \item{vtcc}{Volumen bruto total con corteza, en m\eqn{^{3}}{^3}.}
#' \item{vtsc}{Volumen bruto total sin corteza, en m\eqn{^{3}}{^3}.}
#'  }
#' @source 
#' Los datos fueron cedidos por el Dr Christian Salas (Chile).  
#' @references
#'  - Salas C, Nieto L, Irisarri A. 2005. Modelos de volumen para 
#'  Pinus pinaster Ait. en la comarca del Baixo Miño,
#'   Galicia, España. Quebracho 12: 11-22.
#'    \url{https://eljatib.com/publication/2005-12-01_modelos_de_volumen_p/}
#' @examples
#' data(pinaster2)    
#' head(pinaster2) 
'pinaster2'
#' Tree locations for a sample plot in the Llancahue experimental forest 
#'
#' @description
#' The Cartesian position, species, and diameter of trees within a plot 
#' were measured. The sample plot is  rectangular of 130 m by 70 m. 
#' Further details can be #' reviewed in the reference. 
#' @usage
#' data(llancahue)
#' @format Contains tree-level variables, as follows:
#' \describe{
#'   \item{tree.code}{Tree identificator}
#'   \item{spp}{species abreviation as follows: 
#'   AP=Aextocicon puncatatum, 
#' EC=Eucryphia cordifolia, 
#' GA=Gevuina avellana, 
#' LP=Laureliopsis philippiana, 
#' LS=Laurelia sempervirens, 
#' ND=Nothofagus dombeyi, Ot=Other,
#' PS=Podocarpus saligna}
#' \item{dbh}{diameter at breast height, in cm.}
#' \item{x.coord}{Cartesian position in the X-axis, in m.}
#' \item{y.coord}{Cartesian position in the Y-axis, in m.}
#'  }
#' @source 
#'  The data are provided courtesy of Prof. Daniel Soto at Universidad
#'  de Aysen (Coyhaique, Chile). 
#' @references
#' - Soto DP, Salas C, Donoso PJ, Uteau D. 2010. Heterogeneidad 
#' estructural y espacial de 
#' un bosque mixto dominado por Nothofagus dombeyi después de un
#'  disturbio parcial. 
#' Revista Chilena de Historia Natural 83(3): 335-347.
#' @examples
#' data(llancahue)    
#' head(llancahue) 
#' descstat(llancahue$dbh)
#' boxplot(dbh~spp, data=llancahue)
'llancahue'
#' Ubicación cartesiana de árboles en el bosque de Llancahue 
#'
#' @description
#' Corresponde a la posición cartesiana, especie, y diámetro de árboles 
#' en una parcela de muestreo
#'  en el bosque de Llancahue, cerca de Valdivia, Chile. La parcela 
#'  es rectangular con
#'  dimensiones de 130 m por 70 m. Mayores antecedentes aparecen en 
#'  las referencias. 
#' @usage
#' data(llancahue2)
#' @format Contains tree-level variables, as follows:
#' \describe{
#'  \item{arb.id}{Identificador del árbol.}
#' \item{spp}{Codificación de la especie como sigue: 
#' AP= Aextocicon puncatatum, 
#' EC=Eucryphia cordifolia, 
#' GA=Gevuina avellana, 
#' LP=Laureliopsis philippiana, 
#' LS=Laurelia sempervirens, 
#' ND=Nothofagus dombeyi, Ot=Other, 
#' PS=Podocarpus saligna.}
#' \item{dap}{Diámetro a la altura del pecho, en cm.}
#' \item{coord.x}{Posición cartesiana en el eje-X, en m.}
#' \item{coord.y}{Posición cartesiana en el eje-Y, en m.}
#'  }
#' @source 
#'  Los datos fueron cedidos por el Prof. Daniel Soto de Universidad
#'  de Aysen (Coyhaique, Chile). 
#' @references
#' - Soto DP, Salas C, Donoso PJ, Uteau D. 2010. Heterogeneidad estructural y 
#' espacial de 
#' un bosque mixto dominado por Nothofagus dombeyi después de un disturbio
#'  parcial. 
#' Revista Chilena de Historia Natural 83(3): 335-347.
#' @examples
#' data(llancahue2)    
#' head(llancahue2) 
#' descstat(llancahue2$dap)
#' boxplot(dap~spp, data=llancahue2)
'llancahue2'
#' Leaf measurements for Eucalyptus nitens trees in Tasmania, Australia. 
#'
#' @description
#' The length, width, and area of Eucalyptus nitens leaves were measured. 
#' @usage
#' data(eucaleaf)
#' @format Contains leaf-level variables, as follows:
#' \describe{
#'   \item{time}{Time factor, in two levels: early or Late.}
#' \item{tree}{Sample tree code identificator.}
#' \item{shoot}{Shoot description factor, in three levels.}
#' \item{l}{Length of the leaf, in mm.}
#' \item{w}{Width of the leaf, in mm.}
#' \item{la}{leaf area, in cm\eqn{^{2}}{^2}.}
#'  }
#' @source 
#' Although the original source of the measurements is the Dissertation 
#' of Dr Candy (1999), 
#'  the data file used here was courtesy of Prof. Timothy Gregoire at
#'  Yale University (New Haven, CT, USA). Furthermore, these data were used by
#'  Gregoire and Salas (2009).
#' @references
#' - Candy SG. 1999. Predictive models for integrated pest management of the
#' leaf beetle *Chrysophtharta bimaculata* in *Eucalyptus nitens* in Tasmania.
#'  Doctoral dissertation,
#'  University of Tasmania, Hobart, Australia. 
#' @references
#' - Gregoire TG, and Salas C. 2009. Ratio estimation with measurement
#' error in the auxiliary variate. Biometrics 65(2):590-598 
#' \doi{10.1111/j.1541-0420.2008.01110.x}
#' @examples
#' data(eucaleaf)    
#' head(eucaleaf) 
'eucaleaf'
#' Mediciones foliares para árboles de Eucalyptus nitens en Tasmania, Australia. 
#'
#' @description
#' Mediciones de largo, ancho y area de hojas de Eucalyptus nitens. 
#' @usage
#' data(eucaleaf2)
#' @format Contiene variables a nivel de hoja, como sigue:
#' \describe{
#' \item{tiempo}{Factor a dos niveles: Temprano o Tardío.}
#' \item{arbol}{Identificador del árbol muestra.}
#' \item{meristema}{Factor de la descripción del meristema, en tres niveles.}
#' \item{largo}{Largo de la hoja, en mm.}
#' \item{ancho}{Ancho de la hoja, en mm.}
#' \item{area}{Área foliar, en cm\eqn{^{2}}{^2}.}
#'  }
#' @source 
#' Aunque la fuente original de estas mediciones proviene de la tesis del
#'  Dr. Candy (1999), el archivo de datos fue cortesía del Prof. Timothy 
#'  Gregoire de Yale University (New Haven, CT, USA). Además, 
#'  estos datos fueron ocupados en el estudio de Gregoire y Salas (2009).
#' @references
#' - Candy SG. 1999. Predictive models for integrated pest management of the
#' leaf beetle Chrysophtharta bimaculata in Eucalyptus nitens in Tasmania. 
#' Doctoral dissertation, University of Tasmania, Hobart, Australia. 
#' @references
#' - Gregoire TG, and Salas C. 2009. Ratio estimation with measurement
#' error in the auxiliary variate. Biometrics 65(2):590-598 
#' \doi{10.1111/j.1541-0420.2008.01110.x}
#' @examples
#' data(eucaleaf2)    
#' head(eucaleaf2) 
'eucaleaf2'
#' Leaf measurements (all, n=744) for Eucalyptus nitens trees in 
#' Tasmania, Australia. 
#'
#' @description
#' The length, width, and area of Eucalyptus nitens leaves were measured
#'  for all the samples
#' of Candy (1999). 
#' @usage
#' data(eucaleafAll)
#' @format Contains leaf-level variables, as follows:
#' \describe{
#'   \item{time}{Time factor, in two levels: early or Late.}
#' \item{tree}{Sample tree code identificator.}
#' \item{shoot}{Shoot description factor, in three levels.}
#' \item{l}{Length of the leaf, in mm.}
#' \item{w}{Width of the leaf, in mm.}
#' \item{la}{leaf area, in cm\eqn{^{2}}{^2}.}
#'  }
#' @source 
#' Although the original source of the measurements is the Dissertation of 
#' Dr Candy (1999), 
#'  the data file used here was courtesy of Prof. Timothy Gregoire at
#'  Yale University (New Haven, CT, USA). Furthermore, these data were used by
#'  Gregoire and Salas (2009).
#' @references
#' - Candy SG. 1999. Predictive models for integrated pest management of the
#' leaf beetle Chrysophtharta bimaculata in Eucalyptus nitens in Tasmania.
#'  Doctoral dissertation,
#'  University of Tasmania, Hobart, Australia. 
#' @examples
#' data(eucaleafAll)    
#' head(eucaleafAll) 
'eucaleafAll'
#' Mediciones foliares (todas, n=744) para árboles de Eucalyptus nitens en
#'  Tasmania, Australia. 
#'
#' @description
#' Mediciones de largo, ancho y área de hojas de Eucalyptus nitens para toda
#'  la muestra de Candy (1999). 
#' @usage
#' data(eucaleafAll2)
#' @format Contiene variables a nivel de hoja, como sigue:
#' \describe{
#' \item{tiempo}{Factor a dos niveles: Temprano o Tardío}
#' \item{arbol}{Identificador del árbol muestra}
#' \item{meristema}{Factor de la descripción del meristema, en tres niveles.}
#' \item{largo}{Largo de la hoja, en mm}
#' \item{ancho}{Ancho de la hoja, en mm}
#' \item{area}{Área foliar, en cm\eqn{^{2}}{^2}}
#'  }
#' @source 
#' Aunque la fuente original de estas mediciones proviene de la tesis del Dr.
#'  Candy (1999), 
#'  el archivo de datos fue cortesía del Prof. Timothy Gregoire de
#'  Yale University (New Haven, CT, USA). 
#' @references
#' - Candy SG. 1999. Predictive models for integrated pest management of the
#' leaf beetle Chrysophtharta bimaculata in Eucalyptus nitens in Tasmania. 
#' Doctoral dissertation,
#'  University of Tasmania, Hobart, Australia. 
#' @examples
#' data(eucaleafAll2)    
#' head(eucaleafAll2) 
'eucaleafAll2'
#' Age and physical measurement data for wild bears (without missing values)
#'
#' @description
#' Wild bears were anesthetized, and their bodies were measured and weighed. 
#' One goal of the study
#'  was to make a table (or perhaps a set of tables) for people interested in
#'   estimating the weight of a
#'  bear based on other measurements. 
#' @usage
#' data(bearsdepu)
#' @format Individual-level variables, as follows:
#' \describe{
#'   \item{id}{Bear identificator.}
#' \item{age}{Age in total number of months.}
#' \item{month}{Month number within a given year.}
#' \item{sex}{Sex code: 1 =male, 2 = female.}
#' \item{headL}{Length of head, in cm.}
#' \item{headW}{Width of head, in cm.}
#' \item{neckG}{Girth of neck, in cm.}
#' \item{length}{Body length, in cm.}
#' \item{chestG}{Girth of chest, in cm.}
#' \item{weight}{Body weight, in kg.}
#' \item{obs}{Temporal observation number for bear.}
#' \item{name}{name given to bear}
#'  }
#' @source 
#' According to Prof. Timothy Gregoire at Yale University (New Haven, CT, USA),
#'  the
#'  data set was supplied by Gary Alt.
#' @references
#' Entertaining references are in Reader's Digest April, 1979, and Sports
#'  Afield September, 1981.
#' @examples
#' data(bearsdepu)    
#' head(bearsdepu)
#' table(bearsdepu$sex)
#' boxplot(headL~sex, data=bearsdepu) 
#' @import  
'bearsdepu'
#' Edad y características biométricas de osos salvajes (sin datos faltantes)
#'
#' @description
#' Los osos salvajes fueron anestesiados y sus cuerpos medidos. Uno de los
#'  objetivos del estudio fue hacer una 
#' tabla (o quizas un conjunto de tablas) para las personas interesadas en 
#' estimar el peso de un oso basandose en otras medidas.
#' Esta dataframe es igual que "bears" pero sin valores perdidos.
#' @usage
#' data(bearsdepu2)
#' @format Contiene variables de nivel individual, como se describen a 
#' continuacion:
#' \describe{
#'   \item{id}{Identificador del oso.}
#' \item{edad}{edad en meses.}
#' \item{mes}{Diámetro a la altura del pecho, en cm.}
#' \item{sexo}{1 = hombre, 2 = mujer.}
#' \item{cabezaL}{longitud de la cabeza, en cm.}
#' \item{cabezaA}{ancho de la cabeza, en cm.}
#' \item{cuelloP}{circunferencia del cuello, en cm.}
#' \item{largo}{longitud del cuerpo, en cm.}
#' \item{pechoG}{circunferencia del pecho, en cm.}
#' \item{peso}{peso corporal, en kg.}
#' \item{obs}{número de observación temporal para el oso.}
#' \item{nombre}{nombre dado al oso.}
#'  }
#' @source 
#' Segun el Prof. Timothy Gregoire de Yale University (New Haven, CT, USA), 
#' los datos fueron
#'  cedidos por Gary Alt. Minitab, Inc. La descripcion de los datos fue dada
#'   por él.
#' @references
#' Algunas referencias generales estan en el Reader's Digest de Abril, 1979,
#'  y Sports Afield de Septiembre, 1981.
#' @examples
#' data(bearsdepu2)    
#' head(bearsdepu2)
#' table(bearsdepu2$sexo)
#' boxplot(cabezaL~sexo, data=bearsdepu2) 
#' @import  
'bearsdepu2'
#' Age and physical measurement data for wild bears 
#'
#' @description
#' Wild bears were anesthetized, and their bodies were measured and weighed. 
#' One goal of the study
#'  was to make a table (or perhaps a set of tables) for people interested in
#'   estimating the weight of a
#'  bear based on other measurements. Notice that there are missing values 
#'  for some of the variables.
#' @usage
#' data(bears)
#' @format Contains individual-level variables, as follows:
#' \describe{
#'   \item{id}{Bear id}
#' \item{age}{Age in total number of months.}
#' \item{month}{Month number within a given year.}
#' \item{sex}{1 =male, 2 = female.}
#' \item{headL}{Length of head, in cm.}
#' \item{headW}{Width of head, in cm.}
#' \item{neckG}{Girth of neck, in cm.}
#' \item{length}{Body length, in cm.}
#' \item{chestG}{Girth of chest, in cm.}
#' \item{weight}{body weight, in kg.}
#' \item{obs}{Temporal observation number for bear.}
#' \item{name}{Name given to bear.}
#'  }
#' @source 
#' According to Prof. Timothy Gregoire at Yale University (New Haven, CT, USA), 
#' the
#'  data set was supplied by Gary Alt.
#' @references
#' Entertaining references are in Reader's Digest April, 1979, and Sports 
#' Afield September, 1981.
#' @examples
#' data(bears)    
#' head(bears) 
#' table(bears$sex)
#' boxplot(headL~sex, data=bears)
'bears'
#' Edad y características biométricas de osos salvajes 
#'
#' @description
#' Los osos salvajes fueron anestesiados y sus cuerpos medidos. Uno de los
#'  objetivos del estudio fue hacer una
#' tabla (o quizas un conjunto de tablas) para las personas interesadas en
#'  estimar el peso de un oso basandose en otras medidas. 
#' Observe que faltan valores para algunas de las variables.
#' @usage
#' data(bears2)
#' @format Contiene variables de nivel individual, como se describen a 
#' continuación:
#' \describe{
#'   \item{id}{Identificador del oso.}
#' \item{edad}{edad en meses}
#' \item{mes}{identificador del mes,dentro del año.}
#' \item{sexo}{1 = macho, 2 = hembra}
#' \item{cabezaL}{longitud de la cabeza, en cm}
#' \item{cabezaA}{ancho de la cabeza, en cm}
#' \item{cuelloP}{circunferencia del cuello, en cm}
#' \item{largo}{longitud del cuerpo, en cm}
#' \item{pechoG}{circunferencia del pecho, en cm}
#' \item{peso}{peso corporal, en kg}
#' \item{obs}{número de observación temporal para el oso}
#' \item{nombre}{nombre dado al oso}
#'  }
#' @source 
#' Segun el Prof. Timothy Gregoire de Yale University (New Haven, CT, USA), 
#' los datos fueron
#'  cedidos por Gary Alt. Minitab, Inc. La descripcion de los datos fue dada 
#'  por él.
#' @references
#' Algunas referencias generales estan en el Reader's Digest de Abril, 1979, y 
#' Sports Afield de Septiembre, 1981.
#' @examples
#' data(bears2)    
#' head(bears2) 
#' table(bears2$sexo)
#' boxplot(cabezaL~sexo, data=bears2)
'bears2'
#' Tree volume of roble (Nothofagus obliqua) in the Rucamanque forest
#'
#' @description
#' These are tree-level measurement data of sample trees in the Rucamanque 
#' experimental forest, 
#'  near Temuco, in the Araucania region in south-central Chile, measured 
#'  in 1999.  The
#' data are the same as in the dataframe "treevolruca", but only having 
#' observations for the species Nothofagus obliqua (roble).
#' @usage
#' data(treevolroble)
#' @format Contains tree-level variables, as follows:
#' \describe{
#'   \item{tree.no}{Tree id}
#' \item{dbh}{Diameter at breast height, in cm}
#' \item{toth}{Total height, in m.}
#'  \item{d6}{Upper-stem diameter at 6 m, in cm}
#' \item{totv}{Tree gross volume, in m\eqn{^{3}}{^3} with bark.}
#'  }
#' @source 
#' The data are provided courtesy of Dr Christian Salas at
#' the Universidad de Chile (Santiago, Chile).  
#' @references
#' - Salas C. 2002. Ajuste y validación de ecuaciones de volumen para un relicto
#' del bosque de Roble-Laurel-Lingue. Bosque 23(2): 81-92.
#'  \doi{10.4067/S0717-92002002000200009} 
#'  \url{https://eljatib.com/publication/2002-07-01_ajuste_y_validacion_/} 
#' @examples
#' data(treevolroble)    
#' head(treevolroble) 
'treevolroble'
#' Volumen a nivel de árbol para roble (Nothofagus obliqua) especie en el
#'  bosque de Rucamanque
#'
#' @description
#' Volumen, altura y diámetro, entre otras para árboles muestra de 
#' Nothofagus obliqua (roble) en 
#'  el bosque de Rucamanque, cerca de Temuco, en la región de la Araucania, 
#'  en el sur de Chile.  
#' @usage
#' data(treevolroble2)
#' @format Las siguientes columnas son parte de la dataframe:
#' \describe{
#'   \item{arbol}{Número del árbol.}
#' \item{especie}{Especie.}
#' \item{dap}{Diámetro a la altura del pecho, en cm.}
#' \item{atot}{Altura total, en m.}
#'  \item{d6}{Diámetro fustal a los 6 m, en cm.}
#' \item{vtot}{Volumen bruto total, en m\eqn{^{3}}{^3} with bark.}
#'  }
#' @source 
#' Los datos son proporcionados por el Prof. Christian Salas
#'  (Universidad de Chile).  
#' @references
#' - Salas C. 2002. Ajuste y validación de ecuaciones de volumen para un relicto
#' del bosque de Roble-Laurel-Lingue. Bosque 23(2): 81-92. 
#' \doi{10.4067/S0717-92002002000200009} 
#' \url{https://eljatib.com/publication/2002-07-01_ajuste_y_validacion_/} 
#' @examples
#' data(treevolroble2)    
#' head(treevolroble2) 
'treevolroble2'
#' Tree volume by species in the Rucamanque forest 
#'
#' These are tree-level measurement data of sample trees in the Rucamanque 
#' experimental forest, 
#'  near Temuco, in the Araucania region in south-centralChile, measured
#'   in 1999.  The following
#'  species are part of the data: laurel (laurelia sempervirens), 
#'  lingue (Persea lingue), olivillo (Aextocicon puncatum), 
#'  roble (Nothofagus obliqua), tepa (Laureliosis philippiana), y 
#'  tineo (Weinmannia trichosperma).
#' @usage
#' data(treevolruca)
#' @format Contains tree-level variables, as follows:
#' \describe{
#'   \item{tree.no}{Tree id.}
#' \item{spp}{Species.}
#' \item{dbh}{Diameter at breast height, in cm.}
#' \item{toth}{Total height, in m.}
#'  \item{d6}{Upper-stem diameter at 6 m, in cm.}
#' \item{totv}{Tree gross volume, in m\eqn{^{3}}{^3} with bark.}
#'  }
#' @source 
#' The data were provided courtesy of Dr Christian Salas
#'  (Universidad de Chile, Santiago, Chile).
#' @references
#' - Salas C. 2002. Ajuste y validación de ecuaciones de volumen para un relicto
#' del bosque de Roble-Laurel-Lingue. Bosque 23(2): 81-92. 
#' \doi{10.4067/S0717-92002002000200009} 
#' \url{https://eljatib.com/publication/2002-07-01_ajuste_y_validacion_/} 
#' @examples
#' data(treevolruca)    
#' head(treevolruca) 
#' table(treevolruca$spp) 
'treevolruca'
#' Volumen a nivel de árbol en el bosque de Rucamanque
#'
#' Volumen, altura y diámetro, entre otras para árboles muestra en el bosque 
#' de Rucamanque, cerca de Temuco, 
#' en la region de la Araucanía, en el sur de Chile.  Las siguientes
#'  especies son parte de los datos: laurel (laurelia sempervirens), 
#'  lingue (Persea lingue), olivillo (Aextocicon puncatum), 
#'  roble (Nothofagus obliqua), tepa (Laureliosis philippiana), y 
#'  tineo (Weinmannia trichosperma).
#' @usage
#' data(treevolruca2)
#' @format Las siguientes columnas son parte de la dataframe:
#' \describe{
#'   \item{arbol}{Número del árbol.}
#' \item{especie}{Especie.}
#' \item{dap}{Diámetro a la altura del pecho, en cm.}
#' \item{atot}{Altura total, en m.}
#'  \item{d6}{Diámetro fustal a los 6 m, en cm.}
#' \item{vtot}{Volumen bruto total, en m\eqn{^{3}}{^3} with bark.}
#'  }
#' @source 
#' Los datos fueron cedidos por el Dr Christian Salas-Eljatib (Chile).
#' @references
#' - Salas C. 2002. Ajuste y validación de ecuaciones de volumen para un relicto
#' del bosque de Roble-Laurel-Lingue. Bosque 23(2): 81-92.
#'  \doi{10.4067/S0717-92002002000200009} 
#'  \url{https://eljatib.com/publication/2002-07-01_ajuste_y_validacion_/} 
#' @examples
#' data(treevolruca2)    
#' head(treevolruca2) 
#' table(treevolruca2$especie)
'treevolruca2'
#' Contains plot-level variables in Araucaria araucana forests in Chile. 
#'
#'
#' @description
#' These are stand variables data from Araucaria araucana forests 
#'  in southern Chile, measured in 2009.  The data  was based on
#'   fixed-area plots of 1000 m\eqn{^{2}}{^2}.  There are two forest stands.
#' @usage
#' data(araucaria)
#' @format Contains plot-level variables as follows:
#' \describe{
#'   \item{stand}{Stand number.}
#'   \item{plot.no}{Plot sample identificator number.}
#'   \item{x.utm}{UTM  coordinate in X-axis, in km.}
#'   \item{y.utm}{UTM  coordinate in Y-axis, in km.}
#'     \item{slope}{Slope, in \%.}
#' \item{aspect}{Aspect, in degrees.}
#'     \item{eleva}{Elevation, in msnm.}    
#'   \item{nha }{Tree density, in trees/ha.}
#'  \item{gha }{Basal area, in m\eqn{^{2}}{^2}/ha.}
#' \item{hdom}{Dominant height, in m.}
#' \item{vha }{Gross stand volume, in m\eqn{^{3}}{^3}/ha.} 
#'  \item{dg}{Diameter of the average basal area tree of the plot, in cm.}
#'  }
#' @source  
#' The data are provided courtesy of Dr Nelson Ojeda at Universidad 
#' de La Frontera (Temuco, Chile).  
#' @references
#' Salas C, Ene L, Ojeda N, Soto H. 2010. Metodos estadísticos parametricos y 
#' no parametricos
#'    para predecir variables de rodal basados en Landsat ETM+: una 
#'    comparacion en un bosque
#'     de Araucaria araucana en Chile [Parametric and non-parametric 
#'     statistical methods for 
#'     predicting plotwise variables based on Landsat ETM+: a 
#'     comparison in an Araucaria araucana forest
#'      in Chile]. Bosque 31(3): 179-194. \doi{10.4067/S0717-92002010000300002}
#' @examples
#' data(araucaria)    
#' head(araucaria) 
"araucaria"
#' Variables a nivel de parcela para bosques de Araucaria araucana en Chile. 
#'
#'
#' @description
#' Estos son variables a nivel de parcela para bosques Araucaria araucana  
#'  en el centro-sur de Chile, medidos en 2009.  Estas variables se basan 
#'  en mediciones
#'  realizadas en parcelas de muestreo de 1000 m\eqn{^{2}}{^2}. Hay dos rodales.
#' @usage
#' data(araucaria)
#' @format Contiene las siguientes variables:
#' \describe{
#'   \item{rodal}{Rodal, con un número indentificador.}
#'   \item{parce}{Parcela de muestreo, con un número indentificador.}
#'   \item{x.utm}{Coordenada UTM en el eje X, en km.}
#'   \item{y.utm}{Coordenada UTM en el eje Y, en km.}
#'     \item{pendiente}{Pendiente, en \%}
#' \item{exposicion}{Exposición del terreno, en grados.}
#'     \item{altitud}{Altitud, en msnm.}    
#'   \item{nha}{Densidad, en arb/ha.}
#'  \item{gha}{Área basal, en m\eqn{^{2}}{^2}/ha.}
#' \item{hdom}{Altura dominante, en m.}
#' \item{vha}{Volumen bruto, en m\eqn{^{3}}{^3}/ha.} 
#'  \item{dg}{Diámetro del árbol de área basal media, en cm.}
#'  }
#' @source  
#' Los datos a nivel de árbol fueron cedidos por el Dr. Nelson Ojeda de
#' la Universidad de La Frontera (Temuco, Chile).  
#' @references
#' Salas C, Ene L, Ojeda N, Soto H. 2010. Metodos estadísticos 
#' parametricos y no parametricos
#'    para predecir variables de rodal basados en Landsat ETM+: 
#'    una comparacion en un bosque
#'     de Araucaria araucana en Chile. Bosque 31(3): 179-194.
#'      \doi{10.4067/S0717-92002010000300002}
#' @examples
#' data(araucaria2)    
#' head(araucaria2) 
"araucaria2"
#' Diameter, height and volume for Black Cherry Trees
#' 
#' @description
#' This data set provides measurements of the diameter, height and volume 
#' of timber in 31 felled black cherry trees.
#' The records are a slight modification to the original dataframe "trees" 
#' from the \eqn{datasets} R package.
#' @usage
#' data(treevol)
#' @format A data frame with 31 observations and three variables
#' \describe{
#' \item{dbh}{Diameter at breast height, in cm.}
#' \item{toth}{Total height, in m.}
#' \item{vtot}{Timber volume, in cubic meters.}
#'  }
#' @source 
#' Ryan TA, Joiner BL, and Ryan BF. 1976. The Minitab Student Handbook. 
#' Duxbury Press.
#' @examples
#' pairs(treevol, panel = panel.smooth, main = "treevol dataframe")
#' plot(vtot ~ dbh, data = treevol, log = "xy")
#' coplot(log(vtot) ~ log(dbh) | toth, data = treevol,
#'        panel = panel.smooth)
#' summary(m1 <- lm(log(vtot) ~ log(dbh), data = treevol))
#' summary(m2 <- update(m1, ~ . + log(toth), data = treevol))
#' anova(m1,m2)
'treevol'
#' Volumen, altura, y diámetro para árboles de Black Cherry 
#' 
#' @description
#' Estos datos provienen de mediciones de volumen, altura y diámetro en 31 
#' árboles volteados de black cherry (Prunus serotina).
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
#' Ryan, T. A., Joiner, B. L. and Ryan, B. F. (1976) The Minitab Student
#'  Handbook. Duxbury Press.
#' @examples
#' pairs(treevol2, panel = panel.smooth, main = "treevol dataframe")
#' plot(vtot ~ dap, data = treevol2, log = "xy")
#' coplot(log(vtot) ~ log(dap) | atot, data = treevol2,
#'        panel = panel.smooth)
#' summary(m1 <- lm(log(vtot) ~ log(dap), data = treevol2))
#' summary(m2 <- update(m1, ~ . + log(atot), data = treevol2))
#' anova(m1,m2)
'treevol2'
#' Diameter growth of trees
#' 
#' @description
#' The 'ficdiamgr' is a fictitious dataframe built to show the structure of 
#'  longitudinal data. The dataframe has records of tree diameter growth of 
#'  five sample trees, spanning three species. 
#' @usage
#' data(ficdiamgr)
#' @format A time series data containing the following columns:
#' \describe{
#' \item{tree.id}{an ordered factor indicating the tree on which the 
#' measurement is made. The ordering is according to increasing maximum 
#' diameter.}
#' \item{time}{a numeric vector giving the numbers of days since 
#' establishment.}
#' \item{dbh}{a numeric vector of diameter at breast height, in cm.}
#' \item{site}{a factor variable, representing site conditions with two 
#' levels.}
#' \item{spp}{a factor variable, representing tree species with three levels.}
#'  }
#' @source 
#' This dataframe was built from the 'Orange' data of the \eqn{datasets} package,
#'  by Christian Salas-Eljatib.
#' @examples
#' data(ficdiamgr)
#' 
#' coplot(dbh ~ time | tree, data = ficdiamgr, show.given = FALSE)
'ficdiamgr'
#' Crecimiento diametral de árboles
#' 
#' @description
#' Los datos 'ficdiamgr2' son ficticios, y fue construida para mostrar 
#' la estructura 
#'  de datos longitudinales. Los datos tienen registro de crecimiento en cinco 
#'  árboles muestra, representando a tres especies. 
#' @usage
#' data(ficdiamgr2)
#' @format Una serie de tiempo conteniendo las siguientes columnas:
#' \describe{
#' \item{arbol}{indica el identificador del árbol.}
#' \item{tiempo}{número de dias desde el inicio de las mediciones.}
#' \item{dap}{diámetro a la altura del pecho, en cm.}
#' \item{sitio}{un factor, representando condiciones de sitio, en dos niveles.}
#' \item{espe}{un factor, representando especie del árbol, en tres niveles.}
#'  }
#'  
#' @source 
#' Estos datos fueron modificados desde la dataframe 'Orange' de la librería
#'  'datasets', por Christian Salas-Eljatib.
#' @examples
#' data(ficdiamgr2)
#' 
#' coplot(dap ~ tiempo | arbol, data = ficdiamgr2, show.given = FALSE)
'ficdiamgr2'
#' Crecimiento en altura de Pinus taeda
#' 
#' @description
#' Esta dataframe contiene 84 folas y tres columnas de crecimiento en altura de 
#' árboles de Pinus taeda (Loblolly pine). Es una modificación de la dataframe
#'  "Loblolly" del paquete 'datasets' de R.
#' @usage
#' data(ptaeda2)
#' @format Los datos contienen las siguientes columnas:
#' \describe{
#' \item{semilla.id}{Un factor indicando el origen de la semilla del árbol.}
#' \item{edad}{Edad del árbol, en años.}
#' \item{atot}{Altura total, en m.}
#'  }
#' @source 
#' Pinheiro, J. C. and Bates, D. M. (2000) Mixed-effects Models in S and 
#' S-PLUS. Springer.
#' @examples
#' 
#' data(ptaeda2, package="datana")
#' head(ptaeda2)
#' plot(atot ~ edad, data = subset(ptaeda2, semilla.id == 329),
#'      xlab = "Edad (años)", las = 1,
#'      ylab = "Altura (m)")
'ptaeda2'
#' Height growth of Pinus taeda (Loblolly pine) trees
#' 
#' @description
#' The Loblolly data frame has 84 rows and tree columns of records of the tree
#'  height growth of Loblolly pine trees. This dataframe
#'  is a slight modification to the original dataframe "Loblolly" from the 
#'  \eqn{datasets} R package.
#' @usage
#' data(ptaeda, package="datana")
#' @format A dataframe containing the following columns:
#' \describe{
#' \item{seed.id}{an ordered factor indicating the seed source for the tree. 
#' The ordering is according to increasing maximum height.}
#' \item{age}{a numeric vector of tree ages, in yr.}
#' \item{toth}{a numeric vector of tree heights, in m.}
#'  }
#' @source 
#' Pinheiro, J. C. and Bates, D. M. (2000) Mixed-effects Models in S and
#'  S-PLUS. Springer.
#' @examples
#' 
#' data(ptaeda, package="datana")
#' head(ptaeda)
#' plot(toth ~ age, data = subset(ptaeda, seed.id == 329),
#'      xlab = "Age (yr)", las = 1,
#'      ylab = "Height (m)")
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
#' El archivo de datos fue preparado, y referido, por el Prof. Timothy 
#' Gregoire de
#'  Yale University (New Haven, CT, USA), mientras Christian Salas
#'   (el autor del presente paquete fue su Teaching Assistant). 
#' @examples
#' data(biomass)    
#' head(biomass)
#' tapply(biomass$totbiom,biomass$spp,summary)  
"biomass"
#' Biomasa a nivel de árbol para especies arboreas de Canadá
#'
#' @description
#' Biomasa a nivel de árbol y otras variables, para varias
#' especies que crecen en bosques de Canadá.
#' 
#' @format 
#' \describe{
#'   \item{arbol}{Número del árbol.}
#'   \item{spp}{Nombre común de la especie.}
#'   \item{dap}{Diámetro a la altura del pecho (1.3 m), en cm.}
#'   \item{atot}{Altura total, en m.}
#'   \item{wtot}{Biomasa total, en kg.}
#'   \item{wfus}{Biomasa del fuste, en kg.}
#'   \item{wramas}{Biomasa de las ramas, en kg.}
#'   \item{whojas}{Biomasa del follaje, en kg.}
#'  }
#' @source  
#' Los datos fueron The data are provided courtesy of Prof. Timothy Gregoire at
#' the School of Forestry and Environmental Studies at Yale 
#' University (New Haven, CT, USA).
#' @examples
#' data(biomass2)    
#' head(biomass2) 
#' tapply(biomass2$wtot,biomass2$spp,summary)  
"biomass2"
#' Tree locations for several plots of Norway spruce (Picea abies) in Austria
#'
#' @description
#' The Austrian Research Center for Forests established a spacing experiment
#'  with Norway spruce (Picea abies) in the Vienna Woods. In the 'Hauersteig' 
#'  experiment, several tree-level variables were measured within four sample 
#'  plots over time. The current dataframe has only the measurements
#'   carried out in 1944.
#' @usage
#' data(spataustria)
#' @format Contains cartesian position of trees, and covariates, 
#' in sample plots, as follows:
#' \describe{
#' \item{plot}{Plot number.}
#'   \item{tree}{Tree number.}
#'   \item{species}{Species code as follows:
#'   PCAB=Picea abies, LADC=Larix decidua, PNSY=Pinus sylvestris, 
#'   FASY=Fagus Sylvatica, QCPE=Quercus petraea, BTPE=Betula pendula.}
#' \item{x.coord}{Cartesian position in the X-axis, in m.}
#' \item{y.coord}{Cartesian position in the Y-axis, in m.}
#' \item{year}{Measurement year.}
#' \item{dbh}{diameter at breast-height, in cm.}
#'  }
#' @references
#' - Kindermann G. Kristofel F, Neumann M, Rossler G, Ledermann T & Schueler. 
#' 2018. 109 years  of forest growth measurements from individual Norway
#'  spruce trees. Sci. Data 5:180077 \doi{10.1038/sdata.2018.77}
#' @examples
#' data(spataustria)    
#' head(spataustria)
#' df<-spataustria
#' oldpar<-par(mar=c(4,4,0,0))
#' bord<-data.frame(
#'  x=c(min(df$x.coord),max(df$x.coord),min(df$x.coord),max(df$x.coord)),
#'  y=c(min(df$y.coord),min(df$y.coord),max(df$y.coord),min(df$y.coord))
#'  )
#' plot(bord,type="n", xlab="x (m)", ylab="y (m)", asp=1, bty='n')
#' points(df$x.coord,df$y.coord,col=df$plot,cex=0.5) 
#' par(oldpar)
"spataustria"
#' Functional traits of vegetative species in Chile.
#'
#' @description
#' Functional traits of vegetative species in Chile. Includes column with
#'  codified name (esp) 
#' @usage
#' data(traits)
#' @format 
#' \describe{
#'   \item{esp}{species codified name}
#'   \item{shadeTolerance}{indicates the species tolerance to shape. 
#'   There are three main classes: shade-tolerant, shade-midtolerant 
#'   and shade-intolerant}
#'   \item{spp.ci.name}{Scientific name.}
#'   \item{spp.ci.abb.}{.}
#'   \item{wd}{wood density in kg per cubic meters.}
#'  }
#' @source  
#' Some of the information on shade tolerance can be found in Soto et al 2010.
#' @references
#' - Soto DP, Salas C, Donoso PJ, Uteau D. 2010. Heterogeneidad estructural y
#'  espacial de un bosque mixto dominado por
#' Nothofagus dombeyi despues de un disturbio parcial. Revista Chilena de
#'  Historia Natural 83(3): 335-347.
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
#' Parte de la informacion sobre tolerancia a la sombra se encuentra en 
#' Soto et al 2010
#' @references
#' - Soto DP, Salas C, Donoso PJ, Uteau D. 2010. Heterogeneidad estructural y
#'  espacial de un bosque mixto dominado por
#' Nothofagus dombeyi despues de un disturbio parcial. Revista Chilena de 
#' Historia Natural 83(3): 335-347.
"traits2"
#' Names and other information of plant species (mainly trees)
#' 
#' @description
#' This data set provides names (taxonomy), of plant species. Includes codes
#'  and name abbreviations used by the Biometrics group at the Forest
#'   Biometrics and Modelling Lab, Universidad de Chile, Santiago, Chile.
#' @usage
#' data(species)
#' @format A data frame with 63 observations on 31 variables
#' \describe{
#' \item{nesp}{Unique correlative specie number}
#' \item{spp.ci.name}{Species scientific name}
#' \item{spp.ci.abb}{Species scientific name abbreviation}
#' \item{common.name}{Species common name. No blank spaces,  no special
#'  characters}
#' \item{common.nameBlank}{Species common name. With blank spaces,  no special
#'  characters}
#' \item{esp}{Species code: code given by CEM Biometrics to identify species 
#' for different processing routines}
#' \item{common.nameLatex}{Species common name formatted for Latex}
#' \item{nTaxon}{Unique number of the taxon (i.e., species)}
#' \item{kingdom}{Taxonomic rank Kingdom. In this datase, all species belong 
#' to the Kingdom Plantae}
#' \item{division}{Taxonomic rank division or phylum within the Kingdom}
#' \item{class}{Taxonomic rank Class within the Kingdom}
#' \item{order}{Taxonomic rank Order within the Class}
#' \item{family}{Taxonomic rank Family within the Order}
#' \item{spp.ci.full}{Full scientific name including author}
#' \item{genus}{Taxonomic rank Genus within the Family}
#' \item{epithet}{Specific epithet}
#' \item{spp.aut}{Species author}
#' \item{subspp}{Subespecies: one of two or more populations of a species 
#' varying from one another by morphological characteristics}
#' \item{subspp.aut}{Subespecies author}
#' \item{varspp}{Species variety or varietas}
#' \item{varspp.aut}{Variety author}
#' \item{formspp}{Form or forma}
#' \item{formspp.aut}{Form author}
#' \item{commonNamesList}{List of common names per species, separated by commas}
#' \item{synonyms}{Synonyms of the scientific name by which the species has
#'  been or is known}
#' \item{borCountries}{Border countries given the species distribution range}
#' \item{habit}{Habit. The general appearance, growth form, or architecture
#'  e.g., tree, shrub, grass}
#' \item{lifeCycle}{Life cycle}
#' \item{statusOri}{Status according to the species origin: Native or Endemic}
#' \item{regDist}{Distribution range of the species, within Chile 
#' administrative regions}
#' \item{elev.range}{Distribution range of the species, in terms of elevation.
#'  Meters above sea level}
#' \item{notes}{Notes}
#' }
#' @source 
#' Data available at \url{https://investigacion.conaf.cl}, but modified by 
#' the Forest Biometrics
#'  and Modelling Laboratory at the Universidad de Chile.
#' @references
#' Proyecto 004/2016 Lista sistematica actualizada de la flora vascular nativa 
#' de Chile, origen y
#'  distribucion geografica. VII Concurso del Fondo de Investigacion del Bosque
#'   Nativo.
#'  
#' @examples
#' data(species)    
#' table(species$family) 
'species'
#' Información taxonómica de especies vegetales (principalmente árboles)
#' 
#' @description
#' Los datos proveen diferentes características de la clasificación taxonómica 
#' de especies de plantas.
#'  Incluye codigos y otros que son especialmente usados en biometría de 
#'  bosques.
#' @usage
#' data(species2)
#' @format Los datos contienen31 variables (columnas)
#' \describe{
#' \item{nesp}{Unique correlative specie number}
#' \item{spp.ci.name}{Species scientific name}
#' \item{spp.ci.abb}{Species scientific name abbreviation}
#' \item{nom.com}{Species common name. No blank spaces,  no special characters}
#' \item{nom.com.vacio}{Species common name. With blank spaces,  no special
#'  characters}
#' \item{esp}{Species code: code given by CEM Biometrics to identify species
#'  for different processing routines}
#' \item{nom.com.latex}{Species common name formatted for Latex}
#' \item{ntaxon}{Unique number of the taxon (i.e., species)}
#' \item{reino}{Taxonomic rank Kingdom. In this datase, all species belong to
#'  the Kingdom Plantae}
#' \item{division}{Taxonomic rank division or phylum within the Kingdom}
#' \item{clase}{Taxonomic rank Class within the Kingdom}
#' \item{orden}{Taxonomic rank Order within the Class}
#' \item{familia}{Taxonomic rank Family within the Order}
#' \item{spp.ci.comple}{Full scientific name including author}
#' \item{genero}{Taxonomic rank Genus within the Family}
#' \item{epiteto}{Specific epithet}
#' \item{spp.aut}{Species author}
#' \item{subspp}{Subespecies: one of two or more populations of a species 
#' varying from one another by morphological characteristics}
#' \item{subspp.aut}{Subespecies author}
#' \item{varspp}{Species variety or varietas}
#' \item{varspp.aut}{Variety author}
#' \item{formaspp}{Forma de vida de la especie}
#' \item{formaspp.aut}{Autor que asigno la forma de vida}
#' \item{nomcom.list}{List of common names per species, separated by commas}
#' \item{sinonimia}{Sinonimia of the scientific name by which the species has 
#' been or is known}
#' \item{pais.limi}{Border countries given the species distribution range}
#' \item{habito}{Habit. The general appearance, growth form, or architecture 
#' e.g., tree, shrub, grass}
#' \item{ciclo.vida}{Life cycle}
#' \item{estatus.ori}{Status according to the species origin: Native or 
#' Endemic}
#' \item{dist.regional}{Distribution range of the species, within Chile
#'  administrative regions}
#' \item{rango.alti}{Rango altitudinal, en metros sobre el nivel del mar,
#' de la especie.}
#' \item{notas}{Notas}
#' }
#' @source 
#' Datos disponibles en \url{https://investigacion.conaf.cl}, con ciertas
#'  modificaciones (no botanicas) por
#'  el Laboratorio de Biometría y Modelación Forestal de la Universidad de
#'   Chile.
#' @references
#' Proyecto 004/2016 Lista sistematica actualizada de la flora vascular nativa 
#' de Chile, origen y
#'  distribucion geografica. VII Concurso del Fondo de Investigacion del 
#'  Bosque Nativo.
#'  
#' @examples
#' data(species2)    
#' table(species2$familia) 
'species2'
#' Contains regeneration microsite data in Robinson Crusoe Island forest
#'
#' @description
#' These are plot-level measurement (2x2 m) data from the forests in the 
#' Robinson Crusoe Island, located
#'  in the Pacific Ocean, 667 km from mainland Chile. Measurements were
#'   collected in transects 
#'  of 100 to 240 meters in which, 398 squared plots (2x2 m) were set to
#'   include canopy gaps, 
#'  gap borders and closed forest conditions.

#'
#' @usage
#' data(invasivesRCI)
#'
#' @format Data has the following columns
#' \describe{
#'   \item{plot.id}{Plot identification code}
#'   \item{Gap.type}{Canopy gap classified as invaded=Inv, non invaded= Nat
#'    or treated =Treat(considering the estimated cover of invasive plant 
#'    species)}
#'   \item{Forest.zone}{Location of the plot (gap, border or forest)}
#'   \item{Ferns}{Estimated cover of fern species (in 2x2 plots)}
#'   \item{Moss.liverw}{Estimated cover of mosses and liverworts (in 2x2 plots)}
#'   \item{Cwd}{Estimated cover of coarse woody debris > 3 cm diameter
#'    (in 2x2 plots)}
#'   \item{Litter}{Estimated cover of litter (in 2x2 plots)}
#'   \item{Ms}{Estimated cover of mineral soil ( in 2x2 plots)}
#'   \item{Rock}{Estimated cover of rocks (in 2x2 plots)}
#'   \item{Est.age}{Age category for the canopy gap associated to each plot}
#'     }
#' @source  
#'  The data are provided courtesy of Prof. Rodrigo Vargas-Gaete at Universidad
#'  de La Frontera (Temuco, Chile).
#' @references
#'  Vargas-Gaete R, Salas-Eljatib C, Gärtner SM, Vidal OJ, Bannister JR, 
#'  Pauchard A. 2018. 
#'  Invasive plant species thresholds in the forests of Robinson Crusoe 
#'  Island, Chile. 
#'  Plant Ecology & Diversity, 11(2), 205-215.
"invasivesRCI"
#' Contains tree density by species and plot for Prumnopitys andina (Lleuque) 
#' forests
#'
#' @description
#' Contains species composition data for forests with presence of Lleuque 
#' (Prumnopitys andina)
#' 
#' @format The dataframe has the following columns
#' \describe{
#'   \item{stand}{Stand number}
#'   \item{plot.num}{Sample plot number}
#'   \item{cipres}{Tree density of ciprés de la Cordillera
#'    (Austrocedrus chilensis), in trees/ha.}
#'   \item{ldura}{Tree density of leña dura (Maytenus disticha), in trees/ha.}
#'   \item{roble}{Tree density of roble (Nothofagus obliqua), in trees/ha.}
#'   \item{lleuque}{Tree density of lleuque (Prumnopitys andina), in trees/ha.}
#'  }
#' @source  
#' The data are provided courtesy of Prof. Rodrigo Vargas-Gaete at Universidad
#'  de La Frontera (Temuco, Chile).
#' @references
#' Vargas-Gaete R, Salas-Eljatib C, Penneckamp D, Neira Z, Diez MC,
#'  Vargas-Picón, R. 2020. Estructura 
#' y regeneración de bosques de Prumnopitys andina en los Andes del sur
#'  de Chile. Gayana Botánica
#'  77(1):48-58. \doi{10.4067/S0717-66432020000100048}
"lleuque"
#' Densidad por especie de árboles por parcela en bosques de 
#' *Prumnopitys andina* (Lleuque)
#'
#' @description
#' Para cada unidad de muestreo (o parcela) hay valores de densidad 
#' por especie arbórea. Las parcelas
#' fueron establecidas en bosques de *Prumnopitys andina* (Lleuque) forests
#' 
#' @format Los datos contienen las siguientes columnas:
#' \describe{
#'   \item{rodal}{Rodal, en código.}
#'   \item{parce}{Parcela de muestreo, en código.}
#'   \item{cipres}{Densidad de Ciprés de la Cordillera
#'    (Austrocedrus chilensis), en arb/ha.}
#'   \item{ldura}{Densidad de leña dura (Maytenus disticha), en arb/ha.}
#'   \item{roble}{Densidad de roble (Nothofagus obliqua), en arb/ha.}
#'   \item{lleuque}{Densidad de lleuque (Prumnopitys andina), en arb/ha.}
#'  }
#' @source  
#' Los datos fueron cedidos por el Prof. Rodrigo Vargas-Gaete de la Universidad
#'  de La Frontera (Temuco, Chile).
#' @references
#' Vargas-Gaete R, Salas-Eljatib C, Penneckamp D, Neira Z, Diez MC,
#'  Vargas-Picón, R. 2020. Estructura 
#' y regeneración de bosques de Prumnopitys andina en los Andes del 
#' sur de Chile. Gayana Botánica
#'  77(1):48-58. \doi{10.4067/S0717-66432020000100048}
"lleuque2"
#' On the National System of State Protected Wild Areas (SNASPE) of Chile.
#'
#' @description
#' 
#' Units of the National System of State Protected Wild Areas (SNASPE).
#' @usage
#' data(snaspe)
#' @format Contains the following variables:
#' \describe{
#' \item{unit.id}{Number for the unit.}
#' \item{unit}{Name of the protected area.}
#' \item{category}{Category of the unit. It can be either a National
#'  Park, a National 
#' Reserve or a Natural Monument.}
#' \item{county}{Name of the county where
#'  the unit is located.}
#' \item{province}{Province where the unit is located.}
#'  \item{region}{Region where the unit is located.}
#' \item{perim.km}{Perimeter, in km.}
#' \item{area.ha}{Area, in hectares.}
#' \item{area.m2}{Area, in m\eqn{^{2}}{^2}.}
#'  }
#' @source
#' These data are freely available at
#' \url{https://ide.minagri.gob.cl}
#'   
#' @references
#' The Chilean SNASPE is under the direction of the Chilean Forest
#'  Service (CONAF).
#' Further information and documentation can be found at
#' \url{https://www.conaf.cl} 
#'  
#' @examples
#' data(snaspe)    
#' head(snaspe) 
#' table(snaspe$category)
#' tapply(snaspe$area.ha,snaspe$category,mean)
"snaspe"
#' Sistema nacional de areas protegidas del estado (SNASPE) de Chile
#'
#' @description
#' 
#' Contiene variables general de las unidades del sistema de areas 
#' protegidas por el estado de 
#'  Chile (SNASPE).
#' @usage
#' data(snaspe2)
#' @format Contiene las siguientes variables para cada unidad del SNASPE:
#' \describe{
#' \item{uni.id}{Número indentificador de la unidad.}
#' \item{unidad}{Nombre de la unidad.}
#' \item{categoria}{Categoría de la unidad. Puede ser Parque Nacional,
#'  Reserva Nacional,  o 
#' Monumento Natural.}
#' \item{comuna}{Nombre de la communa donde esta la unidad.}
#' \item{province}{Nombre de la provincia donde esta la unidad.}
#'  \item{region}{Nombre de la región.}
#' \item{perim.km}{Perimetro, en km.}
#' \item{area.ha}{Área, en hectareas.}
#' \item{area.m2}{Área, en m\eqn{^{2}}{^2}.}
#'  }
#' @source
#' Estos datos fueron obtenidos desde 
#' \url{https://ide.minagri.gob.cl}
#'   
#' @references
#' EL SNASPE esta bajo la administración de la Corporación Nacional
#'  Forestal (CONAF) de Chile.
#' Mayor información se puede encontrar en
#' \url{https://www.conaf.cl} 
#'  
#' @examples
#' data(snaspe2)    
#' head(snaspe2) 
#' table(snaspe2$categoria)
#' tapply(snaspe2$area.ha,snaspe2$categoria,mean)
"snaspe2"
#' Tree crown radii
#'
#' @description
#' 
#' Crown radii measurements in cardinal directions for sample trees at
#'  the Rucamanque experimental forest, near Temuco, Chile.
#'  Data were collected within a sample plot of 250 m\eqn{^{2}}{^2}, 
#'  located in a secondary forest stand
#'  dominated by Nothofagus obliqua.
#' @usage
#' data(crown)
#' @format Contains of variables, as follows:
#' \describe{
#' \item{spp}{Species code. 'Ro' is Nothofagus obliqua (roble), 'Co' is
#'  Nothofagus dombeyi (Coigue) and 'Ol' is Olivillo.}
#' \item{dbh}{Diameter at breast height, in cm.}
#' \item{toth}{Total height, in m.}
#' \item{crad.n}{Crown radii towards the north, in m.}
#' \item{crad.e}{Crown radii towards the east, in m.}
#'  \item{crad.s}{Crown radii towards the south, in m.}
#' \item{crad.w}{Crown radii towards the west, in m.}
#' \item{x.coord}{Cardinal position at the X-axis, in m.}
#' \item{y.coord}{Cardinal position at the Y-axis, in m.}
#' \item{cr.diam}{Crown diameter, in m.}
#'  }
#' @source 
#' Data were provided by Dr Christian Salas-Eljatib, 
#' Universidad de Chile (Santiago, Chile).
#' @references
#' - Salas C. 2001. Caracterización básica del relicto de Biodiversidad 
#' Rucamanque [Basic characterization of the biodiversity remnant Rucamanque].
#'  Bosque Nativo, 29:3-9. 
#'  \url{https://eljatib.com/publication/2001-06-01_caracterizacion_basi/}
#' 
#' - Salas C, and Garcia O. 2006. Modelling height development of 
#' mature Nothofagus obliqua. 
#' Forest Ecology and Management 229 (1-3): 1-6. 
#' \doi{10.1016/j.foreco.2006.04.015}
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
#' Mediciones de radios de copa en direcciones cardinales para árboles
#'  muestra en Rucamanque, cerca de Temuco, Chile.
#'  Los datos fueron colectados al interior de una parcela de muestreo 
#'  de 250 m\eqn{^{2}}{^2}, establecidad en un bosque
#'  secundario dominado por Nothofagus obliqua.
#' @usage
#' data(crown2)
#' @format Contiene las siguientes columnas:
#' \describe{
#' \item{espe}{Código de especie, donde: 'Ro' es Nothofagus obliqua (Roble),
#'  'Co' es Nothofagus dombeyi (Coigue) y 'Ol' es Olivillo.}
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
#' Datos cedidos por el Prof. Christian Salas-Eljatib, Universidad de Chile
#'  (Santiago, Chile).
#' @references
#' - Salas C. 2001. Caracterización básica del relicto de Biodiversidad 
#' Rucamanque [Basic characterization of the biodiversity remnant Rucamanque]. 
#' Bosque Nativo, 29:3-9.
#'  \url{https://eljatib.com/publication/2001-06-01_caracterizacion_basi/}
#' 
#' - Salas C, and Garcia O. 2006. Modelling height development of 
#' mature Nothofagus obliqua. Forest Ecology and Management 229 (1-3):1-6. 
#' \doi{10.1016/j.foreco.2006.04.015}
#'  
#' @examples
#' data(crown2)    
#' table(crown2$espe) 
#' descstat(crown2[,c("dap","dcopa")]) 
"crown2"
#' Tree height growth of Douglas-fir sample trees in the Northwest of 
#' the United States
#' @description
#' Data contains 148 observations on the height growth of dominant trees of
#'  Pseudotsguga mensiezzi in the Northwest of the United States.
#' @usage
#' data(hgrdfir)
#' @format The data frame contains seven variables as follows:
#' \describe{
#'   \item{natfor.id}{Code identifier.}
#'   \item{plot.code}{Plot number identification}
#'   \item{tree.code}{Tree number identification.}
#'   \item{dbh}{Diameter at breast height at sampling, in in.}
#'   \item{toth}{Total height at sa,pling, in ft.}
#'   \item{age}{Age of tree, yr.}
#'   \item{height}{Height at a given age, in ft.}
#'  }
#' @source 
#' The data were provided by Dr Christian Salas.  
#' @references
#' - Monserud RA. 1984. Height growth and site index curves for Inland 
#' Douglas-fir based on 
#' stem analysis data and forest habitat type. Forest Science 30(4):943-965.
#' @references 
#' - Salas C, Stage AR, and Robinson AP. 2008. Modeling effects of 
#' overstory density and competing 
#' vegetation on tree height growth. Forest Science 54(1):107-122.
#'  \doi{10.1093/forestscience/54.1.107}
#' @examples
#' data(hgrdfir)    
#' head(hgrdfir)
#' unique(hgrdfir$tree.code)
#' table(hgrdfir$plot.code,hgrdfir$tree.code)
#' tapply(hgrdfir$dbh, hgrdfir$tree.code, mean)
#' tapply(hgrdfir$dbh, hgrdfir$tree.code, mean) #dbh of each sample tree
#' tapply(hgrdfir$toth, hgrdfir$tree.code, mean) #toth of each sample tree
"hgrdfir"
#' Crecimiento en altura de una muestra de árboles en los Estados Unidos
#' @description
#' Data contiene 148 obserrvaciones sobre el crecimiento en altura de 
#' árboles dominantes de Pseudotsguga mensiezzi en el Nor-Oeste de los
#'  Estados Unidos
#' @usage
#' data(hgrdfir2)
#' @format La data frame contiene siete variables:
#' \describe{
#'   \item{bosque.id}{Codigo identificador del bosque.}
#'   \item{parcela}{Codigo identificador de la parcela.}
#'   \item{arbol}{Número de identificacion árbol.}
#'   \item{dap}{Diámetro a la altura del pecho, en  pulgadas.}
#'   \item{atot}{Altura total, en pies}
#'   \item{edad}{Edad, en os}
#'   \item{altura}{Altura para cada edad del árbol, en pies}
#'  }
#' @source 
#' La data fue cedida por el Dr Christian Salas-Eljatib.  
#' @references
#' Monserud RA. 1984. Height growth and site index curves for Inland 
#' Douglas-fir based on 
#' stem analysis data and forest habitat type. Forest Science 30(4):943-965.
#' @references 
#' Salas C, Stage AR, and Robinson AP. 2008. Modeling effects of overstory 
#' density and competing 
#' vegetation on tree height growth. Forest Science 54(1):107-122.
#'  \doi{10.1093/forestscience/54.1.107}
#' @examples
#' data(hgrdfir2)    
#' head(hgrdfir2)
#' unique(hgrdfir2$arbol.id)
#' table(hgrdfir2$parcela,hgrdfir2$arbol.id)
#' tapply(hgrdfir2$dap, hgrdfir2$arbol.id, mean) #dap de cada arbol muestra
#' tapply(hgrdfir2$atot, hgrdfir2$arbol.id, mean) #atot de cada arbol muestra
"hgrdfir2"
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
#' Data were provided by Dr Aquiles Yanez-Silva at Universidad
#'  Mayor (Santiago, Chile).
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
#' @format Contiene variables de nivel individual, como se 
#' describen a continuación::
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
#' Los datos fueron cedidos por el Dr Aquiles Yañez-Silva de 
#' la Universidad Mayor (Santiago, Chile).
#' @references
#' Not yet.
#' @examples
#' data(football2)    
#' head(football2) 
'football2'  
#' Height growth of Nothofagus alpina trees in Chile. 
#'
#' @description
#' Time series data of height for rauli (Nothofagus alpina) trees
#'  in south-central Chile. These sampled 
#' trees are part of the ones used in 
#' Salas-Eljatib (2021, Ecological Applications). The full citation
#' is provided below.
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
#' - Salas-Eljatib C. 2021. An approach to quantify climate-productivity 
#' relationships: an example from a widespread Nothofagus forest. 
#'  Ecological Applications 31(4): e02285.  
#'  \doi{10.1002/eap.2285}
#'  
#' - Salas-Eljatib, C. 2021. Time series height-data for Nothofagus alpina 
#' trees. \doi{10.6084/m9.figshare.13521602.v5} 
#' @examples
#' data(raulihg)    
#' head(raulihg) 
'raulihg'
#' Crecimiento en altura de árboles de Nothofagus alpina. 
#'
#' @description
#' Datos de series de tiempo de altura para árboles muestreados de
#'  Nothofagus alpina (raulí) en el centro-sur de Chile. Estos árboles son
#'   parte
#' de los usados en Salas-Eljatib (2021, Ecological Applications).
#'  La cita completa se da en referencias.
#' @usage
#' data(raulihg2)
#' @format Contiene variables de nivel individual, como se describen 
#' a continuacion::
#' \describe{
#' \item{tree.code}{Codigo del árbol}											
#' \item{spp}{Nombre comun especie}
#' \item{bha.t}{Edad a la altura del pecho, en años.}
#' \item{h.t}{Altura total, en m.}
#'  }
#' @source 
#' Datos cedidos por el Prof. Christian Salas-Eljatib.
#' @references
#' - Salas-Eljatib C. 2021. An approach to quantify climate-productivity 
#' relationships: an example from a widespread Nothofagus forest. 
#' Ecological Applications 31(4): e02285. \doi{10.1002/eap.2285}
#' 
#' - Salas-Eljatib C. 2021. Time series height-data for Nothofagus alpina 
#' trees. \doi{10.6084/m9.figshare.13521602.v5} 
#' @examples
#' data(raulihg2)    
#' head(raulihg2) 
'raulihg2'
#' Land-cover, environmental and sociodemographic data for the 34 
#' municipalities composing the Greater Santiago area, Santiago, Chile.
#'
#' @description
#' dataset contains 476 observations, 34 categorical and 442 numerical.
#'  Land-cover data was generated through remote 
#' sensing classification techniques using Sentinel-2 satellite images 
#' from year 2016. Temperatures were obtained from 
#' TIRS band 10 of Landsat 8 satellites images. Particulate matter
#'  concentrations were estimated using spatial modelling
#' techniques from 10 pollution stations distributed in the city.
#'  Altitude was generated from a Digital Elevation Model. 
#' Population and poverty were gathered from Casen 2017 survey.
#' @usage
#' data(landcover)
#' @format The data frame contains four variables as follows:
#' \describe{
#' \item{county}{Name of Municipality}											
#' \item{built.p}{Percentage of surface covered by built-up area}
#' \item{vegeta.p}{Percentage of surface covered by vegetation}
#' \item{naked.p}{Percentage of surface covered by bare soil}
#' \item{grass.p}{Percentage of surface covered by deciduous vegetation}
#' \item{p.Deciduo}{Percentage of surface covered by evergreen vegetation}
#' \item{p.Siempreverde}{Percentage of surface covered by evergreen vegetation}
#' \item{temp.winter}{Land surface temperature in celsius degrees at 
#' 2pm on a winter 0\% cloud day}
#' \item{temp.summer}{Land surface temperature in celsius degrees at 
#' 2pm on a summer 0\% cloud day}
#' \item{pm10.winter}{Average particulate matter 10 micron during winter months}
#' \item{pm10.summer}{Average particulate matter 10 micron during summer months}
#' \item{poor.p}{Percentage of people under poverty line year 2017.}
#' \item{eleva}{Average altitude of municipal area.}
#' \item{pop}{Total population of municipality}
#'  }
#' @source 
#' Data were provided by Dr Ignacio Fernandez at 
#' Universidad Adolfo Ibañez (Santiago, Chile).
#' @references
#' Not yet
#' @examples
#' data(landcover)    
#' head(landcover) 
'landcover'
#' Cobertura territorial, ambiental y sociodemografica de los 34 
#' municipios que componen el area del Gran Santiago, Santiago, Chile.. 
#'
#' @description
#' El conjunto de datos contiene 476 observaciones, 34 categoricas y
#'  442 numericas. Los datos de cobertura 
#' terrestre se generaron mediante tecnicas de clasificacion de 
#' teledeteccion utilizando imagenes de satelite 
#' Sentinel-2 del año 2016. Las temperaturas se obtuvieron de la banda
#'  TIRS 10 de las imagenes de los satelites 
#' Landsat 8. Las concentraciones de material particulado se estimaron 
#' mediante tecnicas de modelado espacial 
#' de 10 estaciones de contaminacion distribuidas en la ciudad. La altitud 
#' se genero a partir de un modelo de 
#' elevacion digital. La poblacion y la pobreza se obtuvieron de la encuesta 
#' Casen 2017.
#' @usage
#' data(landcover2)
#' @format Variables se describen a continuacion:
#' \describe{
#' \item{comuna}{Name of Municipality}											
#' \item{const.p}{Porcentaje de superficie cubierta por area construida}
#' \item{vegeta.p}{Porcentaje de superficie cubierta por vegetacion}
#' \item{desnu.p}{Porcentaje de superficie cubierta por suelo desnudo}
#' \item{pasto.p}{Porcentaje de superficie cubierta por cesped}
#' \item{deci.p}{Porcentaje de superficie cubierta por vegetacion de 
#' hoja caduca}
#' \item{sverde.p}{Porcentaje de superficie cubierta por vegetacion 
#' siempre verde}
#' \item{temp.inv}{Temperatura de la superficie terrestre en grados
#'  celsius a las 2 p.m.en un dia de invierno con 0\% de nubes}
#' \item{temp.ver}{Temperatura de la superficie de la tierra en grados
#'  celsius a las 2 p.m.en un dia de verano con 0\% de nubes}
#' \item{pm10.inv}{Material particulado promedio de 10 micrones durante 
#' los meses de invierno}
#' \item{pm10.ver}{Material particulado promedio de 10 micrones durante
#'  los meses de verano}
#' \item{pobreza.p}{Porcentaje de personas por debajo de la linea de 
#' pobreza año 2017}
#' \item{altitud}{Altitud media del termino municipal}
#' \item{pob}{Poblacion total del municipio}
#'  }
#' @source 
#' Los datos fueron cedidos por el Dr Ignacio Fernandez de la
#'  Universidad Adolfo Ibañez (Santiago, Chile).
#' @references
#' Not yet
#' @examples
#' data(landcover2)    
#' head(landcover2) 
'landcover2'
#' Plot-level data with variables from Andean Prumnopitys forests
#'
#' @description
#' Data on density, basal area, mean square diameter and other 
#' variables of 24 plots for Lleuque is provided.
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
#' Vargas-Gaete R, Salas-Eljatib C, Penneckamp D, Neira Z, Diez MC, 
#' Vargas-Picón, R. 2020. Estructura 
#' y regeneración de bosques de Prumnopitys andina en los Andes del sur
#'  de Chile. Gayana Botánica
#'  77(1):48-58. \doi{10.4067/S0717-66432020000100048}
#' @examples
#' data(standLleuque)    
#' head(standLleuque) 
'standLleuque'
#'  Datos con variables a nivel de parcela de bosques de Prumnopitys andina
#'
#' @description
#' Se proporciona informacion de densidad, area basal, diámetro medio
#'  cuadratico  y otras variables de 24 parcelas para Lleuque.
#' @usage
#' data(standLleuque2)
#' @format Variables se describen a continuacion::
#' \describe{
#' \item{rodal}{Número de rodal.}											
#' \item{plot.id}{Codigo de parcela.}
#' \item{nha}{Densidad de parcela, en arb/ha.}
#' \item{gha}{Area basal de parcela, en m\eqn{^{2}}{^2}/ha..}
#' \item{qmd}{Diámetro del árbol de área basal media, en cm.}
#' \item{toph}{Altura dominante, en m.}
#' \item{estructura}{Factor representando a la estructura del bosque, 
#' en tres niveles: Abierto, secundario adulto o puro}
#'  }
#' @source 
#' Los datos fueron cedidos por el Prof. Rodrigo Vargas-Gaete de la Universidad
#'  de La Frontera (Temuco, Chile).
#' @references
#' Vargas-Gaete R, Salas-Eljatib C, Penneckamp D, Neira Z, Diez MC, 
#' Vargas-Picón, R. 2020. Estructura y regeneración de bosques 
#' de *Prumnopitys andina* en los Andes del sur de Chile. Gayana Botánica
#'  77(1):48-58. \doi{10.4067/S0717-66432020000100048}
#' @examples
#' data(standLleuque2)    
#' head(standLleuque2) 
#' table(standLleuque2$rodal,standLleuque2$plot)
'standLleuque2'
#' Data of forest fire occurrence
#'
#' @description
#' Data of forest fire occurrence from Altamirano et al. (2013) as our
#'  population, containing 7210 total observations (N), with only 
#' 890 cases of fire occurrence (N 1 ) and 6320 cases of non occurrence (N0). 
#' The binary variable (Y) is the occurrence of forest 
#' fire, where Y equal to 1 denotes occurrence and Y equal to 0  otherwise.
#' @usage
#' data(forestfire)
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
#' Data were provided by Dr Adison Altamirano at the Universidad de La
#'  Frontera (Temuco, Chile).
#' @references
#' - Altamirano A, Salas C, Yaitul V, Smith-Ramirez C, Avila A. 2013. 
#' Infuencia de la heterogeneidad 
#' del paisaje en la ocurrencia de incendios forestales en Chile Central. 
#' Revista de Geografia del Norte Grande, 55:157-170, 2013.
#' -Salas-Eljatib C, Fuentes-Ramírez A, Gregoire TG, Altamirano A, 
#' Yaitul V. 2018. A study on the effects of unbalanced data when
#'      fitting logistic regression models in ecology. 
#'      Ecological Indicators 85:502-508. \doi{10.1016/j.ecolind.2017.10.030}
#' @examples
#' data(forestfire)    
#' head(forestfire) 
'forestfire'
#' Datos de ocurrencia de incendios forestales  
#'
#' @description
#' Datos de ocurrencia de incendios forestales de Altamirano et al. (2013) 
#' como nuestra poblacion, que contiene 7210 observaciones
#' totales (N), con solo 890 casos de ocurrencia de incendios (N1) y 
#' 6320 casos de no ocurrencia (N0). La variable binaria (Y)
#' es la ocurrencia de un incendio forestal, donde Y igual a 1 denota 
#' ocurrencia e igual a 0 en caso contrario.
#' @usage
#' data(forestfire2)
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
#' - Altamirano A, Salas C, Yaitul V, Smith-Ramirez C, Avila A. 2013. 
#' Infuencia de la heterogeneidad 
#' del paisaje en la ocurrencia de incendios forestales en Chile Central. 
#' Revista de Geografia del Norte Grande, 55:157-170, 2013.
#' -Salas-Eljatib C, Fuentes-Ramírez A, Gregoire TG, Altamirano A, 
#' Yaitul V. 2018. A study on the effects of unbalanced data when
#'      fitting logistic regression models in ecology.
#'       Ecological Indicators 85:502-508. \doi{10.1016/j.ecolind.2017.10.030}
#' @examples
#' data(forestfire2)    
#' head(forestfire2) 
'forestfire2'
#' Tree spatial coordinates in the Rucamanque forest 
#'
#' @description
#' Tree-level variables and spatial coordinates in a permanent sample plot 
#' of 1 ha (100 x 100m) in the Rucamanque 
#'  experimental forest, near Temuco, Chile. 
#' @usage
#' data(pspruca)
#' @format The data frame contains four variables for the standing-alive 
#' trees as follows:
#' \describe{
#' \item{tree.no}{tree number}											
#' \item{species}{Species name, "N. obliqua" is Nothofagus obliqua,
#'  "Ap" is Aexitocicum puncatatum, etc.}
#' \item{crown.class}{Crown class (1: superior, 2: intermediate, 3; inferior)}
#' \item{dbh}{diameter at breast-height, in cm}
#' \item{x.coord}{Cartesian position at the X-axis, in m}
#' \item{y.coord}{Cartesian position at the Y-axis, in m}
#'  }
#' @source 
#' Data were provided by Dr Christian Salas-Eljatib
#'  (Universidad de Chile, Santiago, Chile).
#' @references
#' Salas C, LeMay V, Nunez P, Pacheco P, and Espinosa A. 2006. 
#' Spatial patterns in an old-growth Nothofagus obliqua forest in 
#' south-central Chile. Forest Ecology and Management 231(1-3): 38-46.
#'  \doi{10.1016/j.foreco.2006.04.037}
#' @examples
#' data(pspruca)    
#' head(pspruca) 
#' table(pspruca$species) 
'pspruca'
#' Ubicación espacial de árboles en el bosque de Rucamanque  
#'
#' @description
#' Medidas a nivel de árbol y coordenadas espaciales en un parcela de 
#' muestreo permanente de 1 ha (100 x 100m) en el
#'  bosque de Rucamanque, cerca de Temuco, Chile. Mayores antecedentes en 
#'  las referencias.
#' @usage
#' data(pspruca2)
#' @format Las columnas describen características de los árboles vivos en 
#' pie, como sigue:
#' \describe{
#' \item{arbol}{Número del árbol}											
#' \item{especie}{Nombre de la especie, "N. obliqua" es Nothofagus obliqua, 
#' "Ap" es Aexitocicum puncatatum, etc.}
#' \item{clase.copa}{Clase de copa (1: superior, 2: intermedio, 3; inferior)}
#' \item{dap}{Diámetro a la altura del pecho, en cm}
#' \item{coord.x}{Posicion cartesiana en el eje X, en m}
#' \item{coord.y}{Posicion cartesiana en el eje Y, en m}
#'  }
#' @source 
#' Los datos fueron cedidos por el Dr Christian Salas-Eljatib (Santiago, Chile).
#' @references
#' Salas C, LeMay V, Nunez P, Pacheco P, and Espinosa A. 2006.
#'  Spatial patterns in an old-growth Nothofagus obliqua forest in 
#' south-central Chile. Forest Ecology and Management 231(1-3): 38-46.
#'  \doi{10.1016/j.foreco.2006.04.037}
#' @examples
#' data(pspruca2)    
#' table(pspruca2$especie) 
'pspruca2'																							
#' About the R-Squared statistics: the Anscombe quartet dataset
#'
#' @description
#' A dataset that contains four pairs of columns with the same descriptive
#'  statistics; however, there is a difference when representing the points 
#'  through a graph.
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
#' Anscombe FJ. 1973. Graphs in statistical analysis. 
#' The American Statistician 27:17-21.
#'  \doi{10.2307/2682899}
#' @examples
#' data(aboutrsq)    
#' head(aboutrsq) 
'aboutrsq'
#' Sobre el estadístico R2: los datos del cuarteto de Anscombe  
#'
#' @description
#' Dataset que contiene cuatro pares de columnas con la mismos 
#' estadísticos descriptivos,
#'  sin embargo, si existe diferencia al representar los puntos
#'   mediante un gráfico. 
#' @usage
#' data(aboutrsq2)
#' @format Variables se describen a continuación::
#' \describe{
#' \item{X1}{Valores enteros que representan el eje X para las 
#' columnas Y1, Y2 e Y3}								
#' \item{Y1}{Valores flotantes que representan el eje Y para la columna X1}
#' \item{Y2}{Valores flotantes que representan el eje Y para la columna X1}
#' \item{Y3}{Valores flotantes que representan el eje Y para la columna X1}
#' \item{X2}{Valores enteros que representan el eje X para las columnas Y4}
#' \item{Y4}{Valores flotantes que representan el eje Y para la columna X2}
#'  }
#' @source 
#' Datos fueron contribuidos por el Prof. Christian Salas-Eljatib 
#' (Universidad de Chile, Santiago, Chile).
#' @references
#' Anscombe FJ. 1973. Graphs in statistical analysis.
#'  The American Statistician 27:17-21. 
#'  \doi{10.2307/2682899}
#' @examples
#' data(aboutrsq2)    
#' head(aboutrsq2) 
'aboutrsq2'																							
