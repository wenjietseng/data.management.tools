#' Read data using fread
#'
#' @importFrom data.table fread rbindlist
#' @param path_to_data The path to the directory contains only data
#' @param separator separator of your data file
#' @param use_header TRUE if data file contains headers
#'
#' @return a data.frame
#' @export
#'
#' @examples
read_dta <- function(path_to_data, separator = ",", use_header = TRUE) {
  file_names <- paste0(path_to_data, dir(path_to_data))
  dta <- lapply(file_names, function(x) fread(x, sep = separator, header = use_header))
  dta <- as.data.frame(rbindlist(dta))
  dta
}
