# Step 1: Load the Titanic dataset
data(Titanic)
# Step 2a: Draw a Bar chart to show details of "Survived" based on passenger Class
survived_by_class <- xtabs(Freq ~ Class + Survived, data = Titanic)
barplot(survived_by_class, beside = TRUE, legend = TRUE,
        col = c("red", "green"), 
        names.arg = c("1st Class", "2nd Class", "3rd Class"), 
        main = "Survival on Titanic by Passenger Class",
        xlab = "Passenger Class", ylab = "Count")
# Step 2b: Modify the above plot based on gender of people who survived
survived_by_class_gender <- xtabs(Freq ~ Class + Sex + Survived, data = Titanic)
barplot(survived_by_class_gender, beside = TRUE, legend = TRUE,
        col = c("red", "green", "blue", "yellow"),
        names.arg = c("1st Class\nFemale", "2nd Class\nFemale", "3rd Class\nFemale", 
                      "1st Class\nMale", "2nd Class\nMale", "3rd Class\nMale"), 
        main = "Survival on Titanic by Passenger Class and Gender",
        xlab = "Passenger Class and Gender", ylab = "Count")
# Step 3: Draw a histogram plot to show the distribution of the "Age" feature
hist(Titanic$Age, breaks = 20, col = "lightblue", main = "Distribution of Age",
     xlab = "Age", ylab = "Count")
