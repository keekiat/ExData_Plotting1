data <- read.csv("project_4/household_power_consumption.txt", na.strings = "?", sep=";", stringsAsFactors=FALSE)
dataFiltered<-data[data$Date=='2/2/2007' | data$Date=='1/2/2007',]
dataFiltered$DateNew<-strptime(paste(dataFiltered$Date, ' ' , dataFiltered$Time),format="%d/%m/%Y %H:%M:%S")


png("plot2.png", width = 480, height = 480)
plot(dataFiltered$DateNew, dataFiltered$Global_active_power, ylab="Global Active Power(kilowatts)",xlab="", type="l")
dev.off()