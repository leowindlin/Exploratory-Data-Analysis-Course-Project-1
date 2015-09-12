#Draw the plot 3 and save it to png

#Just a little trick to show the
#weekdays in English and not in
#native language
Sys.setlocale("LC_TIME", "English")

#Draw the plot of the first sub metering
plot( dt$Date2,
      dt$Sub_metering_1,
      xlab = "",
      ylab = "Energy sub metering",
      type = "l")

#Add the other ones with the lines command
lines(dt$Date2,
      dt$Sub_metering_2,
      type = "l",
      col='red')

lines(dt$Date2,
      dt$Sub_metering_3,
      type = "l",
      col='blue')

#Add the legend to the plot
legend("topright", 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=1, 
       lwd=2, 
       col=c("black", "red", "blue"))

#Save it to a png file
dev.copy(png, 
         file   = "plot3.png",
         width  = 480,
         height = 480)
dev.off()
