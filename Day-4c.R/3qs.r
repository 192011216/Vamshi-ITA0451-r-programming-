# Load the airquality dataset
data(airquality)

# i. Compute the mean temperature
mean_temp <- sum(airquality$Temp)/length(airquality$Temp)
print(mean_temp)

# Alternatively, you can use the built-in mean() function:
mean_temp2 <- mean(airquality$Temp, na.rm = TRUE)
print(mean_temp2)

# ii. Extract the first five rows from airquality
first_five_rows <- airquality[1:5, ]
print(first_five_rows)

# iii. Extract all columns from airquality except Temp and Wind
all_cols_except_temp_wind <- airquality[, !(names(airquality) %in% c("Temp", "Wind"))]
print(all_cols_except_temp_wind)

# iv. Which was the coldest day during the period?
coldest_day <- airquality[which.min(airquality$Temp), ]
print(coldest_day)

# v. How many days was the wind speed greater than 17 mph?
windy_days <- sum(airquality$Wind > 17, na.rm = TRUE)
print(windy_days)
