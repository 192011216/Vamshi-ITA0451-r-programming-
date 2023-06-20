# Step 1: Load the USArrests dataset
data(USArrests)

# (i) a. Explore the summary of the dataset
summary(USArrests)
str(USArrests)
sapply(USArrests, length)

# (i) b. Print the state with the largest total number of rape
largest_rape_state <- names(USArrests$Rape)[which.max(USArrests$Rape)]
cat("State with the largest total number of rape:", largest_rape_state, "\n")

# (i) c. Print the states with the max & min crime rates for murder
max_murder_state <- names(USArrests$Murder)[which.max(USArrests$Murder)]
min_murder_state <- names(USArrests$Murder)[which.min(USArrests$Murder)]
cat("State with the maximum crime rate for murder:", max_murder_state, "\n")
cat("State with the minimum crime rate for murder:", min_murder_state, "\n")

# (ii) a. Find the correlation among the features
correlation <- cor(USArrests)
print(correlation)

# (ii) b. Print the states which have assault arrests more than the median of the country
median_assault <- median(USArrests$Assault)
states_more_than_median <- names(USArrests$Assault)[USArrests$Assault > median_assault]
cat("States with assault arrests more than the median of the country:", states_more_than_median, "\n")

# (ii) c. Print the states in the bottom 25% of murder
murder_percentile <- quantile(USArrests$Murder, probs = 0.25)
states_bottom_25 <- names(USArrests$Murder)[USArrests$Murder < murder_percentile]
cat("States in the bottom 25% of murder:", states_bottom_25, "\n")

# (iii) a. Create a histogram and density plot of murder arrests by US state
hist(USArrests$Murder, main = "Histogram of Murder Arrests", xlab = "Murder Arrests", ylab = "Frequency")
lines(density(USArrests$Murder), col = "red")

# (iii) b. Create a scatter plot that shows the relationship between murder arrest rate and proportion
plot(USArrests$Murder, USArrests$UrbanPop, main = "Murder Arrests vs. Urban Population",
     xlab = "Murder Arrests", ylab = "Urban Population")
