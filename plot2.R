## Week 1 Project ## Exploratory Analysis ## Plot 2

  ## Load Data Set
      setwd("D:/Online Learning/Data Specialization/4 Exploratory Analysis")
      powerdata <- read.table("household_power_consumption.txt",skip=1,sep=";")
      names(powerdata) <- c("Date","Time","GlobalActivePower","GlobalReactivePower","Voltage","GlobalIntensity","SubMeter1","SubMeter2","SubMeter3")
      subsetdata <- subset(powerdata,powerdata$Date=="1/2/2007" | powerdata$Date =="2/2/2007")
  
  ## Converting Time
      datetime <- strptime(paste(subsetdata$Date, subsetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
      GlobalActivePower <- as.numeric(subsetdata$GlobalActivePower)
      
  ## Plot 2 - Line plot
      par(mar= c(4,4,2,1))
      plot(datetime, GlobalActivePower, type="l", main="Global Active Power Vs Time", xlab="", ylab="Global Active Power (kilowatts)")
  
  ## Saving Plot 2 as a .png file
      png("plot2.png", width=700, height=500)
      plot(datetime, GlobalActivePower, type="l", main="Global Active Power Vs Time", xlab="", ylab="Global Active Power (kilowatts)")
      dev.off()