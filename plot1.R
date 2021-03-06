# Exploratory Data Analysis
# course project 
# plot1

rm(list=ls())
#reading data into R
data<- read.table("household_power_consumption.txt", sep=";",nrows= 2075260, header=TRUE, quote= "", strip.white=TRUE, stringsAsFactors = FALSE, na.strings= "?")

# Subsetting the full data to required date: 
sub<- subset(data, (data$Date == "1/2/2007" | data$Date== "2/2/2007")) 

# creating plot1
png("plot1.png", width=480, height= 480)
hist(sub$Global_active_power, col= "red", xlab= "Global Active Power (kilowatts)", ylab= "Frequency", main= "Global Active Power")
dev.off()