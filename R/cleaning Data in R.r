install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")
library(tidyverse)
library(skimr)
library(janitor)
setwd("D:/Dhanush/GDA")
bookings_df <- read_csv("hotel_bookings.csv")

trimmed_df <- bookings_df %>% 
  select( , , )

example_df <- bookings_df %>%
  select(arrival_date_year, arrival_date_month) %>% 
  unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " ")

canceled <- bookings_df %>%
  select(bookings_df, reservation_status = "canceled")

example_df <- bookings_df %>%
  summarize(number_canceled = sum(is_canceled),
            average_lead_time = mean(lead_time))