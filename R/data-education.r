#' Stock and Watson CPS Education Earnings
#'
#' @description
#' Stock and Watson (2007)  provide several subsets created from March
#' Current Population Surveys (CPS) with data on the relationship of
#' earnings and education over several years. This data corresponds to
#' the `CPSSWEducation` dataset.
#'
#' @usage
#' data(education)
#'
#' @format
#' A data frame containing 2,950 observations on 4 variables.
#'
#' \describe{
#' \item{age}{Age in years.}
#' \item{gender}{Factor indicating gender.}
#' \item{earnings}{Average hourly earnings (sum of annual pretax
#' wages, salaries, tips, and bonuses, divided by the number of hours
#' worked annually).}
#' \item{education}{Number of years of education.}
#' }
#'
#' @source
#' Data corresponds to dataset `CPSSWEducation` from the package `AER`. Online
#' complements to Stock and Watson (2007).
#'
#' @references
#' - Stock, J.H. and Watson, M.W. (2007). _Introduction to
#' Econometrics_, 2nd ed. Boston: Addison Wesley.
#'
#' @examples
#' data(education)
#'
#' ## Stock and Watson, p. 165
#' plot(earnings ~ education, data = education)
#' fm <- lm(earnings ~ education, data = education)
#' abline(fm)
'education'
