# This script processes information about the gender and the number of 
# children by the 2012 - 2016 Members of Ghana's parliament. This is in an attempt to find out whether the sex of 
# of a parliamentarian has and influence his/her fertility rate. 

# author ~Maxwell Aladago       30/11/2016

# Make use of data from a file name final_project_data.csv which is crowd source. 

setwd("/home/aladago/Documents/Ashesi/Fall/Data Mining/Final Project/Data_mining")

# reading the entire data
rawData <- read.csv("final_project_data.csv", header = TRUE)

#separating the two columns(gender and kids) for analysis
processedData <- data.frame(rawData$Gender, rawData$Kids)

