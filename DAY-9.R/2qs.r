# Load the airquality dataset
data(airquality)

# i. Compute the mean temperature (without using built-in function)
mean_temperature <- sum(airquality$Temp) / length(airquality$Temp)
print(mean_temperature)

# ii. Extract the first five rows from airquality
first_five_rows <- airquality[1:5, ]
print(first_five_rows)

# iii. Extract all columns from airquality except Temp and Wind
subset_airquality <- airquality[, !(names(airquality) %in% c("Temp", "Wind"))]
print(subset_airquality)

# iv. Find the coldest day during the period
coldest_day <- airquality$Day[which.min(airquality$Temp)]
print(coldest_day)

# v. Count the number of days with wind speed greater than 17 mph
wind_speed_gt_17 <- sum(airquality$Wind > 17)
print(wind_speed_gt_17)
