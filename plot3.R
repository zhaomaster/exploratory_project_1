setwd("c:/rwork/exploratory analysis")
data.Read <- read.table("./household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE)
data.Sub <- data.Read[data.Read$Date %in% c("1/2/2007", "2/2/2007"),]
data.Sub$datetime <- strptime(paste(data.Sub$Date, data.Sub$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot3.png", width=480, height=480)
with(data.Sub, plot(datetime, as.numeric(Sub_metering_1), type="l", xlab="", ylab="Energy sub metering"))
with(data.Sub, lines(datetime, as.numeric(Sub_metering_2), type="l", col="red"))
with(data.Sub, lines(datetime, as.numeric(Sub_metering_3), type="l", col="blue"))
legend("topright", lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()

