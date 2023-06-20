# Load the required libraries
library(e1071)
library(ggplot2)

# Calculate the skewness of city miles per gallon in the data set mpg
skew_cty <- skewness(mpg$cty)
cat("Skewness of city miles per gallon in the data set mpg:", skew_cty, "\n")

# Create a histogram of city miles per gallon in the data set mpg
qplot(mpg$cty, geom="histogram", binwidth=2, main="City Miles Per Gallon", xlab="Miles Per Gallon")

# Calculate the kurtosis of city miles per gallon in the data set mpg
kurt_cty <- kurtosis(mpg$cty)
cat("Kurtosis of city miles per gallon in the data set mpg:", kurt_cty, "\n")