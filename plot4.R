setwd("~/Documents/Coursera/ExploratoryDataAnalysis/ExData_Plotting1")

## Need to use data <- get_data() from "getData.R" to load data

plot4 <- function(data = NULL) {
        if (is.null(data)) {
                message(" No data ")
        } else {
                ## Create PNG device
                png(filename = "plot4.png", width=480, height=480)
                
                ## Set up for 4 plots
                par(mfrow=c(2,2))

                ## Create Plot 1
                plot(data$Time, data$Global_active_power, type="l", ylab="Global Active Power", xlab="")

                ## Create Plot 2
                plot(data$Time, data$Voltage, type="l", ylab="Voltage", xlab="datetime")
                
                ## Create Plot 3
                plot(data$Time, data$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
                lines(data$Time, data$Sub_metering_2, col="red")
                lines(data$Time, data$Sub_metering_3, col="blue")
                legend("topright", bty="n", lty=1, col=c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
                
                ## Create Plot 4
                plot(data$Time, data$Global_reactive_power, type="l", xlab="datetime")
                
                dev.off()
        }
}