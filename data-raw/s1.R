library(tidyverse)

path <- here::here("data-raw/pone.0012355.s004.xls")
raw_data <- readxl::read_excel(path = path)
n_cycles <- nrow(raw_data)

copies <- rep(5 * 10 ^ (3:8), 2)
dilution <- (5*10^8) / copies
replicate <- rep(1:2, each = 6)

s1 <-
  raw_data |>
  tidyr::pivot_longer(cols = -1L,
                      names_to = "well",
                      values_to = "fluor") |>
  dplyr::mutate(
    plate = factor(NA_character_),
    dye = factor("SYTO 13"),
    target = factor("S1"),
    sample_type = factor("std")
  ) |>
  dplyr::mutate(replicate = as.factor(rep(replicate, n_cycles))) |>
  dplyr::mutate(copies = as.integer(rep(copies, n_cycles))) |>
  dplyr::mutate(dilution = as.integer(rep(dilution, n_cycles))) |>
  dplyr::relocate(plate,
                  well,
                  dye,
                  target,
                  sample_type,
                  replicate,
                  copies,
                  dilution,
                  cycle,
                  fluor) |>
  dplyr::arrange(dilution, replicate, cycle)

usethis::use_data(s1, overwrite = TRUE)
