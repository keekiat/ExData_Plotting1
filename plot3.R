data <- read.csv("project_4/household_power_consumption.txt", na.strings = "?", sep=";", stringsAsFactors=FALSE)
dataFiltered<-data[data$Date=='2/2/2007' | data$Date=='1/2/2007',]
dataFiltered$DateNew<-strptime(paste(dataFiltered$Date, ' ' , dataFiltered$Time),format="%d/%m/%Y %H:%M:%S")

png("plot3.png", width = 480, height = 480)
plot(dataFiltered$DateNew, dataFiltered$Sub_metering_1, ylab="Energy sub metering",xlab="", type="l")
points(dataFiltered$DateNew, dataFiltered$Sub_metering_2,  type="l", col="red")
points(dataFiltered$DateNew, dataFiltered$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"), lty=1)
dev.off()
