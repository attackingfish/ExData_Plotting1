rm(list=ls())

data <- read.csv("household_power_consumption.txt", sep=";")
datetime <- strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S")

plot(datetime,data$Sub_metering_1, xlab="", ylab="Energy sub metering", type="l")
lines(datetime,data$Sub_metering_2, xlab="", type="l", col="red")
lines(datetime,data$Sub_metering_3, xlab="", type="l", col="blue")

legend("topright",paste("Sub_metering_",1:3), lty=1, col=c("black","red","blue"))

dev.copy(png,"plot3.png",width = 480, height = 480)
dev.off()