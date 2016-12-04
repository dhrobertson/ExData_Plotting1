setwd("~/Documents/Coursera/ExploratoryDataAnalysis/Week1")

## Need to use data <- get_data() from "getData.R" to load data

plot1 <- function(data = NULL) {
        if (is.null(data)) {
                message(" No data ")
        } else {
                ## Create PNG device
                png(filename = "plot1.png", width=480, height=480)

                ## Create Plot
                hist(data$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
                dev.off()
        }
}