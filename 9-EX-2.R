# Create the data frame XY
X <- c(1,2,3,1,4,5,2)
Y <- c(0,3,2,0,5,9,3)
XY <- data.frame(X, Y)
XY

# Find the duplicated elements using the 'duplicated' function
duplicated_rows <- duplicated(XY)
duplicated_rows
# Print the duplicated rows
cat("Duplicated rows:\n")
print(XY[duplicated_rows,])

# Keep only the unique rows using the 'unique' function
unique_rows <- unique(XY)

# Print the unique rows
cat("Unique rows:\n")
print(unique_rows)
