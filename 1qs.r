# Assuming you have a dataset with weight, time, and diet variables

# Step 1: Load the dataset
data <- read.csv("chicken_data.csv")  # Replace "chicken_data.csv" with your dataset file name
# Step 2: Create the regression model
model <- lm(weight ~ time + diet, data=data)
# Step 3: View the model summary
summary(model)
# Step 4: Predict weight for Time=10 and Diet=1
time_new <- 10
diet_new <- 1
new_data <- data.frame(time = time_new, diet = diet_new)
weight_pred <- predict(model, newdata = new_data)

# Step 5: Find the error in the model for the same prediction
actual_weight <-  # Fill in the actual weight value for Time=10 and Diet=1
error <- (actual_weight - weight_pred)^2

# Step 6: View the predicted weight and error
cat("Predicted weight:", weight_pred, "\n")
cat("Error:", error)
