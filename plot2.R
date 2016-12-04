setwd("~/Documents/Coursera/ExploratoryDataAnalysis/ExData_Plotting1")

## Need to use data <- get_data() from "getData.R" to load data

plot2 <- function(data = NULL) {
        if (is.null(data)) {
                message(" No data ")
        } else {
                ## Create PNG device
                png(filename = "plot2.png", width=480, height=480)

                ## Create Plot
                plot(data$Time, data$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
                dev.off()
        }
}