#to check my working directory
getwd()
#since i will need the functions from tidyverse, I will load the whole package
library(tidyverse)
#to view the dataset
view(`presidential_polls_2020.(1)`)
#this package works for excel
library(readxl)
#Create a list of sheets in the excel file
excel_sheets("presidential_polls_2020 (1).xlsx")
#COmbining the two sheets in excel, first create a new dataframe
sheet1_data <- read_excel("presidential_polls_2020 (1).xlsx", sheet = "Sheet1")
sheet2_data <- read_excel("presidential_polls_2020 (1).xlsx", sheet = "Sheet2")

data <- rbind(sheet1_data,sheet2_data)

#to view the combined two sheets
view(`presidential_polls_2020.(1)`)
#display the tail function

#look at the dataframe created, values inside
view(data)
#to check  the missing values
is.na(data)

#to create a new dataset without missing values
newdata <- na.omit(data)
#checking the new dataset without missing values
view(newdata)
#to check the displays the details on the objecs in the memory
str(newdata)
#various boxplots will be used for visuals, we will chosose objects that are numeric not characters
boxplot((newdata$question_id))
boxplot(newdata$samplesize)
boxplot(newdata$cycle)



