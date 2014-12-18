source("get-data.R")
source("load-data.R")

png(filename="Plot1.png", width=480, height=480,units="px",bg="transparent")

hist(as.numeric(as.character(dataset$Global_active_power)),
     col="red",
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     axes=TRUE
     )

dev.off()