mpg <- read.csv("https://vincentarelbundock.github.io/Rdatasets/csv/ggplot2/mpg.csv")
head(mpg)

max_city_mpg_row <- which.max(mpg$cty)
max_city_mpg_car <- paste(mpg$manufacturer[max_city_mpg_row], mpg$model[max_city_mpg_row])
cat("Car which gives maximum city miles per gallon:", max_city_mpg_car, "\n")


compact_cars <- subset(mpg, class %in% c("compact", "subcompact"))
min_disp_compact <- compact_cars[which.min(compact_cars$displ), "model"]
cat("Car which gives minimum displacement in compact class:", min_disp_compact, "\n")

subcompact_cars <- subset(mpg, class == "subcompact")
min_disp_subcompact <- subcompact_cars[which.min(subcompact_cars$displ), "model"]
cat("Car which gives minimum displacement in subcompact class:", min_disp_subcompact, "\n")