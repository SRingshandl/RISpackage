# RISpackage
R functions, mainly for me, maybe for others

## install via R commands:

install.packages("devtools")  
library("devtools")  
devtools::install_github('SRingshandl/RISpackage')  
library("RISpackage")  

## Contents for now:  
RIS.asJob - execute code as a RStudio job without saving the code in a new file beforehand
RIS.update - update RISpackage without further commands  
RIS.source - source only a part of a R script and not the whole (as source() would do)  
RIS.test - check whether RISpackage is installed and loaded correctly  
RIS.troll - ease up a bit  
