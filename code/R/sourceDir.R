#' @title source (load) functions
#' @description source (load) functions
#' @export
#' @param ext extention to be loaded.
#' @inheritParams base::list.files
# @param a character vector of full path names; the default corresponds to the working directory, getwd(). Tilde expansion (see path.expand) is performed. Missing values will be ignored.
#' @examples
#' # choose a directory (folder) where (.R or .r) functions are
#' sourceDir(choose.dir())
#' sourceDir(choose.dir(), recursive = TRUE) # source sub-directories too.
#' @seealso R.utils::sourceDirectory
sourceDir <- function(path = ".", ext = c("r", "R"), ...){
  wd0 <- getwd()
  setwd(path)
  
  patt <- paste0("(.(", paste(ext, collapse="|"), "))$")
  fnames <- list.files(path = path, pattern = patt, ...)
  for(i in 1:length(fnames)) {
    source(fnames[i])
  }
  
  setwd(wd0)
}
