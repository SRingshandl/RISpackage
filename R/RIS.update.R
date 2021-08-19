#' Update the RISpackage
#'
#' This function allows you to update the RISpackage from github.
#' @keywords RISpackage
#' @keywords github
#' @keywords update
#' @import later
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

    cat("detaching RISpackage")
    detach("package:RISpackage", unload = TRUE)

    later(function() {
      cat("RISpackage updating and attaching via library! Please wait!\n")
      devtools::install_github('SRingshandl/RISpackage')
      }, 5)

  }
}


