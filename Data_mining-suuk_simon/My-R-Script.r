# Simon Baaman Suuk, 63362017, Data Mining Final Group Project, 09/11/2016
# analysing the fertility distribution of MPs in Ghana . 
# We have tried mapping fertility with different categories in the data. eg. fertility with occupation.

# 1. Set the working directory to where you have stored the files
setwd("~/AC_Stuff/Data/tableau/Data_mining")
list.files() # make sure you are in the right directory
# load CSV file into R as a data frame
fertility.df <- read.csv("fertility_occupation.csv", header = TRUE)
# displays the variable names and the top few rows of data
# to make sure that the data frame was created correctly
head(fertility.df)
# to see a contingency table where the data are tallied up 
# according to each of the number of kids:
fertility.ct <- table(fertility.df$Occupation, fertility.df$Kids)
# displays the top few rows of the contingency table
# to make sure it was created correctly
head(fertility.ct)