# load library tidyverse
library(tidyverse)

# print head of diamonds dataset
print(" Head of data:")
head(diamonds)

# apply tapply function to get average price by cut
print("Average price for each cut of diamond:")
tapply(diamonds$price, diamonds$cut, mean)
