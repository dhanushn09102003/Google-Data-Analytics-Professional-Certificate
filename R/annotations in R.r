library(ggplot2)
library(palmerpenguins)

ggplot(data=penguins) + 
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="palmer Penguins:Body Mass vs. Flipper Length",subtitle = "A sample of three species",
       caption="Data collected by Dr, Kristen ")+
  annotate("Text",x=220,y=3500,label="The genetos species are the largest",color="purple",fontface="bold",size=4.5,angle=20)

ggsave("Three penguins species.png")
