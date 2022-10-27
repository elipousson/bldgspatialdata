# pak::pkg_install("elipousson/mapmaryland")

sf::write_sf(
  mapmaryland::md_counties,
  "files/data/md_counties.gpkg"
)

sf::write_sf(
  mapmaryland::md_zctas,
  "files/data/md_zctas.gpkg"
)
