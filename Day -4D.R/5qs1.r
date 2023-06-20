count_vowels <- function(str) {
  vowels <- c("a", "e", "i", "o", "u")
  count <- sum(strsplit(tolower(str), "")[[1]] %in% vowels)
  return(count)
}

# Example usage
c <- "matrix"
output <- count_vowels(c)
print(output)
