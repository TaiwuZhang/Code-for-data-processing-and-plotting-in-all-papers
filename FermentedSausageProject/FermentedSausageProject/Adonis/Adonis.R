#R (4.1.1)
#vegan (2.6-4)

library(vegan)

setwd("#location of the data")
data <- read.csv("#name of the data", row.names = 1)
group <- read.csv("#name of the grouping information")
adonis_result <- adonis2(data~group, group, method = "bray", permutations = 999)
adonis_result
