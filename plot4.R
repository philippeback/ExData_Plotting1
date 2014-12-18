source("get-data.R")
source("load-data.R")

png(filename="Plot4.png", width=480, height=480,units="px",bg="transparent")

dataset$Sub_metering_1 <- as.numeric(as.character(dataset$Sub_metering_1))
dataset$Sub_metering_2 <- as.numeric(as.character(dataset$Sub_metering_2))
dataset$Sub_metering_3 <- as.numeric(as.character(dataset$Sub_metering_3)) 

Sys.setlocale(category = "LC_TIME", locale = "C")

par(mfrow=c(2,2))

# Chart 1

plot(
  dataset$DateTime,
  as.numeric(as.character(dataset$Global_active_power)),
  col="black",     
  ylab="Global Active Power (kilowatts)",
  xlab="",
  axes=TRUE,
  type="l"
)

box()

# Chart 2

plot(
  dataset$DateTime,
  as.numeric(as.character(dataset$Voltage)),
  col="black",     
  ylab="Voltage",
  xlab="datetime",
  axes=TRUE,
  type="l"
)

# Chart 3

plot(
  dataset$DateTime,
  dataset$Sub_metering_1,
  col="black",     
  ylab="Energy sub metering",
  xlab="",
  axes=TRUE,
  type="l"
)

# lines(dataset$DateTime, dataset$Sub_metering_1,col="black")
lines(dataset$DateTime, dataset$Sub_metering_2,col="red")
lines(dataset$DateTime, dataset$Sub_metering_3,col="blue")

box()
legend('topright',c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1,col=c('black', 'red', 'blue'),bty='n',cex=0.9)

# Chart 4

plot(
  dataset$DateTime,
  as.numeric(as.character(dataset$Global_reactive_power)),
  col="black",     
  ylab="Global_reactive_power",
  xlab="datetime",
  axes=TRUE,
  type="l"
)

dev.off()