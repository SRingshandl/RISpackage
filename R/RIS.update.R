#' Update the RISpackage
#'
#' This function allows you to update the RISpackage from github
#' @keywords RISpackage
#' @keywords update
#' @export
#' @examples
#' RIS.update()


RIS.update <- function() {

  if (!require("devtools",character.only = TRUE)){
    cat("Package devtools not found!")
    cat('Please install via install.packages("devtools", dependencies = TRUE)')
  } else {

    if( ! ("devtools" %in% (.packages()))){
      print("devtools not attached, attaching now")
      library(devtools)
    }

    devtools::install_github('SRingshandl/RISpackage')
    library("RISpackage")
    cat("RISpackage updated and attached via library!")
  }
}


