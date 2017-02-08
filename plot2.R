rm(list=ls())

data <- read.csv("household_power_consumption.txt", sep=";")
datetime <- strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S")

plot(datetime,data$Global_active_power, xlab="", ylab="Global Active Power (kilowatts)", type="l")

dev.copy(png,"plot2.png",width = 480, height = 480)
dev.off()