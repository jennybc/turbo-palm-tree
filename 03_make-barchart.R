#' ---
#' author: "Jenny Bryan"
#' date: "`r format(Sys.Date())`"
#' output: github_document
#' ---

library(tidyverse)
library(fs)

freqtable_file <- dir_ls(glob = "*freqtable.csv")
stopifnot(length(freqtable_file) == 1)

apt_freqtable <- read_csv(freqtable_file)

## apt_freqtable

p <- ggplot(apt_freqtable, aes(x = Built, y = n)) +
  geom_col()

p

#ggsave(here("figs", "built-barchart.png"), p, height = 3)
