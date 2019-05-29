## Week 1 Project ## Exploratory Analysis ## Plot 4

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
      Voltage <- as.numeric(subsetdata$Voltage)
      GlobalReactivePower <- as.numeric(subsetdata$Voltage)
      
  ## Plot 4 - combination of graphs
      par(mfrow = c(2,2), mar= c(4,4,4,4))
      plot(datetime, GlobalActivePower, type="l", ylab="Global Active Power", xlab="", main="")
      plot(datetime, Voltage, type="l", ylab="Voltage", xlab="datetime", main="")
      plot(datetime, Sub_metering_1, type="l", ylab="Energy sub metering", xlab="", main="")
      lines(datetime, Sub_metering_2, type="l", col="red")
      lines(datetime, Sub_metering_3, type="l", col="blue")
      legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lwd=2.5, col=c("black", "red", "blue"), cex=0.6)
      plot(datetime, GlobalReactivePower, type="l", ylab="Global_reactive_power", xlab="datetime", main="")
      
  ## Saving Plot 4 as a .png file
      png("plot4.png", width=600, height=600)
      par(mfrow = c(2,2), mar= c(4,4,4,4))
      plot(datetime, GlobalActivePower, type="l", ylab="Global Active Power", xlab="", main="")
      plot(datetime, Voltage, type="l", ylab="Voltage", xlab="datetime", main="")
      plot(datetime, Sub_metering_1, type="l", ylab="Energy sub metering", xlab="", main="")
      lines(datetime, Sub_metering_2, type="l", col="red")
      lines(datetime, Sub_metering_3, type="l", col="blue")
      legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lwd=2.5, col=c("black", "red", "blue"), cex=0.6)
      plot(datetime, GlobalReactivePower, type="l", ylab="Global_reactive_power", xlab="datetime", main="")
      dev.off() 
      
      
