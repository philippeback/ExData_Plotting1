source("get-data.R")
source("load-data.R")

png(filename="Plot3.png", width=480, height=480,units="px",bg="transparent")

dataset$Sub_metering_1 <- as.numeric(as.character(dataset$Sub_metering_1))
dataset$Sub_metering_2 <- as.numeric(as.character(dataset$Sub_metering_2))
dataset$Sub_metering_3 <- as.numeric(as.character(dataset$Sub_metering_3)) 

Sys.setlocale(category = "LC_TIME", locale = "C")

plot(
  dataset$DateTime,
  dataset$Sub_metering_1,
  col="black",     
  ylab="Energy sub metering",
  xlab="",
  axes=TRUE,
  type="l"
)

lines(dataset$DateTime, dataset$Sub_metering_2,col="red")
lines(dataset$DateTime, dataset$Sub_metering_3,col="blue")

box()
legend('topright',c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1,col=c('black', 'red', 'blue'),bty='o')

dev.off()