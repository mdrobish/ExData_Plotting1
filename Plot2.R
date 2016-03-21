source("LoadData.R")

title <- "Global Active Power"
yname <- "Global Active Power (kilowatts)"
with(dat2, plot(Time, Global_active_power, type="l", ylab=yname, xlab=""))
dev.copy(png,file="Plot2.png")
dev.off()