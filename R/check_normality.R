#' Print skewness, kurtosis, normality test, and draw qqplot and density plot
#' Note: add doing these by levels
#' @importFrom moments skewness kurtosis
#' @import ggplot2
#' @importFrom gridExtra grid.arrange
#' @importFrom stats sd shapiro.test
#' @param x a vector with of data
#'
#' @return
#' @export
#' @examples
check_normality <- function(x) {
  out_a <- matrix(c(mean(x), sd(x),
                    skewness(x), kurtosis(x)),
                          nrow= 4, ncol = 1,
                          dimnames = list(c("mean",  "sd", "skewness", "kurtosis"),
                                          c("values")) )
  out_b <- shapiro.test(x)

  print(list("info" = out_a, "test" = out_b))

  dens <- ggplot(mapping = aes(x = x)) +
    geom_histogram(aes(y=..density..), color = "black", fill = "lightgray") +
    geom_density(alpha = .2, fill = "steelblue") + theme_bw()

  qq <- ggplot(mapping = aes(sample = x)) +
    stat_qq() +
    stat_qq_line() + theme_bw()

  grid.arrange(dens, qq, nrow = 1)
}
