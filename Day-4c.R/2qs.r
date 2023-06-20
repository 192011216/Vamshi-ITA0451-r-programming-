# Given values
x <- c(90, 50, 70, 80, 70, 60, 20, 30, 80, 90, 20)

# Compute the mean
mean_x <- mean(x)
print(mean_x)

# Compute the median
median_x <- median(x)
print(median_x)

# Compute the mode
mode_x <- names(table(x))[table(x) == max(table(x))]
print(mode_x)
# Given values
x <- c(90, 50, 70, 80, 70, 60, 20, 30, 80, 90, 20)

# Find the 2nd highest value
x_sorted <- sort(unique(x), decreasing = TRUE)
second_highest <- x_sorted[2]
print(second_highest)

# Find the 3rd lowest value
third_lowest <- x_sorted[length(x_sorted) - 2]
print(third_lowest)