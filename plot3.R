setwd("~/Documents/Coursera/ExploratoryDataAnalysis/Week1")

## Need to use data <- get_data() from "getData.R" to load data

plot3 <- function(data = NULL) {
        if (is.null(data)) {
                message(" No data ")
        } else {
                ## Create PNG device
                png(filename = "plot3.png", width=480, height=480)

                ## Create Plot
                plot(data$Time, data$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
                lines(data$Time, data$Sub_metering_2, col="red")
                lines(data$Time, data$Sub_metering_3, col="blue")
                legend("topright", lty=1, col=c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
                dev.off()
        }
}