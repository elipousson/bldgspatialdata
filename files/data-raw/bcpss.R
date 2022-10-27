# pak::pkg_install("elipousson/bcpss")

bcps_programs_SY2122 <-
  sfext::get_coords(
    bcpss::bcps_programs_SY2122,
    crs = 4326,
    drop = TRUE
  )

readr::write_csv(
  bcps_programs_SY2122,
  "files/data/bcps_programs_SY2122.csv"
)
