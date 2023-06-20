# Input vector of height
height <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)

# Input vector of weight
weight <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

# Create a data frame using the height and weight vectors
data <- data.frame(height, weight)

# Fit a linear regression model to the data
model <- lm(weight ~ height, data = data)

# Predict the weight of a person with height 170
predicted_weight <- predict(model, data.frame(height = 170))

# Print the predicted weight
cat("Predicted weight for height 170 cm:", round(predicted_weight, 2), "kg\n")

# Generate a scatter plot of the data with the regression line
plot(weight ~ height, data = data, main = "Height vs. Weight", xlab = "Height (cm)", ylab = "Weight (kg)")
abline(model, col = "red")