summary(airquality)
library(reshape2)

melted_data <- melt(airquality)
print(melted_data)
melted_data <- melt(airquality, id.vars = c("Month", "Day"))
print(melted_data)
casted_data <- dcast(melted_data, Month + Day ~ variable)
print(casted_data)
average_data <- dcast(melted_data, Month ~ variable, fun.aggregate = mean)
print(average_data)
