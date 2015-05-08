setwd("c:/rwork/exploratory analysis")
data.Read <- read.table("./household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE)
data.Sub <- data.Read[data.Read$Date %in% c("1/2/2007", "2/2/2007"),]
data.Sub$datetime <- strptime(paste(data.Sub$Date, data.Sub$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot1.png", width=480, height=480)
with(data.Sub, hist(as.numeric(Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency"))
dev.off()
