#' Load all packages I will use for data management.
#' Note: I think 'import' is the best way to build a package when using external
#' functions from other packages. I do this only for convenience because most of
#' the time I use some functions form these packages.
#'
#' @return none
#' @export
#'
#' @examples
load_pkgs <- function() {
  # read data
  requireNamespace("data.table")

  # data management
  requireNamespace("dplyr")
  requireNamespace("reshape2")

  # plot and visualization
  requireNamespace("ggplot2")
  requireNamespace("gridExtra")
  requireNamespace("Hmisc")

  # statistics (e.g., skewness, kurtosis, shapiro.test, etc.)
  requireNamespace("caret")
  requireNamespace("rstatix")
  requireNamespace("moments")

  # models (e.g., lme, Anova, etc.)
  requireNamespace("nlme")
  requireNamespace("multcomp")
  requireNamespace("car")
}
