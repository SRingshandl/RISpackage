#' Source part of a R script
#'
#' This function allows you to source part of a R script.
#' @param file specify R script
#' @param start specifies start line
#' @param end specifies end line
#' @keywords RIS
#' @export
#' @examples
#' RIS.source("test.R", start = 69, end = 420)


RIS.source <- function(file, start, end, ...) {
  file.lines <- scan(file, what=character(), skip=start-1, nlines=end-start+1, sep='\n')
  file.lines.collapsed <- paste(file.lines, collapse='\n')
  source(textConnection(file.lines.collapsed), ...)
}