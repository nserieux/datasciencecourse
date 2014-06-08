getwd()
setwd("~/datasciencecourse")
data = read.csv("hw1_data.csv",header = TRUE)
data_2 = as.list(read.csv("hw1_data.csv",header = TRUE))
class(data_2)
data_2$Ozone
class(data_2$Ozone)
dir()
head(data)
tail(data)
data[47,]
number = is.na(data$Ozone)
data$Ozone[number]

## Analyzing all the cases where values in column not missing
ozone = data[,1]

test = is.na(data_2$Ozone)  ## Find where missing values are
nomiss = data_2$Ozone[!test] ## Choose only nonmissing balues
mean(nomiss)

mean(ozone,na.rm = TRUE)

##Analyzing only complete cases
good <- complete.cases(data) 
ozone_nomiss = data[good, ][,1]
mean(ozone_nomiss)

high = data[,c(1,2,4)] # Subsetting out first and forth column
head(high)


##Using subset function
ozonetemp = subset(data,Ozone > 31 & Temp > 90, select = c(Ozone,Solar.R,Temp))
mean(ozonetemp$Solar.R)
month6 = subset(data,Month == 6,select = c(Month,Temp))
mean(month6$Temp,na.rm = TRUE)
month5 = subset(data,Month == 5,select = c(Month,Ozone))
max(month5$Ozone,na.rm = TRUE)

x <- c(3, 5, 1, 10, 12, 6)
x[x %in% 1:5] <- 0

rm(list = ls())
gc()
