dt_tbl <- function(data,
                   rownames = FALSE,
                   caption = NULL,
                   filter = "top",
                   ...) {
  DT::datatable(
    data,
    rownames = rownames,
    caption = caption,
    filter = filter,
    ...
  )
}

list_drivers <-
  function(what) {
    drivers <-
      st_drivers(what) %>%
      transmute(
        name = if_else(
          name == long_name,
          name,
          paste0(name, " (", long_name, ")")
        ),
        write = if_else(write, "✅", "❌"),
        write = as.factor(write)
      )

    names(drivers) <- c("Driver name", "Write support")

    drivers
  }

data_file <- function(x) {
  here::here("files/data", x)
}


