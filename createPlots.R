createPlots <- function()
{

    unzip("data/household_power_consumption.zip", list=FALSE, overwrite=TRUE, exdir="data")
    print("creating plot 1")
    source("plot1.R")
    print("creating plot 2")
    source("plot2.R")
    print("creating plot 3")
    source("plot3.R")
    print("creating plot 4")
    source("plot4.R")
    print("plots created")
}