#' Source part of a R script
#'
#' This function allows you to source part of a R script.
#' @param name specify a nume under which a job is started. Necessary for now
#' @param script the lines of code you want to send to a job
#' @param performJob_ends_here this is not used. But as usage might be confusing it serves as an optical help
#' @keywords RIS
#' @export
#' @examples
#' RIS.asJob(name = "Test_Job", script = ' #copy this to the start of your code and specify name
#' counter <- 0
#' for(i in 1:100){
#'   if(runif(1) >= 0.7){
#'     counter <- counter + 1
#'   }
#' }
#' ', performJob_ends_here) #copy this to the end of your code


RIS.asJob <- function(name, script, performJob_ends_here = NULL){

  library(rstudioapi)

  filepath <- paste0(tempdir(), '/temp_toJob.R')

  writeLines(script, filepath)

  jobRunScript(
    path = filepath,
    name = as.character(name),
    encoding = "unknown",
    workingDir = NULL,
    importEnv = TRUE,
    exportEnv = "R_GlobalEnv"
  )

  print(paste0("Background job ", name, " finished. Please check outcome."))

}
