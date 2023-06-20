range_disp <- range(mpg$disp)
cat("Range of disp in the data set mpg:", range_disp, "\n")

quartiles_disp <- quantile(mpg$disp, probs = c(0.25, 0.5, 0.75))
cat("Quartiles of disp in the data set mpg:\n")
print(quartiles_disp)

iqr_disp <- IQR(mpg$disp)
cat("IQR of disp column in the data set mpg:", iqr_disp, "\n"