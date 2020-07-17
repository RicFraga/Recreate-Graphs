# This file has the purpose of reading the data from the Data folder and
# pre process it to be in good shape to work with it in the other R files

read_data <- function(path_to_data) {
     
     # We'll only be using data from 2007-02-01 and 2007-02-02
     data <- read.csv(path_to_data, sep = ';', stringsAsFactors = FALSE)
     
     # We transform the strings to dates with the appropriate format
     dates <- as.Date(data$Date, '%d/%m/%Y')
     
     # Getting the data we are interested in
     matches <- which(dates == as.Date('2007-02-01') | 
                              dates == as.Date('2007-02-02'))
     
     return(data[matches, ])
}