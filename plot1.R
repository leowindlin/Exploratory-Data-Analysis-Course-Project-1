#Draw the plot 1 and save it to png

#Draw the plot
hist(dt$Global_active_power, 
     xlab = "Global Active Power (kilowatts)",
     col="lightsalmon",
     main = "Global Active Power")

#Save it to a png file
dev.copy(png, 
         file   = "plot1.png",
         width  = 480,
         height = 480)
dev.off()
