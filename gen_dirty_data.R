# Generates unclean data from built-in iris dataset

library(datasets)
library(readr)

assign("dirty_data",iris)

names(dirty_data) <- c("sepal_length", "sepal_width",  "petal_length", "petal_width",  "species")

for(i in 1:4) {
    dirty_data[sample(nrow(dirty_data),size=15,replace=FALSE),i] <- -1.0
}

dirty_data$species <- as.character(dirty_data$species)
dirty_data[sample(50,size=5,replace=FALSE),5] <- "SENTOSA"
dirty_data[nrow(dirty_data),5] <- "cell,has,comma"

write_csv(dirty_data,"dirty_data.csv", na="")
