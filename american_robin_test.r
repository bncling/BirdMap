library(leaflet)
library(sp)

testIcon <- makeIcon(
  iconUrl = "Bird_Images/American_Robin.png",
  iconWidth = 45, iconHeight = 33.76,
  iconAnchorX = 22.5, iconAnchorY = 33.76
)

df <- data.frame(long = -77.0755576, lat = 38.9072958,
                 common_name = "American Robin")

leaflet(df) %>%
  addProviderTiles(providers$CartoDB.Positron) %>%
  addMarkers(~long, ~lat, icon = testIcon, label = ~common_name)