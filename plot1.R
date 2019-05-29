## Week 1 Project ## Exploratory Analysis ## Plot 1

  ## Load Data Set
    setwd("D:/Online Learning/Data Specialization/4 Exploratory Analysis")
    powerdata <- read.table("household_power_consumption.txt",skip=1,sep=";")
    names(powerdata) <- c("Date","Time","GlobalActivePower","GlobalReactivePower","Voltage","GlobalIntensity","SubMeter1","SubMeter2","SubMeter3")
    subsetdata <- subset(powerdata,powerdata$Date=="1/2/2007" | powerdata$Date =="2/2/2007")
    GlobalActivePower <- as.numeric(as.character(subsetdata$GlobalActivePower))

  ## Plot 1 - Histogram
      par(mar= c(4,4,2,1))  
      hist(GlobalActivePower, col="red", xlab="Global Active Power", main="Global Active Power (kilowatts)") 
  
  ## Saving Plot 1 as a .png file
      png("plot1.png", width=500, height=500)
      par(mar= c(4,4,2,1))
      hist(GlobalActivePower, col="red", xlab="Global Active Power", main="Global Active Power (kilowatts)") 
      dev.off()
