rm(list=ls())

data <- read.csv("household_power_consumption.txt", sep=";")
datetime <- strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S")

par(mfrow=c(2,2))
#1
plot(datetime,data$Global_active_power, xlab="", ylab="Global Active Power (kilowatts)", type="l")

#2
plot(datetime,data$Voltage,  ylab="Voltage", type="l")

#3
plot(datetime,data$Sub_metering_1, xlab="", ylab="Energy sub metering", type="l")
lines(datetime,data$Sub_metering_2, xlab="", type="l", col="red")
lines(datetime,data$Sub_metering_3, xlab="", type="l", col="blue")

legend("topright",paste("Sub_metering_",1:3), lty=1, col=c("black","red","blue"), bty = "n",cex=0.75)

#4
plot(datetime,data$Global_reactive_power,  ylab="Global_reactive_power", type="l")

dev.copy(png,"plot4.png",width = 480, height = 480)
dev.off()