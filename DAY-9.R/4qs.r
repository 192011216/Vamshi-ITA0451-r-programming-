# Check for missing values in the dataset
missing_values <- sum(is.na(airquality))
missing_percentage <- missing_values / nrow(airquality) * 100

# If missing values are less than 10%, drop them. Otherwise, replace with mean.
if (missing_percentage < 10) {
  airquality <- na.omit(airquality)
} else {
  airquality[is.na(airquality)] <- mean(airquality, na.rm = TRUE)
}
# Fit linear regression model
model <- lm(Ozone ~ Solar.R, data = airquality)

# Print model summary
summary(model)
# Plot scatter plot
plot(airquality$Solar.R, airquality$Ozone, xlab = "Solar.R", ylab = "Ozone", main = "Scatter Plot")

# Add regression line
abline(model, col = "red")
