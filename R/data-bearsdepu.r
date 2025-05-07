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
'bearsdepu'
