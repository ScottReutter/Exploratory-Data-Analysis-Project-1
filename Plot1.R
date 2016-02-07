##Get and subset the data
datafull <- "./ExData_Plotting1/household_power_consumption.txt"
data <- read.table(datafull, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

##Create and save Plot 1
GlobalActivePower <- as.numeric(subsetdata$Global_active_power)
png("Plot1.png", width=480, height=480)
hist(GlobalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
