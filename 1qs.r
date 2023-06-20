factorial <- function(n) {
  result <- 1
  for (i in 1:n) {
    result <- result * i
  }
  return(result)
}
set.seed(42)  # Set a seed for reproducibility

# Create the matrix
matrix_data <- matrix(sample(1:100, 12), nrow = 3, ncol = 4, byrow = TRUE)

# Assign column and row names
colnames(matrix_data) <- c("uno", "dos", "tres", "cuatro")
rownames(matrix_data) <- c("x", "y", "z")

# Scale the matrix by 10
scaled_matrix <- matrix_data * 10

# Print the scaled matrix
print(scaled_matrix)
column_uno <- matrix_data[, "uno"]
print(column_uno)
