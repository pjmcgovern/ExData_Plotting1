#Data is in a zip file in data the "Data" directory. run createPlots() to create

#Data File
    dataFile <- "data/household_power_consumption.txt"


    colNames = c("date", "time", "globalActivePower", "globalReactivePower", "voltage", "globalIntensity", "subMetering1", "subMetering2", "subMetering3")
    colClasses = c("character", "character", rep("numeric",7) )

    df <- read.table(dataFile, header=TRUE, sep=";", col.names=colNames, colClasses=colClasses, na.strings="?")


    df$date = as.Date(df$date, format="%d/%m/%Y")
    df = df[df$date >= as.Date("2007-02-01") & df$date<=as.Date("2007-02-02"),]

    png(filename="plot1.png", width=480, height=480, units="px")
    hist(df$globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
    dev.off()    
