source("api-keys.R")

library(jsonlite)
library(dplyr)
library(httr)

response <- GET(paste0("http://api.airvisual.com/v2/countries?key=", api.key.air))

body <- content(response, "text")
parsed.data <- fromJSON(body)