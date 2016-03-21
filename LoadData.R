filename <- ".\\Data\\household_power_consumption.txt"
dat <- read.table(filename,header=TRUE,sep=";")
dat$Time <- strptime(paste(dat$Date, dat$Time), "%d/%m/%Y %H:%M:%S")
dat$Date <- as.Date(dat$Date, "%d/%m/%Y")
dat2 <- subset(dat, Date=="2007-02-01" | Date=="2007-02-02")
rownames(dat2) <- 1:nrow(dat2)
dat2[as.character(dat2) == "?"] <- NA
indx <- sapply(dat2, is.factor)
dat2[indx] <- lapply(dat2[indx], function(x) as.numeric(as.character(x)))
