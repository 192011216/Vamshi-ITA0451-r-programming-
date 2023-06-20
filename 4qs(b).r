# Predict delTime for n.prod = 9 and distance = 450
newdata <- data.frame(n.prod = 9, distance = 450)
prediction <- predict(model, newdata = newdata)

# Print the predicted delTime
prediction
