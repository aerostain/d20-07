library(tidyverse)
library(sf)
library(leaflet)
library(magrittr)

getwd() %>% shell.exec()

maps0 <- st_read(
  "C:/Users/Rick/Downloads/QGis_ENAHOgeoserver/SedeOperativa.shp"
)

maps0 %>% str()

maps0%>%
group_by(SEDEOPERAT)%>%summarise(N=n())
