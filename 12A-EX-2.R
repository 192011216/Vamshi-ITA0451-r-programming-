buildings <- data.frame(location = c(1, 2, 3), name = c("building1", "building2", "building3"))
data <- data.frame(survey = c(1, 1, 1, 2, 2, 2), location = c(1, 2, 3, 2, 3, 1), efficiency = c(51, 64, 70, 7, 80, 58))

buildingStats <- merge(buildings, data)
buildingStats
