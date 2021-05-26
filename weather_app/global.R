options(shiny.trace = F)  

#####---base
library(shiny)
library(shiny.semantic)    
library(semantic.dashboard) 
library(rhandsontable)
library(owmr)
library(leaflet)

source("modules/Dashboard_file.R",local=TRUE)  
#sourced API
OWM_API_KEY= "86daa06743a3c7591436928b2d8ca1af"

# first of all you have to set up your api key
owmr_settings(OWM_API_KEY)

# or store it in an environment variable called OWM_API_KEY (recommended)
Sys.setenv(OWM_API_KEY = OWM_API_KEY) # if not set globally