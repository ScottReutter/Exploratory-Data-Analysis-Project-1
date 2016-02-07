##Get and subset the data
datafull <- "./ExData_Plotting1/household_power_consumption.txt"
data <- read.table(datafull, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

##Create and save Plot 2
datetime <- strptime(paste(subsetdata$Date, subsetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GlobalActivePower <- as.numeric(subsetdata$Global_active_power)
png("Plot2.png", width=480, height=480)
plot(datetime, GlobalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
