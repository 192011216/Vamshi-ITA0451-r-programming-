# Load ChickWeight dataset
data("ChickWeight")

# (i) Create a multiple regression model to predict weight based on time and diet
model <- lm(weight ~ Time + Diet, data = ChickWeight)

# (ii) Predict weight for Time=10 and Diet=1
new_data <- data.frame(Time = 10, Diet = 1)
predicted_weight <- predict(model, newdata = new_data)

# (iii) Calculate the error in the model
actual_weight <- ChickWeight$weight[ChickWeight$Time == 10 & ChickWeight$Diet == 1]
error <- actual_weight - predicted_weight

# Print the results
cat("Predicted Weight for Time=10 and Diet=1:", predicted_weight, "\n")
cat("Actual Weight for Time=10 and Diet=1:", actual_weight, "\n")
cat("Error in the Model:", error)
