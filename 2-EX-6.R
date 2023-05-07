# Load the trees dataset and make sure it is a data frame
data(trees)
if(!is.data.frame(trees)) {
  trees <- as.data.frame(trees)
}

# Create the new data frame A
A <- data.frame(
  Girth = c(mean(trees$Girth), min(trees$Girth), max(trees$Girth), sum(trees$Girth)),
  Height = c(mean(trees$Height), min(trees$Height), max(trees$Height), sum(trees$Height)),
  Volume = c(mean(trees$Volume), min(trees$Volume), max(trees$Volume), sum(trees$Volume)),
  row.names = c("mean_tree", "min_tree", "max_tree", "sum_tree")
)
A
