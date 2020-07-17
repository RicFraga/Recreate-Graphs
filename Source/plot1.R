# This file has the purpose of recreating the graph shown in the figure folder
# by the name of 'unnamed-chunk-2.png'

# This figure plots the Global Active Power vs the Frequency of each value

first_plot <- function(data) {
     
     gap <- as.numeric(data$Global_active_power)
     
     png('Produced Graphs/plot1.png', width = 480, height = 480)
     hist(as.numeric(gap), col = 'red', xlab = 'Global Active Power (kilowatts)'
          , ylab = 'Frequency', main = 'Global Active Power')
     
     dev.off()
     
}