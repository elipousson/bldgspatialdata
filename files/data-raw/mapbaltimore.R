# pak::pkg_install("elipousson/mapbaltimore")

sfext::write_sf_ext(
  mapbaltimore::neighborhoods,
  filename = "neighborhoods.geojson",
  path = "files/data"
)

baltimore_city_wkt <-
  sfext::get_coords(
    mapbaltimore::baltimore_city,
    geometry = "wkt",
    crs = 4326,
    drop = TRUE
  )

readr::write_csv(
  baltimore_city_wkt,
  file = "files/data/baltimore_city_wkt.csv"
)
