png(filename="Plot1.png", width=480, height=480,units="px",bg="transparent")

hist(as.numeric(dataset$Global_active_power),
     col="red",
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     axes=FALSE
     )

axis(1, at=c(0,1000,2000,3000), labels=c("0","2","4","6"))
axis(2)
dev.off()