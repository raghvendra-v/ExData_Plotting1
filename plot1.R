house.power.consumption <- read.table(file="household_power_consumption.txt", sep=";", quote="\"", header = T, na.strings = "?")
house.power.consumption <- subset(house.power.consumption, Date == "1/2/2007" | Date == "2/2/2007")
house.power.consumption$Time <- strptime(paste0(house.power.consumption$Date,house.power.consumption$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
house.power.consumption$Date <- as.Date(house.power.consumption$Date,format="%d/%m/%Y")


png(filename = "plot1.png", width = 480, height = 480, units = "px")
hist(house.power.consumption$Global_active_power, col="red", xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()