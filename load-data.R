# make sure the package is installed 
# install.packages("lubridate")

library(lubridate)

data <- read.table("./household_power_consumption.txt", sep=";", header=TRUE)
data$DateTime <- dmy_hms(paste(data$Date, data$Time))
data$Date <- as.Date(data$Date,"%d/%m/%Y")
dataset <- data[which((data$Date == as.Date("2007-02-01")) | (data$Date == as.Date("2007-02-02"))), ]