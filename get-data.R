# Get the data
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
dest <- "./data/power.zip"
dir.create("./data", showWarnings=FALSE)
if (file.exists(dest)) file.remove(dest)
download.file(url, destfile=dest, method="curl")
#unzip overwrites by default
unzip("./data/power.zip")
