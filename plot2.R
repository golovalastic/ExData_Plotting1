#plot 2
df$Date <- as.Date(df$Date, format="%d/%m/%Y")
df$Date_Time <- paste(df$Date,df$Time,sep=" ")

plot(strptime(df$Date_Time,"%Y-%m-%d %H:%M:%S"),df$Global_active_power,
     type='l',
     xlab="",
     ylab = "Global Active Power (kilowatts)")
dev.copy(png,filename="plot2.png")
dev.off ()