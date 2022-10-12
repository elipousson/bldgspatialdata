new_multifamily_units <-
  suppressMessages(
    readr::read_csv(
      "https://opendata.maryland.gov/api/views/pz3y-chyn/rows.csv"
    )
  )

new_multifamily_units_long <-
  tidyr::pivot_longer(
    new_multifamily_units,
    cols = c(dplyr::contains("County"), dplyr::contains("City")),
    names_to = "county",
    values_to = "num_units"
  )

new_multifamily_units_long <-
  new_multifamily_units_long %>%
  dplyr::mutate(
    county = dplyr::case_when(
      county == "Baltimore City" ~ "Baltimore city",
      TRUE ~ county
    )
  ) %>%
  dplyr::select(-c(`Date created`, MARYLAND))

# ggplot(data = filter(md_housing_units_long, county == "Baltimore city")) +
#   geom_col(aes(x = Year, y = num_units, fill = type), position = "dodge")
