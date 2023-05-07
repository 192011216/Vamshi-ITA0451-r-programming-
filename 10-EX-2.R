# Load the Titanic dataset
data(Titanic)

# Convert the Titanic object to a data frame
if (!is.data.frame(Titanic)) {
  Titanic <- as.data.frame(Titanic)
}

# Define a new data frame with Class = 1st and Survived = NO
df <- Titanic[Titanic$Class == "1st" & Titanic$Survived == "No", c("Sex", "Age", "Freq")]

# Print the resulting data frame
print(df)
