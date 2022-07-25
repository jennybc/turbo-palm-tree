library(tidyverse)

ipt <- installed.packages() %>%
  as_tibble() %>%
  select(Package, LibPath, Version, Priority, Built) %>%
  write_csv(path = "installed-packages.csv")

ipt
