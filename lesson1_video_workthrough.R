# week 1 lesson document

#load in packages
source("setup.R")
packageLoad(packages)

#next import data
counties <-  counties(state="UT")
#select just utah county
ut_county <- counties %>% 
  filter(NAME == "Utah")

#import roads for Utah County
roads <- roads(state = "UT", county = "Utah")

#set tmap mode to interactive (for static maps use "plot")
tmap_mode("view")

#what on earth did I just download
#qtm := quick thematic map
qtm(counties)+
  qtm(roads)

#good for customized maps
tm_shape(counties)+
  tm_polygons()


#but what is our data like?
class(counties)
#sf <- "special features" from sf package

#ok cool, what if I have lat/long data? how could I convert this to a sf object?
#first read in CSV
ut_points <- data.frame(name=c("UVU","Home","Friends"),
                        long=c(40.2788,40.3559085,40.3637252),
                        lat=c(111.7154,-111.7079421,-111.7445023))

ut_points_sf <- st_as_sf(ut_points, coords = c("long","lat"),crs=4326)

qtm(ut_county)+
  qtm(ut_points_sf)

#next,ut_points_sf#next, lets look at some raster data
elevation <- get_elev_raster(counties,z=7)
qtm(elevation)

tm_shape(elevation)+
  tm_raster(style="cont",title="Elevation (m)")

#how to use terra package
#note this is opinionated and requires class SpatRaster
elevation <- rast(elevation)

names(elevation) <- "Elevation"

st_crs(counties)

crs(counties)==crs(elevation)


#project elevation
elevation_prj <- terra::project(elevation,counties)

#crop elevation to counties
elevation_crop <- crop(elevation,ext(counties))

qtm(elevation_crop)

#how to read and write spatial data
#to safe sf/vector
#write_sf(#object,"location/name.shp")

#save raster data
#writeRaster(object,"location/name.tif")

#rm(counties, road)
load("data/spatdat.RData")
