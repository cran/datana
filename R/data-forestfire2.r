#' Ocurrencia de incendios forestales
#'
#' @description
#' Datos de ocurrencia de incendios forestales en la zona central
#' de Chile. Se tienen 7210 observaciones, de las cuales 
#'  890 tienen ocurrencia de incendios y
#' 6320 casos de no ocurrencia. La variable binaria (\eqn{Y})
#' es la ocurrencia de un incendio forestal, donde \eqn{Y=1}  denota
#' ocurrencia y \eqn{Y=0}, lo contrario.
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
#' Datos fueron cedidos por el Dr. Adison Altamirano, Universidad
#'  de La Frontera, Temuco, Chile.
#' @references
#' -Salas-Eljatib C, Fuentes-Ramírez A, Gregoire TG, Altamirano A,
#' Yaitul V. 2018. A study on the effects of unbalanced data when
#' fitting logistic regression models in ecology. Ecological
#' Indicators 85:502-508. \doi{10.1016/j.ecolind.2017.10.030}
#' 
#' - Altamirano A, Salas C, Yaitul V, Smith-Ramirez C, Avila A. 2013.
#' Infuencia de la heterogeneidad
#' del paisaje en la ocurrencia de incendios forestales en
#' Chile Central. Revista de Geografia del Norte Grande,
#' 55:157-170.
#' 
#' @examples
#' data(forestfire2)
#' head(forestfire2)
'forestfire2'
