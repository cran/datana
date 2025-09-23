#' Interpolation function
#'
#' @details This function interpolate via `spline` missing values in a
#' two dimensional array, where one column ascends while the other
#' descends in value.
#'
#' @title Interpolation function
#'
#' @param x vector of `x` values, should have same length
#' as `y`.
#' @param y vector of `y` values, should have same length
#' as `x`.
#' @param xlu vector of new `x` values given to interpolate
#' corresponding `y` values.
#' @param ylu vector of new `y` values given to interpolate
#' corresponding `x` values.
#' @param arrange sort data based on `x` or `y` values
#' @param asc wether to sort ascending (`TRUE`, default) or descending
#' (`FALSE`).
#' @param completename.x name to use for the `completevals` xlu
#' generated columns.
#' @param completename.y name to use for the `completevals` ylu
#' generated columns.
#' @param overwrite wether to overwrite original values (`TRUE`) or
#' not (`FALSE`, default) if given interpolation points exists in the
#' original data.
#'
#'
#' @author Christian Salas-Eljatib and Nicolás Campos
#'
#' @examples
#' ##- example data
#' my.x <- seq(40, 0, -4)
#' my.x
#'
#' my.y <- seq(0, 20, 2)
#' my.y
#'
#' myData <- data.frame(x = my.x, y = my.y)
#' myData
#'
#' ##- example `xlu'
#' my.xlu <- c(11, 15, 25)
#'
#' ##- example `ylu'
#' my.ylu <- c(15, 5, 9) # note that values can be unordered
#'
#' ##- interpolation
#' new.y <- interp(x = my.x, y = my.y, xlu = my.xlu) # interp missing ylu
#' new.y$intvalues # interpolated rows
#' new.y$datares # interpolated rows appended to original dataframe
#' new.y$completevals
#'
#' new.x <- interp(x = my.x, y = my.y, ylu = my.ylu) # interp missing xlu
#' new.x$intvalues # interpolated rows
#' new.x$datares # interpolated rows appended to original dataframe
#' new.x$completevals
#'
#' ##- both interpolation at the same time
#' interp(x = my.x, y = my.y, xlu = my.xlu, ylu = my.ylu,
#'        arrange = my.y, asc = TRUE)
#'
#' interp(x = my.x, y = my.y, xlu = my.xlu, ylu = my.ylu,
#'        arrange = my.x, asc = TRUE, completename.x = "dlu")
#'
#' ##- when overwrite = TRUE a warning is noted
#' interp(x = my.x, y = my.y, ylu = c(14,11), overwrite = TRUE)
#' interp(x = my.x, y = my.y, xlu = c(28, 15), overwrite = TRUE)
#' interp(x = my.x, y = my.y, xlu = c(28, 15), ylu = c(14,11), overwrite = TRUE)
#'
#' @rdname interp
#' @export
##@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
interp <- function(x, y, xlu = NA, ylu = NA,
                   arrange = y, asc = TRUE,
                   completename.x = "xlu",
                   completename.y = "ylu",
                   overwrite = FALSE) {
    ## generate temp dataframe
    df.hori <- data.frame(x = x, y = y)
    df.h <- stats::na.omit(df.hori)
    ##- checks #######################################################
    ## verify if original data contained NA values, if yes those are
    ## deleted from the interpolation
    if (!identical(dim(df.hori), dim(df.h))) {
        warning("data contained NA, removing them...")
    }
    ## arrange data based on `arrange' and `asc' values
    if (all(arrange == y, na.rm = TRUE)) {
        if (asc) {
            df.h <- df.h[order(df.h$y), ]
            baja <- all(diff(df.h$x) <= 0)
            sube <- all(diff(df.h$y) >= 0)
        } else {
            df.h <- df.h[order(df.h$y, decreasing = TRUE), ]
            baja <- all(diff(df.h$y) <= 0)
            sube <- all(diff(df.h$x) >= 0)
        }
    } else if (all(arrange == x, na.rm = TRUE)) {
        if (asc) {
            df.h <- df.h[order(df.h$x), ]
            baja <- all(diff(df.h$y) <= 0)
            sube <- all(diff(df.h$x) >= 0)
        } else {
            df.h <- df.h[order(df.h$x, decreasing = TRUE), ]
            baja <- all(diff(df.h$x) <= 0)
            sube <- all(diff(df.h$y) >= 0)
        }
    } else {
        stop("Invalid arrange. Use values from 'x' or 'y'.")
    }
    if (!baja || !sube) {
        warning("data is not well suited for interpolation")
    }
    ## check if the user wants to interpolate more values than data
    if (length(xlu) > length(x) || length(ylu) > length(y)) {
        stop("Trying to interpolate more values than the data given. Aborting")
    }
    if (length(xlu) == length(x) || length(ylu) == length(y)) {
        warning("Interpolating equal amount of values than the data given")
    }
    ##- interpolation ################################################
    ## df.ori holds original values in case of overwriting
    df.ori <- df.h
    ## if xlu is given, we interpolate ylu
    if (!all(is.na(xlu))) {
        ## xlu values has to be within the ranges of data
        if (min(xlu) < min(df.h$x) || max(xlu) > max(df.h$x)) {
            stop("xlu outside range")
        }
        ## new pairs of data based on given xlu
        newyl <- data.frame()
        for (i in xlu) {
            if (i %in% df.h$x && overwrite == FALSE) {
                warning(paste("xlu =", i, "in data, omiting interpolation"))
                next
            }
            if (i %in% df.h$x && overwrite == TRUE) {
                warning(paste("xlu =", i, "in data, overwriting"))
                ## delete the row from df.h to be interpolated
                df.h <- subset(df.h, x != i)
            }
            if (!(i %in% df.ori$x)) {
                df.ori <- rbind(df.ori, c(i, NA))
            }
            ## original df.h plus value to interpolate
            dl.h <- rbind(df.h, c(i, NA))
            ## arrange of data
            dl.h <- dl.h[order(-dl.h$x), ]
            ## interpolation of missing value
            intp.h <- stats::spline(dl.h$x, dl.h$y, xout = dl.h$x)
            intp.h <- as.data.frame(intp.h)
            intp.h <- subset(intp.h, x == i)
            newyl <- rbind(newyl, intp.h)
        }
    }
    ## if ylu is given, we interpolate xlu
    if (all(!is.na(ylu))) {
        ## ylu values has to be within the ranges of data
        if (min(ylu) < min(df.h$y) || max(ylu) > max(df.h$y)) {
            stop("ylu outside range")
        }
        ## new pairs of data based on given ylu
        newxl <- data.frame()
        for (i in ylu) {
            if (i %in% df.h$y && overwrite == FALSE) {
                warning(paste("ylu =", i, "in data, omiting interpolation"))
                next
            }
            if (i %in% df.h$y && overwrite == TRUE) {
                warning(paste("ylu =", i, "in data, overwriting"))
                ## delete the row from df.h to be interpolated
                df.h <- subset(df.h, y != i)
            }
            if (!(i %in% df.ori$y)) {
                df.ori <- rbind(df.ori, c(NA, i))
            }
            ## original df.h plus value to interpolate
            hl.h <- rbind(df.h, c(NA, i))
            ## arrange of data
            hl.h <- hl.h[order(hl.h$y), ]
            ## interpolation of missing value
            intp.h <- stats::spline(hl.h$y, hl.h$x, xout = hl.h$y)
            intp.h <- as.data.frame(intp.h)
            intp.h <- subset(intp.h, x == i)
            intp.h <- intp.h[, c(2, 1)]
            newxl <- rbind(newxl, intp.h)

            ## names(newxl) <- c("x", "y")
        }
        names(newxl) <- c("x", "y")
    }
    ## return values interpolated
    intvalues <- data.frame()
    if (exists("newyl")) {
        intvalues <- rbind(intvalues, newyl)
    }
    if (exists("newxl")) {
        intvalues <- rbind(intvalues, newxl)
    }
    ## formating interpolated values
    names(intvalues) <- c("x", "y")
    ## arrange data based on `arrange' and `asc' values
    if (all(arrange == y, na.rm = TRUE)) {
        if (asc) {
            intvalues <- intvalues[order(intvalues$y), ]
        } else {
            intvalues <- intvalues[order(intvalues$y, decreasing = TRUE), ]
        }
    } else if (all(arrange == x, na.rm = TRUE)) {
        if (asc) {
            intvalues <- intvalues[order(intvalues$x), ]
        } else {
            intvalues <- intvalues[order(intvalues$x, decreasing = TRUE), ]
        }
    } else {
        stop("Invalid arrange. Use 'x' or 'y'.")
    }
    rownames(intvalues) <- NULL

    ##- datares resulting dataframe ##################################
    ## identifying real values
    datares <- df.h
    datares$interpolated <- FALSE
    ## adding interpolated values
    intvaluesb <- intvalues
    intvaluesb$interpolated <- TRUE
    datares <- rbind(datares, intvaluesb) # append values
    ## arrange data based on `arrange' and `asc' values
    if (all(arrange == y, na.rm = TRUE)) {
        if (asc) {
            datares <- datares[order(datares$y), ]
        } else {
            datares <- datares[order(datares$y, decreasing = TRUE), ]
        }
    } else if (all(arrange == x, na.rm = TRUE)) {
        if (asc) {
            datares <- datares[order(datares$x), ]
        } else {
            datares <- datares[order(datares$x, decreasing = TRUE), ]
        }
    } else {
        stop("Invalid arrange. Use 'x' or 'y'.")
    }
    rownames(datares) <- NULL # clear row numbers
    ##- add interpolated values as tree variables
    ## we create a 1xn dataframe which holds new values
    completevals <-  data.frame(matrix(ncol = 0, nrow = 1))
    if (exists("newyl")) {
        for (i in newyl$x) {
            sufix.h <- i
            cname.h <- paste(completename.y, sufix.h, sep = ".")
            completevals[cname.h] <- newyl[newyl$x == i, "y"]
        }
    }
    if (exists("newxl")) {
        for (i in newxl$y) {
            sufix.h <- i
            cname.h <- paste(completename.x, sufix.h, sep = ".")
            completevals[cname.h] <- newxl[newxl$y == i, "x"]
        }
    }
    ##- append completevals to datares
    datares.full <- cbind(datares, completevals)
    ##- original values backup names
    ## adding original values to datares.full (merge() doesn't work)
    df.ori$x.ori <- df.ori$x
    df.ori$y.ori <- df.ori$y
    for (i in seq_len(nrow(df.ori))) {
        row.h <- df.ori[i, ]
        if (!is.na(row.h$x) && !is.na(row.h$y)) {
            row.match <- datares.full[datares.full$x == row.h$x & datares.full$y == row.h$y, ]
        } else if (!is.na(row.h$x)) {
            row.match <- datares.full[datares.full$x == row.h$x, ]
        } else if (!is.na(row.h$y)) {
            row.match <- datares.full[datares.full$y == row.h$y, ]
        }
        if (nrow(row.match) > 0) {
            datares.full[datares.full$x == row.match$x & datares.full$y == row.match$y, "x.ori"] <- row.h$x.ori
            datares.full[datares.full$x == row.match$x & datares.full$y == row.match$y, "y.ori"] <- row.h$y.ori
        }
    }
    ## reordering columns
    datares.full <- datares.full[, c("x.ori", "y.ori", "x", "y", names(completevals))]

    ##- output of function ###########################################
    out <- list(intvalues = intvalues,
                datares = datares,
                completevals = completevals,
                datares.full = datares.full)
    return(out)
}
