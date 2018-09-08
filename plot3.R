#plot 3
par(mar=c(4,4,1,1))
plot(strptime(df$Date_Time,"%Y-%m-%d %H:%M:%S"), type="n", df$Sub_metering_1,xlab = "", ylab="Energy sub metering") 
points(strptime(df$Date_Time,"%Y-%m-%d %H:%M:%S"),df$Sub_metering_1,type="l")
points(strptime(df$Date_Time,"%Y-%m-%d %H:%M:%S"),df$Sub_metering_2,type="l",col="red")
points(strptime(df$Date_Time,"%Y-%m-%d %H:%M:%S"),df$Sub_metering_3,type="l",col="blue")
legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.copy(png,filename="plot3.png")
dev.off ()