source("LoadData.R")

with(dat2, plot(Time, Sub_metering_1, type="n", ylab="Energy sub metering", xlab=""))
with(dat2, lines(Time, Sub_metering_1, col="grey"))
with(dat2, points(Time, Sub_metering_2, col="red", type="s"))
with(dat2, points(Time, Sub_metering_3, col="blue", type="s"))
legend("topright", col = c("grey", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=c(1,1,1), lwd=c(2.5,2.5,2.5), xjust=c(1,1,1), cex=.5)
dev.copy(png,file="Plot3.png")
dev.off()