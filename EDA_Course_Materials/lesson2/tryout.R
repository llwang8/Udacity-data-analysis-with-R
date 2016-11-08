getwd()
setwd("~/Documents/workspace/OnlineLearning/Udacity/DataAnalyst/Data_Analysis_with_R")

statesInfo <- read.csv('./EDA_Course_Materials/lesson2/stateData.csv')

View(statesInfo)

statesInfo[statesInfo$state.region == 1]

stateSubset <- subset(statesInfo, state.region == 1)
head(stateSubset, 2)
dim(stateSubset)

stateSubsetBracket <- statesInfo[statesInfo$state.region == 1]
head(stateSubsetBracket)
dim(stateSubsetBracket)

subset(statesInfo, illiteracy > 0.5)

reddit <- read.csv('./EDA_Course_Materials/lesson2/reddit.csv')

table(reddit$employment.status)
summary(reddit)

str(reddit)
levels(reddit$age.range)

install.packages('ggplot2')
library(ggplot2)

reddit$age.range <- factor(reddit$age.range, levels = c("Under 18", "18-24", "25-34", "35-44", "45-54", "55-64", "65 or Above"), ordered=T)
qplot(data = reddit, x = reddit$age.range)

reddit$age.range <- ordered(reddit$age.range, levels = c("Under 18", "18-24", "25-34", "35-44", "45-54", "55-64", "65 or Above"))
qplot(data = reddit, x = reddit$age.range)

reddit$income.range <- factor(reddit$income.range, levels = c('Under $20,000', '$20,000 - $29,999', '$40,000 - $49,999', '$50,000 - $69,999', '$70,000 - $99,999', '$100,000 - $149,999', '$150,000+'), ordered=T)
qplot(data = reddit, x = reddit$income.range)

reddit$income.range

rm(numbers)