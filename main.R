library(tidyverse)
library(sf)
library(leaflet)
library(magrittr)

getwd() %>% shell.exec()

maps0 <- st_read(
  "C:/Users/Rick/Downloads/QGis_ENAHOgeoserver/SedeOperativa.shp"
)

maps0 %>% str()

maps0 %>%
  group_by(SEDEOPERAT) %>%
  summarise(N = n())

maps0f <-
  maps0 %>%
  filter(SEDEOPERAT %in%
    c(
      "LIMA", "ANCASH - CHIMBOTE",
      "ANCASH - HUARAZ", "HUANUCO"
    ))

leaflet() %>%
  addTiles() %>%
  addPolygons(
    data = maps0f,
    popup = maps0f$SEDEOPERAT,
    color = c("red", "green", "blue", "yellow")
  )
