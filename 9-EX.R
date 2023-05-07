actorial <- function(n) {
  if(n <= 1) {
    return(1)
  } else {
    return(n * factorial(n-1))
  }
}

# Example usage
result <- factorial(9)
cat("9! =", result)
