# Load the ChickWeight dataset
data(ChickWeight)

# (i) Explore the summary of the dataset
summary(ChickWeight)
str(ChickWeight)
sapply(ChickWeight, length)

# (ii) Extract the last 6 records of the dataset
last_six <- tail(ChickWeight, 6)
print(last_six)

# (iii) Order the data frame in ascending order by the "weight" feature grouped by "diet"
ordered_df <- ChickWeight[order(ChickWeight$weight), ]
print(ordered_df)

# (iv) Perform melting function based on "Chick", "Time", "Diet" features as ID variables
library(reshape2)
melted_df <- melt(ChickWeight, id.vars = c("Chick", "Time", "Diet"))
print(melted_df)

# (v) Perform cast function to display the mean value of "weight" grouped by "Diet"
mean_weight <- dcast(melted_df, Diet ~ variable, mean)
print(mean_weight)
