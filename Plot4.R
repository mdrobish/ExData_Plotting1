source("LoadData.R")
par(mfrow=c(2,2))

with(dat2, {
  plot(Time, Global_active_power, ylab="Global Active Power", xlab="", type="l")
  plot(Time, Voltage, ylab="Voltage", xlab="datetime", type="l")
  plot(Time, Sub_metering_1, type="n", ylab="Energy sub metering", xlab="")
    with(dat2, lines(Time, Sub_metering_1, col="grey"))
    with(dat2, points(Time, Sub_metering_2, col="red", type="s"))
    with(dat2, points(Time, Sub_metering_3, col="blue", type="s"))
    legend("topright", col = c("grey", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
           lty=c(1,1,1), lwd=c(2.5,2.5,2.5), cex=.25)
  plot(Time, Global_reactive_power, type="l")
})
dev.copy(png,file="Plot4.png")
dev.off()