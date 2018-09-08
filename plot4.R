#plot 4
par(mfrow = c(2,2))
plot(strptime(df$Date_Time,"%Y-%m-%d %H:%M:%S"),df$Global_active_power,
     type='l',
     xlab="",
     ylab = "Global Active Power (kilowatts)")

plot(strptime(df$Date_Time,"%Y-%m-%d %H:%M:%S"),df$Voltage,
     type='l',
     xlab="datetime",
     ylab = "Voltage")

plot(strptime(df$Date_Time,"%Y-%m-%d %H:%M:%S"), type="n", df$Sub_metering_1,xlab = "", ylab="Energy sub metering") 
points(strptime(df$Date_Time,"%Y-%m-%d %H:%M:%S"),df$Sub_metering_1,type="l")
points(strptime(df$Date_Time,"%Y-%m-%d %H:%M:%S"),df$Sub_metering_2,type="l",col="red")
points(strptime(df$Date_Time,"%Y-%m-%d %H:%M:%S"),df$Sub_metering_3,type="l",col="blue")
legend("topright",lty=1,cex=0.7,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

plot(strptime(df$Date_Time,"%Y-%m-%d %H:%M:%S"),df$Global_reactive_power,
     type='l',
     xlab="datetime",
     ylab = "Global_reactive_power")
dev.copy(png,filename="plot4.png")
dev.off ()