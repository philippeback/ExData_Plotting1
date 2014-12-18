source("get-data.R")
source("load-data.R")

png(filename="Plot2.png", width=480, height=480,units="px",bg="transparent")
Sys.setlocale(category = "LC_TIME", locale = "C")
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

dev.off()