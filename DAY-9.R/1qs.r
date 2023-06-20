kelvin_to_celsius <- function(kelvin_temp) {
  celsius_temp <- kelvin_temp - 273.15
  return(celsius_temp)
}
values <- c(90, 50, 70, 80, 70, 60, 20, 30, 80, 90, 20)

mean_value <- mean(values)
median_value <- median(values)
mode_value <- names(table(values))[table(values) == max(table(values))]

print(mean_value)
print(median_value)
print(mode_value)
values <- c(90, 50, 70, 80, 70, 60, 20, 30, 80, 90, 20)

sorted_values <- sort(values, decreasing = TRUE)
second_highest <- sorted_values[2]
third_lowest <- sorted_values[length(unique(sorted_values)) - 2]

print(second_highest)
print(third_lowest)
