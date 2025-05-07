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
