source("LoadData.R")

title <- "Global Active Power"
xname <- "Global Active Power (kilowatts)"
yname <- "Frequency"
hist(dat2$Global_active_power, xlab=xname, ylab=yname, main = title, col="red")
dev.copy(png,file="Plot1.png")
dev.off()