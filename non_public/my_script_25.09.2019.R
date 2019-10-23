# Sketch of lecture for today

library(nycflights13)
library(tidyverse)

# note: from two dplyr manuals, 

glimpse(flights)
glimpse(airlines)


library("nycflights13")
# Drop unimportant variables so it's easier to understand the join results.
flights2 <- flights %>% select(year:day, hour, origin, dest, tailnum, carrier)

flights2 %>% 
  left_join(airlines)

flights2 %>% left_join(planes, by = "tailnum")

# Exercise
# Run the script from the website. Now do the following:
# Join gapminder with countries_data such that 
new <- gapminder %>% left_join(countries_data) 

# Identify which countries are missing

# Do a join where only countries that are in both datasets are joined
anti_join(gapminder, countries_data) %>% group_by(country)%>% summarise(mean.pop = mean(pop))
