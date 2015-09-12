#Draw the plot 2 and save it to png

#Just a little trick to show the
#weekdays in English and not in
#native language
Sys.setlocale("LC_TIME", "English")

#Draw the plot
plot( dt$Date2,
      dt$Global_active_power,
      xlab = "",
      ylab = "Global Active Power (kilowatts)",
      type = "l")

#Save it to a png file
dev.copy(png, 
         file   = "plot2.png",
         width  = 480,
         height = 480)
dev.off()
