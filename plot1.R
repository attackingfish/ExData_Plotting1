rm(list=ls())

data <- read.csv("household_power_consumption.txt", sep=";")

hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="red")

dev.copy(png,"plot1.png",width = 480, height = 480)
dev.off()