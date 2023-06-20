# Load the "delivery" dataset
data(delivery)

# Create a linear regression model
model <- lm(delTime ~ n.prod + distance, data = delivery)

# Print the summary of the model
summary(model)

# Predict delTime for n.prod = 9 and distance = 450
newdata <- data.frame(n.prod = 9, distance = 450)
prediction <- predict(model, newdata = newdata)

# Print the predicted delTime
prediction
