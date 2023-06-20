calculate_mode <- function(x) {
  freq <- table(x)
  max_freq <- max(freq)
  mode <- names(freq)[freq == max_freq]
  
  return(mode)
}

numeric_data <- c(2,1,2,3,1,2,3,4,1,5,5,3,2,3)
mode_numeric <- calculate_mode(numeric_data)
cat("Mode of numeric dataset:", mode_numeric, "\n")

character_data <- c("o","it","the","it","it")
mode_character <- calculate_mode(character_data)
cat("Mode of character dataset:", mode_character, "\n")