"
importing multiple CSV files from a designated directory and convert them into different tibbles in various data strucute and schema
07/10/2018
Mike Yang 
Auckland
"

library(tidyverse)

setwd("C:/Users/mickeyang/Desktop/")
# getwd()

all_docs <- list.files(pattern = "(.csv)")
# all_docs
# length(all_docs)

readCSVFiles <- function(fileNumber) {
  tempDataset <- read_csv(all_docs[fileNumber])
  return(tempDataset)
}

for (i in 1:length(all_docs)) {
  datasetName = paste("dataset", i, sep = "")
  # print(index)
  assign(datasetName,readCSVFiles(i))
}