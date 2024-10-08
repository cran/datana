% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/describe_datas.R
\docType{data}
\name{landCoverSantiago}
\alias{landCoverSantiago}
\title{Land-cover, environmental and sociodemographic data for the 34 municipalities composing the Greater Santiago area, Santiago, Chile.}
\format{
The data frame contains four variables as follows:
\describe{
\item{Comuna}{Name of Municipality}											
\item{p.Construido}{Percentage of surface covered by built-up area}
\item{p.Vegetacion}{Percentage of surface covered by vegetation}
\item{p.Desnudo}{Percentage of surface covered by bare soil}
\item{p.Pasto}{Percentage of surface covered by deciduous vegetation}
\item{p.Deciduo}{Percentage of surface covered by evergreen vegetation}
\item{p.Siempreverde}{Percentage of surface covered by evergreen vegetation}
\item{Temp Invierno}{Land surface temperature in celsius degrees at 2pm on a winter 0\% cloud day}
\item{Temp Verano}{Land surface temperature in celsius degrees at 2pm on a summer 0\% cloud day}
\item{PM10 Invierno}{Average particulate matter 10 micron during winter months}
\item{PM10 Verano}{Average particulate matter 10 micron during summer months}
\item{p.pobreza 2017}{Percentage of people under poverty line year 2017}
\item{Altitud promedio}{Average altitude of municipal area}
\item{Poblacion}{Total population of municipality}
 }
}
\source{
Data were provided by Dr Ignacio Fernandez at Universidad Adolfo Ibanez (Santiago, Chile).
}
\usage{
data(landCoverSantiago)
}
\description{
dataset contains 476 observations, 34 categorical and 442 numerical. Land-cover data was generated through remote 
sensing classification techniques using Sentinel-2 satellite images from year 2016. Temperatures were obtained from 
TIRS band 10 of Landsat 8 satellites images. Particulate matter concentrations were estimated using spatial modelling
techniques from 10 pollution stations distributed in the city. Altitude was generated from a Digital Elevation Model. 
Population and poverty were gathered from Casen 2017 survey.
}
\examples{
data(landCoverSantiago)    
head(landCoverSantiago) 
}
\references{
Not yet
}
\keyword{datasets}
