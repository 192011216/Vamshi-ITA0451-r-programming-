# Load the mtcars dataset
data(mtcars)

# Fit a multiple regression model with mpg as the response variable and disp, hp, and wt as predictor variables
model <- lm(mpg ~ disp + hp + wt, data = mtcars)

# Print the model summary
summary(model)

# Predict the mileage of a car with disp = 221, hp = 102, and wt = 2.91
newdata <- data.frame(disp = 221, hp = 102, wt = 2.91)
prediction <- predict(model, newdata = newdata)
prediction