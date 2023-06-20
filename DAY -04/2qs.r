library(ggplot2)
library(dplyr)
library(dslabs)
data(water)
str(water)
ggplot(water, aes(x = hardness, y = mortality)) +
  geom_point() +
  xlab("Water Hardness") +
  ylab("Mortality Rate")
model <- lm(mortality ~ hardness, data = water)
summary(model)
newdata <- data.frame(hardness = 88)
prediction <- predict(model, newdata = newdata)
predictionsu