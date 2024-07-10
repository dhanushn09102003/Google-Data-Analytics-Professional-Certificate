setwd("D:/Dhanush/GDA")
hotel_bookings <- read.csv("hotel_bookings.csv")
head(hotel_bookings)
View(hotel_bookings)
colnames(hotel_bookings)
install.packages("ggplot2")
library(ggplot2)

ggplot(data=hotel_bookings)+geom_point(mapping = aes(x=lead_time,y=children))

ggplot(data=hotel_bookings)+geom_bar(mapping=aes(x=distribution_channel,fill=market_segment))

ggplot(data=hotel_bookings)+
  geom_bar(mapping=aes(x=distribution_channel))+
  facet_wrap(~deposit_type)+
  theme(axis.text.x = element_text(angle=45))


ggplot(data=hotel_bookings)+
  geom_bar(mapping=aes(x=distribution_channel))+
  facet_grid(~deposit_type)+
  theme(axis.text.x = element_text(angle=45))

ggplot(data=hotel_bookings)+
  geom_bar(mapping=aes(x=distribution_channel))+
  facet_wrap(~deposit_type~market_segment)+
  theme(axis.text.x = element_text(angle=45))


library(tidyverse)

onlineta_city_hotels <- filter(hotel_bookings, 
                               (hotel=="City Hotel" & 
                                  hotel_bookings$market_segment=="Online TA"))
View(onlineta_city_hotels)

ggplot(data=onlineta_city_hotels)+geom_point(mapping = aes(x=lead_time,y=children))
