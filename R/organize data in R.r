library(tiyverse)
penguins %>% arrange(bill_length_mm)
penguins %>% arrange(-bill_length_mm)
penguins2 <- penguins %>% arrange(-bill_length_mm)
View(penguins2)
penguins %>% group_by(island) %>% drop_na() %>% summarise(mean_bill_length_mm = mean(bill_length_mm))

penguins %>% filter(species == "Adelie")
