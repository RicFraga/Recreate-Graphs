# This file has the purpose of recreating the graph shown in the figure folder
# by the name of 'unnamed-chunk-4.png'

third_plot <- function(data) {
     
     sm1 <- as.numeric(data$Sub_metering_1)
     sm2 <- as.numeric(data$Sub_metering_2)
     sm3 <- as.numeric(data$Sub_metering_3)
     
     time <- as.factor(data$Time)
     
     png('Produced Graphs/plot3.png', width = 480, height = 480)
     plot(times, sm1, ylab = 'Energy sub metering')
     lines(times, sm2, col = 'red')
     lines(times, sm3, col = 'blue')
     legend('topright',legend = c('Sub metering 1', 'Sub metering 2', 'Sub metering 3'),
            pch = c('_', '_', '_'), col = c('black', 'red', 'blue'))
     dev.off()
}