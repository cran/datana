#' Prices of gasoline and crude oil
#' @format Data frame of 14 rows and 3 columns:
#' \describe{
#' \item{year}{Year of data}
#' \item{gasoline}{Price of gasoline for `year` in cents / gallon}
#' \item{crude.oil}{Price of crude oil fot `year` in $ / bbl}
#' }
#' @source
#' McClave, James T. Benson, P.G. 1991. Statistics for Business and
#' Economics, Fifth Edition. Dellen and Macmillan.
#' @references
#' Statistial Abstract of the United States: 1989, pp476, 480.
#' @examples
#' data(gasoline)
#' plot(gasoline~year, data = gasoline, type = "b",
#'      ylab = "Gasoline price (cents/gallon)",
#'      xlab = "Year")
"gasoline"
