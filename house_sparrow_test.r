library(leaflet)
library(sp)

testIcon <- makeIcon(
  iconUrl = "Bird_Images/House_Sparrow.png",
  iconWidth = 45, iconHeight = 42.11,
  iconAnchorX = 35, iconAnchorY = 33.35
)

df <- data.frame(long = -77.0706327, lat = 38.9074941)

leaflet(df) %>%
  addProviderTiles(providers$CartoDB.Positron) %>%
  addMarkers(~long, ~lat, icon = testIcon)