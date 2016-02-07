##Get and subset the data
datafull <- "./ExData_Plotting1/household_power_consumption.txt"
data <- read.table(datafull, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

##Prep work
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GlobalActivePower <- as.numeric(subSetData$Global_active_power)
SubMetering1 <- as.numeric(subSetData$Sub_metering_1)
SubMetering2 <- as.numeric(subSetData$Sub_metering_2)
SubMetering3 <- as.numeric(subSetData$Sub_metering_3)

##Create and save Plot 3
png("Plot3.png", width=480, height=480)
plot(datetime, SubMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, SubMetering2, type="l", col="red")
lines(datetime, SubMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()