setwd("C:/Users/linds/OneDrive/Documents/R")
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "C:/Users/linds/OneDrive/Documents/R/household.zip")
ZipFile<-"C:/Users/linds/OneDrive/Documents/R/household.zip"
unzip(ZipFile,exdir = "./house")
txtFile <- "C:/Users/linds/OneDrive/Documents/R/house/household_power_consumption.txt"
household<-read.table(txtFile, header = T, sep = ";", na.strings="?")
Feb2007<- subset(household, Date == "2/2/2007" | Date == "1/2/2007")
times<- strptime(paste(Feb2007$Date, Feb2007$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
png("plot2.png", width = 480, height = 480, units = "px")
plot(times, Feb2007$Global_active_power, type="l", xlab = "", ylab="Global Active Power (kilowatts)")
dev.off()