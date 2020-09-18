setup_dir <- function (path) {
  if (is.null(path)) print("Please enter the path/to/your/directory")
  if (!is.character(path)) path <- as.character(path)
  if (.Platform$OS.type == "unix") {
    setwd( paste0("~/", path) )
  } else {
    setwd( paste0("D:/", path) ) # how to choose C or D?
  }
  current_dir <- getwd()
  current_dir <- paste0("The current directory is: ", current_dir)
  list("directory" = current_dir, "contains" = dir())
}
