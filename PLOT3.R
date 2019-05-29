## Week 1 Project ## Exploratory Analysis ## Plot 3

  ## Load Data Set
      setwd("D:/Online Learning/Data Specialization/4 Exploratory Analysis")
      powerdata <- read.table("household_power_consumption.txt",skip=1,sep=";")
      names(powerdata) <- c("Date","Time","GlobalActivePower","GlobalReactivePower","Voltage","GlobalIntensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
      subsetdata <- subset(powerdata,powerdata$Date=="1/2/2007" | powerdata$Date =="2/2/2007")
      
  ## Converting Time
      datetime <- strptime(paste(subsetdata$Date, subsetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
      GlobalActivePower <- as.numeric(subsetdata$GlobalActivePower)
      Sub_metering_1 <- as.numeric(as.character(subsetdata$Sub_metering_1))
      Sub_metering_2 <- as.numeric(as.character(subsetdata$Sub_metering_2))
      Sub_metering_3 <- as.numeric(as.character(subsetdata$Sub_metering_3))
                 
  ## Plot 3 - Line plot of submetering
      par(mar= c(4,4,2,1))
      plot(datetime, Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
      lines(datetime, Sub_metering_2, type="l", col="red")
      lines(datetime, Sub_metering_3, type="l", col="blue")
      legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
  
  ## Saving Plot 3 as a .png file
      par(mar= c(4,4,2,1))
      png("plot3.png", width=500, height=500)
      plot(datetime, Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
      lines(datetime, Sub_metering_2, type="l", col="red")
      lines(datetime, Sub_metering_3, type="l", col="blue")
      legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
      dev.off()