# This file has the purpose of recreating the graph shown in the figure folder
# by the name of 'unnamed-chunk-3.png'

# This figure plots the Global Active Power vs Time

second_plot <- function(data) {
     gap <- as.numeric(data$Global_active_power)
     
     # Convert date to proper data type
     time <- as.factor(data$Time)
     
     png('Produced Graphs/plot2.png', width = 480, height = 480)
     plot(gap ~ time, ylab = 'Global Active Power (kilowatts)', xlab = '')
     dev.off()
}