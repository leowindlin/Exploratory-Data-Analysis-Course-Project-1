#Draw the plot 4 and save it to png

#Just a little trick to show the
#weekdays in English and not in
#native language
Sys.setlocale("LC_TIME", "English")

#We set the plot environment to
#receive the 4 graphics
par(mfrow = c(2, 2))

#First graphic
plot(dt$Date2,
     dt$Global_active_power, 
     xlab = "",
     ylab = "Global Active Power (kilowatts)",
     type = "l")

#Second graphic
plot(dt$Date2,
     dt$Voltage,
     xlab = "datetime",
     ylab = "Voltage",
     type = "l")

#Third graphic
plot( dt$Date2,
      dt$Sub_metering_1,
      xlab = "",
      ylab = "Energy sub metering",
      type = "l")

lines(dt$Date2,
      dt$Sub_metering_2,
      type = "l",
      col='red')

lines(dt$Date2,
      dt$Sub_metering_3,
      type = "l",
      col='blue')

legend("topright", 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=1, 
       lwd=2, 
       col=c("black", "red", "blue")
       bty = "n")#Parameter for not drawing box around legend

#Fourth graphic
plot( dt$Date2,
      dt$Global_reactive_power,
      xlab = "datetime",
      ylab = "Global_reactive_power",
      type = "l")

#Save it to a png file
dev.copy(png, 
         file   = "plot4.png",
         width  = 480,
         height = 480)
dev.off()
