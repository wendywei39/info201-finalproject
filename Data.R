library(jsonlite)
library(dplyr)
library(httr)

response <- GET("http://api.airvisual.com/v2/countries?key=zjh4dyiPncitNtYfF")

body <- content(response, "text")
parsed.data <- fromJSON(body)