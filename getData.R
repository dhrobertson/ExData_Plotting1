setwd("~/Documents/Coursera/ExploratoryDataAnalysis/ExData_Plotting1")

get_data <- function() {

        ## source of data
        filename <- "household_power_consumption.txt"

        ## read data
        data <- read.table(filename, header=TRUE, sep = ";", na.strings = c("?"),
                       colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric",
                                              "numeric", "numeric", "numeric"))
        ## convert data and time to standard R objects
        data$Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
        data$Date <- as.Date(data$Date, "%d/%m/%Y")

        ## subset data for 2 days
        dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
        data <- subset(data, Date %in% dates)
                        
        data 
}