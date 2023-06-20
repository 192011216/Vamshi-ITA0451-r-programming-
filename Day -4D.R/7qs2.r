# Load ChickWeight dataset
data("ChickWeight")


# (iii) Create a Histogram for Weight features belong to Diet-1 category
hist(ChickWeight$weight[ChickWeight$Diet == 1], 
     main = "Histogram of Weight for Diet-1", 
     xlab = "Weight")

# (iv) Create a Histogram for Weight features belong to Diet-4 category
hist(ChickWeight$weight[ChickWeight$Diet == 4], 
     main = "Histogram of Weight for Diet-4", 
     xlab = "Weight")

# (v) Create Scatter plot for weight vs Time grouped by Diet
ggplot(ChickWeight, aes(x = Time, y = weight, color = factor(Diet))) + 
  geom_point() + 
  labs(x = "Time", y = "Weight", color = "Diet") + 
  ggtitle("Scatter plot of Weight vs Time grouped by Diet")
