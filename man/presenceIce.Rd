% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-presenceIce.r
\docType{data}
\name{presenceIce}
\alias{presenceIce}
\title{Presence or absence of sea ice from logbook records of annual cruises}
\format{
The dataframe contains the following columns:
\describe{
\item{ship.id}{The code number for ships.}
\item{move.type}{Type of movement of ships. 0 indicates a sail-powered
vessel and 1 indicates an auxiliary-powered vessel.}
\item{year}{Year of registry.}
\item{month}{Month of registry.}
\item{day}{Day of registry.}
\item{lat.dec}{Decimal latitude.}
\item{long.dec}{Decimal longitude.}
\item{e.w}{East or west of the Prime Meridian.}
\item{ice.cov}{Sea Ice Observed. 0 no see (Not registered) and 1 presence
sea ice (Registered).}
}
}
\source{
The data were provided from Sea Ice Group at the Geophysical Institute.
}
\usage{
data(presenceIce)
}
\description{
Data containing 52717 observations about presence of sea ice from logbook
records of annual cruises to the B-C-B in an unbroken record between
years 1850 to 1910.
}
\examples{
data(presenceIce)
head(presenceIce)
}
\references{
Mahoney A, Bockstoce J, Botkin D, Eicken H, Nisbet R. 2011. Sea-Ice
Distribution in the Bering and Chukchi Seas: Information from Historical
Whaleships' Logbooks and Journals
ARCTIC. 64(4): 465-477.
}
\keyword{datasets}
