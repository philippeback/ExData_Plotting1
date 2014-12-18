url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

download.file(url, destfile="./data/power.zip", method="curl")

list.files("./data")

unzip("./data/power.zip")

list.files("./data")

dateDownloaded <- date()



