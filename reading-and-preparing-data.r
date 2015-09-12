#Download and unzip the file
fileUrl<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url=fileUrl,destfile = "./source.zip", mode='wb')
unzip(zipfile = "./source.zip", exdir = ".")

#Read the data and subset the days we need
dt<-read.table(file  = "household_power_consumption.txt",
               header = TRUE, 
               sep = ";", 
               na.strings = "?",
               stringsAsFactors=FALSE)

dt<-dt[dt$Date=='1/2/2007' | dt$Date=='2/2/2007',]

#Create a date column to use later in plot
dt$Date2<-strptime(paste(dt$Date,dt$Time), "%d/%m/%Y %H:%M:%S")
