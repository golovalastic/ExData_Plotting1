#plot 1
hist(df$Global_active_power,main = "Global Active Power",xlab = "Global Active Power (kilowatts)",ylab = "Frequency",col = "red")
dev.copy(png,filename="plot1.png")
dev.off ()