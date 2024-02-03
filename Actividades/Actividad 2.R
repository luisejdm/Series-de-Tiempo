library(tidyverse)
library(fpp3)

us_retail_employment <- us_employment %>%
  filter(year(Month) >= 1990, Title == "Retail Trade") %>%
  select(-Series_ID)

us_retail_employment |>
  write.csv("Actividades/datos/empleo_eeuu.csv")