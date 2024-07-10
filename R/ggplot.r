install.packages("palmerpenguins")
install.packages("ggplot2")
library(ggplot2)
library(palmerpenguins)
data("penguins")
View(penguins)

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species,shape=species))

ggplot(data=penguins)+geom_point(mapping=aes(x=bill_length_mm,y=bill_depth_mm))

ggplot(data=penguins) + geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g)) + 
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species,shape=species))

ggplot(data=diamonds)+geom_bar(mapping=aes(x=cut,fill=clarity))

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species))+facet_wrap(~species)

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species))+facet_grid(~species)
