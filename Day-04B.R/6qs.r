# Load the dataset
data(warpbreaks)

# Check the names of the variables in the dataset
names(warpbreaks)

# Fit a Poisson regression model
model <- glm(breaks ~ type + tension, data = warpbreaks, family = poisson)

# Print the summary of the model
summary(model)
