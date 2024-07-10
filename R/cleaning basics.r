install.packages("here")
library(here)
install.packages("skimr")
library("skimr")
install.packages("janitor")
library(janitor)
install.packages("dplyr")
library(dplyr)
install.packages("palmerpenguins")
library("palmerpenguins")
skim_without_charts(penguins)


penguins %>%
  select(-species)

penguins %>%
  rename(island_new=island)

rename_with(penguins,tolower)

clean_names(penguins)
