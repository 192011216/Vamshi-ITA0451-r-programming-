# Load the iris dataset
data(iris)

# Set the seed for reproducibility
set.seed(123)

# Randomly sample the iris dataset
iris_sample <- iris[sample(nrow(iris)),]

# Split the data into training and test sets
train <- iris_sample[1:round(0.8*nrow(iris_sample)),]
test <- iris_sample[(round(0.8*nrow(iris_sample))+1):nrow(iris_sample),]

# Create a logistic regression model with the training data
model <- glm(Species ~ Petal.Length + Petal.Width, data = train, family = "binomial")

# Predict the probabilities of the model using the test set
probabilities <- predict(model, newdata = test, type = "response")
probabilities

# Convert probabilities to predicted species
predicted_species <- ifelse(probabilities > 0.5, "versicolor", "setosa")

# Create a confusion matrix for the test model
confusion_matrix <- table(test$Species, predicted_species)

# Print the confusion matrix
print(confusion_matrix)
