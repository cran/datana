#' Age and physical measurement data for wild bears 
#'
#' @description
#' Wild bears were anesthetized, and their bodies were measured and weighed. 
#' One goal of the study
#'  was to make a table (or perhaps a set of tables) for people interested in
#'   estimating the weight of a
#'  bear based on other measurements. Notice that there are missing values 
#'  for some of the variables.
#' @usage
#' data(bears)
#' @format Contains individual-level variables, as follows:
#' \describe{
#'   \item{id}{Bear id}
#' \item{age}{Age in total number of months.}
#' \item{month}{Month number within a given year.}
#' \item{sex}{1 =male, 2 = female.}
#' \item{headL}{Length of head, in cm.}
#' \item{headW}{Width of head, in cm.}
#' \item{neckG}{Girth of neck, in cm.}
#' \item{length}{Body length, in cm.}
#' \item{chestG}{Girth of chest, in cm.}
#' \item{weight}{body weight, in kg.}
#' \item{obs}{Temporal observation number for bear.}
#' \item{name}{Name given to bear.}
#'  }
#' @source 
#' According to Prof. Timothy Gregoire at Yale University (New Haven, CT, USA), 
#' the
#'  data set was supplied by Gary Alt.
#' @references
#' Entertaining references are in Reader's Digest April, 1979, and Sports 
#' Afield September, 1981.
#' @examples
#' data(bears)    
#' head(bears) 
#' table(bears$sex)
#' boxplot(headL~sex, data=bears)
'bears'
