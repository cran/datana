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
