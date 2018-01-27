## Read data into R
df<-read.table("household_power_consumption.txt"
               ,header=TRUE
               ,sep=";"
               ,stringsAsFactors = FALSE)

## Information about the dataset
str(df)
summary(df)

##Subset the data
df$Date=as.Date(df$Date,format = "%d/%m/%Y")
attach(df)
df.subset <- subset(df, Date >= "2007-02-01" & Date <= "2007-02-02")

#Frequency plot of global active power
globalActivePower <- as.numeric(df.subset$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

