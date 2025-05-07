#' The function produces a panel of multiple scatterplots and histograms,
#' showing
#' the correlation coefficient among all pairs of variables. Notice that
#' the data must contain only numeric variables.
#'
#' @details
#' Generates a multipanel (matrix) of scatterplots and histograms to explore
#' potential relationships among variables.
#'
#' @title Figure of a matrix of scatterplots and histograms for several
#' variables.
#' @param x is a dataframe containing all the numeric variables to be used
#' for drawing the panel plot
#' @param smooth a logical value for drawing smooth curves. The default is
#' set to TRUE.
#' @param scale scales the correlation font by the size of the absolute
#' correlation. The default is set to FALSE.
#' @param density a logical value for drawing a density curve. The default
#'  is set to TRUE.
#' @param col.densi.curve a string with the name of the color to be used for
#'  the density curve. The default is set to "black".
#' @param ellipses an optional logical value for drawing an ellipse for the
#'  scatter-plots. The default is set to FALSE.
#' @param col.ellip a string giving the color to be used for the ellipse of
#' the scatterplot. The default is set to "blue".
#' @param col.cent.point a string giving the color to be used for the centroid
#'  point of the ellipse of the scatterplot. The default is set to "blue".
#' @param digits an optional numeric value for the digits to be used for
#' drawing the correlation coefficient in the panel.
#'   Defaults is set to 2.
#' @param method a string giving the method to be used for computing the
#'  correlation coefficient. Default is set to "pearson".
#' @param pch The plot character (The default is 20, which looks like '.').
#' @param lm Plot the linear fit rather than the LOESS smoothed fits.
#' The default is FALSE.
#' @param cor If plotting regressions, should correlations be reported?
#' The default is TRUE.
#' @param jiggle Should the points be jittered before plotting?
#' The default is FALSE.
#' @param factor factor for jittering (1-5), therefore only needed
#' if "jiggle" is set to TRUE.
#' @param col.hist a string giving the color to be used for the histograms
#'  of the panel. Default is set to "cyan".
#' @param show.points a logical value for drawing the points in the
#'  scatter-plots. Defauls is set to TRUE.
#' @param col.points a string giving the color to be used for the data points.
#' Default is set to "gray".
#' @param col.smooth a string giving the color to be used for the smoothed
#'  curve of the scatterplot. Default is set to "red".
#' @param rug  a logical value for drawing the rugs in the histograms.
#'  Defauls is set to TRUE.
#' @param breaks a string giving the method to be used for obtaining the
#' breaks of the histogram. Defauls is set to "Sturges".
#' @param cex.cor If this is specified, this will change the size of the
#' text in the correlations. this
#'  allows one to also change the size of the points in the plot by
#'  specifying the normal cex values. If just
#'  specifying cex, it will change the character size, if cex.cor is
#'   specified, then cex will function to change the point size.
#' @param smoother If TRUE, then smooth.scatter the data points-slow but
#'  pretty with lots of subjects
#' @param ci Draw confidence intervals for the linear model or for the
#' loess fit, defaults to ci=FALSE. If confidence
#'   intervals are not drawn, the fitting function is lowess.
#' @param alpha an optional numeric value for the significance level.
#'  Defauls is set to 0.05.
#' @inheritParams graphics::plot
#' @importFrom methods is
#'
#' @references
#' - Salas-Eljatib C. 2021. Análisis de datos con el programa estadístico R:
#' una introducción aplicada. Ediciones Universidad Mayor. Santiago, Chile.
#' \url{https://eljatib.com}
#' @return This function returns a multipanel of scatterplots and histograms
#' @author A modification of Christian Salas-Eljatib of the
#' function pairs.panels of the package \eqn{psych}.
#' @examples
#' ##First example
#' data(bears2)
#' head(bears2)
#' df <- bears2[,c('peso','edad','cabezaL','cabezaA','largo','pechoP')]
#' descstat(df)
#' xymultiplot(df)
#' xymultiplot(df,ellipse=TRUE)
#' xymultiplot(df,ellipses=TRUE,col.cent.point = "yellow",
#'  col.densi.curve = "dark green",col.hist = "white")
#' @rdname xymultiplot
#' @export
#'
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
xymultiplot <- function (x, smooth = TRUE, scale = FALSE, density = TRUE,
  digits = 2, method = "pearson", pch = 20, lm = FALSE,
 cor = TRUE, jiggle = FALSE, factor = 2,
 col.hist = "cyan", col.densi.curve="black",
 show.points = TRUE, col.points="gray",
 smoother = FALSE, col.smooth="red",
 ellipses = FALSE, col.ellip="blue",col.cent.point="green",
  rug = TRUE, breaks = "Sturges", cex.cor = 1, #wt = NULL,  stars = FALSE,
              ci = FALSE, alpha = 0.05, ...)
{
  "panel.hist.density" <- function(x, ...) {
    usr <- graphics::par("usr")
    on.exit(graphics::par(usr=usr))
    graphics::par(usr = c(usr[1], usr[2], 0, 1.5))
    tax <- table(x)
    if (length(tax) < 11) {
      breaks <- as.numeric(names(tax))
      y <- tax/max(tax)
      interbreak <- min(diff(breaks)) * (length(tax) -
                                           1)/41
      graphics::rect(breaks - interbreak, 0, breaks + interbreak,
           y, col = col.hist)
    }
    else {
      h <- graphics::hist(x, breaks = breaks, plot = FALSE)
      breaks <- h$breaks
      nB <- length(breaks)
      y <- h$counts
      y <- y/max(y)
      graphics::rect(breaks[-nB], 0, breaks[-1], y, col = col.hist)
    }
    if (density) {
      tryd <- try(d <- density(x, na.rm = TRUE, bw = "nrd",
                               adjust = 1.2), silent = TRUE)
        if(methods::is(tryd,"try-error")==FALSE){
        d$y <- d$y/max(d$y)
        graphics::lines(d,col=col.densi.curve)
      }
    }
    if (rug)
      rug(x)
  }
  "panel.cor" <- function(x, y, digits = 2, prefix = "", ...) {
    usr <- graphics::par("usr")
    on.exit(graphics::par(usr=usr))
    graphics::par(usr = c(0, 1, 0, 1))
      r <- stats::cor(x, y, use = "pairwise", method = method)
    txt <- format(c(round(r, digits), 0.123456789), digits = digits)[1]
    txt <- paste(prefix, txt, sep = "")
cex <- cex.cor * 0.8/(max(graphics::strwidth("0.12***"),
                          graphics::strwidth(txt)))
    if (scale) {
      cex1 <- cex * abs(r)
      if (cex1 < 0.25)
        cex1 <- 0.25
      graphics::text(0.5, 0.5, txt, cex = cex1)
    }
    else {
      graphics::text(0.5, 0.5, txt, cex = cex)
    }
  }
  "panel.smoother" <- function(x, y, pch = graphics::par("pch"), #col.smooth = "red", #col.points="black",
                               span = 2/3, iter = 3, ...) {
    xm <- mean(x, na.rm = TRUE)
    ym <- mean(y, na.rm = TRUE)
    xs <- stats::sd(x, na.rm = TRUE)
    ys <- stats::sd(y, na.rm = TRUE)
    r = stats::cor(x, y, use = "pairwise", method = method)
    if (jiggle) {
      x <- jitter(x, factor = factor)
      y <- jitter(y, factor = factor)
    }
    if (smoother) {
      graphics::smoothScatter(x, y, add = TRUE, nrpoints = 0)
    }
    else {
      if (show.points)
        graphics::points(x, y, pch = pch, col= col.points,...)
    }
    ok <- is.finite(x) & is.finite(y)
    if (any(ok)) {
      if (smooth & ci) {
        lml <- stats::loess(y ~ x, degree = 1, family = "symmetric")
        tempx <- data.frame(x = seq(min(x, na.rm = TRUE),
                                    max(x, na.rm = TRUE), length.out = 47))
        pred <- stats::predict(lml, newdata = tempx, se = TRUE)
        if (ci) {
          upperci <- pred$fit + confid * pred$se.fit
          lowerci <- pred$fit - confid * pred$se.fit
          graphics::polygon(c(tempx$x, rev(tempx$x)), c(lowerci,
            rev(upperci)),
      col = grDevices::adjustcolor("light grey", alpha.f = 0.8), border = NA)
        }
    graphics::lines(tempx$x, pred$fit, col = col.ellip, ...)#smooth, ...)
      }
      else {
        if (smooth)
          graphics::lines(stats::lowess(x[ok], y[ok], f = span,
                              iter = iter), col = col.smooth)
      }
    }
    if (ellipses) #dibuja el punto medio
draw.ellipse(xm, ym, xs, ys, r, col="yellow",#col.smooth = "yellow",#col.smooth,
                   ...)
  }
  "panel.lm" <- function(x, y, pch = graphics::par("pch"), col.lm = "red",
                         ...) {
    ymin <- min(y)
    ymax <- max(y)
    xmin <- min(x)
    xmax <- max(x)
    ylim <- c(min(ymin, xmin), max(ymax, xmax))
    xlim <- ylim
    if (jiggle) {
      x <- jitter(x, factor = factor)
      y <- jitter(y, factor = factor)
    }
    if (smoother) {
      graphics::smoothScatter(x, y, add = TRUE, nrpoints = 0)
    }
    else {
      if (show.points) {
        graphics::points(x, y, pch = pch, ylim = ylim, xlim = xlim,
               ...)
      }
    }
    ok <- is.finite(x) & is.finite(y)
    if (any(ok)) {
      lml <- lm(y ~ x)
      if (ci) {
        tempx <- data.frame(x = seq(min(x, na.rm = TRUE),
                                    max(x, na.rm = TRUE), length.out = 47))
        pred <- stats::predict.lm(lml, newdata = tempx, se.fit = TRUE)
        upperci <- pred$fit + confid * pred$se.fit
        lowerci <- pred$fit - confid * pred$se.fit
        graphics::polygon(c(tempx$x, rev(tempx$x)), c(lowerci,
              rev(upperci)), col = grDevices::adjustcolor("light grey",
                                 alpha.f = 0.8), border = NA)
      }
      if (ellipses) {
        xm <- mean(x, na.rm = TRUE)
        ym <- mean(y, na.rm = TRUE)
        xs <- stats::sd(x, na.rm = TRUE)
        ys <- stats::sd(y, na.rm = TRUE)
        r = stats::cor(x, y, use = "pairwise", method = method)
        draw.ellipse(xm, ym, xs, ys, r, col.smooth = col.lm,
                     ...)
      }
      graphics::abline(lml, col = col.lm, ...)
    }
  }
  "draw.ellipse" <- function(x = 0, y = 0, xs = 1, ys = 1,
          r = 0, col.smooth=col.ellip, add = TRUE, segments = 51, ...) {
    angles <- (0:segments) * 2 * pi/segments
    unit.circle <- cbind(cos(angles), sin(angles))
    if (!is.na(r)) {
      if (abs(r) > 0)
        theta <- sign(r)/sqrt(2)
      else theta = 1/sqrt(2)
      shape <- diag(c(sqrt(1 + r), sqrt(1 - r))) %*% matrix(c(theta,
              theta, -theta, theta), ncol = 2, byrow = TRUE)
      ellipse <- unit.circle %*% shape
      ellipse[, 1] <- ellipse[, 1] * xs + x
      ellipse[, 2] <- ellipse[, 2] * ys + y
      if (show.points)
        graphics::points(x, y, pch = 19, col = col.cent.point, #col.smooth,
               cex = 1.5)
      graphics::lines(ellipse, col=col.ellip,...)
    }
  }
  "panel.ellipse" <- function(x, y, pch = graphics::par("pch"), #col.smooth = "red",
                              ...) {
    segments = 51
    usr <- graphics::par("usr")
    on.exit(graphics::par(usr=usr))
    graphics::par(usr = c(usr[1] - abs(0.05 * usr[1]), usr[2] + abs(0.05 *
                                                            usr[2]), 0, 1.5))
    xm <- mean(x, na.rm = TRUE)
    ym <- mean(y, na.rm = TRUE)
    xs <- stats::sd(x, na.rm = TRUE)
    ys <- stats::sd(y, na.rm = TRUE)
    r = stats::cor(x, y, use = "pairwise", method = method)
    if (jiggle) {
      x <- jitter(x, factor = factor)
      y <- jitter(y, factor = factor)
    }
    if (smoother) {
      graphics::smoothScatter(x, y, add = TRUE, nrpoints = 0)
    }
    else {
      if (show.points) {
        graphics::points(x, y, pch = pch, ...)
      }
    }
    angles <- (0:segments) * 2 * pi/segments
    unit.circle <- cbind(cos(angles), sin(angles))
    if (!is.na(r)) {
      if (abs(r) > 0)
        theta <- sign(r)/sqrt(2)
      else theta = 1/sqrt(2)
      shape <- diag(c(sqrt(1 + r), sqrt(1 - r))) %*% matrix(c(theta,
                theta, -theta, theta), ncol = 2, byrow = TRUE)
      ellipse <- unit.circle %*% shape
      ellipse[, 1] <- ellipse[, 1] * xs + xm
      ellipse[, 2] <- ellipse[, 2] * ys + ym
      graphics::points(xm, ym, pch = 19, col = col.ellip,
             cex = 1.5)
      if (ellipses)
        graphics::lines(ellipse, ...)
    }
  }
  old.par <- graphics::par(no.readonly = TRUE)
  on.exit(graphics::par(old.par))
  if (missing(cex.cor))
    cex.cor <- 1
  for (i in 1:ncol(x)) {
    if (is.character(x[[i]])) {
      x[[i]] <- as.numeric(as.factor(x[[i]]))
      colnames(x)[i] <- paste(colnames(x)[i], "*", sep = "")
    }
  }
  n.obs <- nrow(x)
  confid <- stats::qt(1 - alpha/2, n.obs - 2)
  if (!lm) {
    if (cor) {
graphics::pairs(x, diag.panel = panel.hist.density,
                upper.panel = panel.cor,
            lower.panel = panel.smoother, las=1,pch = pch, ...)
    }
    else {
graphics::pairs(x, diag.panel = panel.hist.density,
                upper.panel = panel.smoother,
            lower.panel = panel.smoother, las=1,pch = pch, ...)
    }
  }
  else {
    if (!cor) {
      graphics::pairs(x, diag.panel = panel.hist.density,
                      upper.panel = panel.lm,
            lower.panel = panel.lm, pch = pch, ...)
    }
    else {
      graphics::pairs(x, diag.panel = panel.hist.density,
                      upper.panel = panel.cor,
            lower.panel = panel.lm, pch = pch, ...)
    }
  }
}
#================================================================================
