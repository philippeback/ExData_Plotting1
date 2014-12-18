data <- read.table("./household_power_consumption.txt", sep=";", header=TRUE)
data$Date <- as.Date(data$Date,"%d/%m/%Y")
data$Time<-strptime(data$Time,"%H:%M:%S")
dataset <- data[which((data$Date == as.Date("2007-02-01")) | (data$Date == as.Date("2007-02-02"))), ]
