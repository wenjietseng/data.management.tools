#' Print head, summary, and str at the same time
#' @importFrom utils head str
#' @param df a data.frame object
#'
#' @return
#' @export
#'
#' @examples
print_data_info <- function(df) {
  if (!is.data.frame(df)) stop("The input is not a data.frame")
  else
  {
    print(list("head" = head(df), "summary" = summary(df)))
    str(df)
  }
}
