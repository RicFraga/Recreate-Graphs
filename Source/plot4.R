# This file has the purpose of recreating the graph shown in the figure folder
# by the name of 'unnamed-chunk-5.png'

fourth_plot <- function(data) {
     
     gap <- as.numeric(data$Global_active_power)
     grp <- as.numeric(data$Global_reactive_power)
     voltage <- as.numeric(data$Voltage)
     time <- as.factor(data$Time)
     sm1 <- as.numeric(data$Sub_metering_1)
     sm2 <- as.numeric(data$Sub_metering_2)
     sm3 <- as.numeric(data$Sub_metering_3)
     
     png('Produced Graphs/plot4.png', width = 480, height = 480)
     par(mfrow = c(2, 2))
     
     plot(gap ~ time, ylab = 'Global Active Power', xlab = '')
     
     plot(times, voltage, xlab = 'datetime', ylab = 'Voltage')
     
     plot(times, sm1, ylab = 'Energy sub metering')
     lines(times, sm2, col = 'red')
     lines(times, sm3, col = 'blue')
     
     plot(grp ~ time, ylab = 'Global Reactive Power', xlab = 'datetime')
     
     dev.off()
}