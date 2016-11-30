# This script processes information about the gender and the number of 
# children by the 2012 - 2016 Members of Ghana's parliament. This is in an attempt to find out whether the sex of 
# of a parliamentarian has and influence his/her fertility rate. 

# author ~Maxwell Aladago       30/11/2016

# Make use of data from a file name final_project_data.csv which is crowd source. 

# setting the working directory. change this to match directory 
setwd("/home/aladago/Documents/Ashesi/Fall/Data Mining/Final Project/Data_mining")

# reading the entire data
rawData <- read.csv("final_project_data.csv", header = TRUE)

# separating the two columns(gender and kids) for analysis
processedData <- data.frame(rawData$Gender, rawData$Kids)

# attempting a box plot since the response its a categorical variable vrs quantitative variable
plot(processedData$rawData.Gender, processedData$rawData.Kids)

# crosstabulating the data
genderbyFertility <- xtabs(~processedData$rawData.Gender + processedData$rawData.Kids)

# taking the proportions of the various to obtain a good representation of the data
proportionalGenderbyFertility <- round(prop.table(genderbyFertility, 1)* 100, 2)

# depicting a barplot of gender vrs number of children
barplot(proportionalGenderbyFertility, col = c('green', 'blue'), beside = TRUE, legend =c('F', 'M'), ylab = "Proportion of parliamentarians", xlab = "Sex", main = "Plot of number of children by Gender for Ghana's MPs")

