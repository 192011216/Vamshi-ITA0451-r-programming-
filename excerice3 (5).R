#a
value<-c(12,7,3,4.2,8,2,54,-21,8,-5)
average<-mean(value)
average
#b
values <- c(12, 7, 3, 4.2, 18, 2, 54, -21, 8, -5)  
trimmed_mean <- mean(values, trim = 0.6)  
print(trimmed_mean)
#c 
values <- c(12, 7, 3, 4.2, 18, 2, 54, -21, 8, -5, NA) 
mean_values <- mean(values, na.rm = TRUE)  
print(mean_values)  