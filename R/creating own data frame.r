install.packages("tidyverse")
library(tidyverse)
names <- c("Ram","Sham","Vicky","Abdul")
age <- c(14, 15, 18, 28)
people <- data.frame(names,age)
head(people)
str(people)
glimpse(people)
colnames(people)
mutate(people, age_after_20_years = age + 20)
