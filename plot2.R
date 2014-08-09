##Code for reading data
m1<-read.table("household_power_consumption.txt",sep = ";",header = TRUE, skip = 66636,nrow = 2880)
m2<-read.table("household_power_consumption.txt",sep = ";",header = TRUE,nrow = 2)
n1<-names(m2)
colnames(m1)<- c(n1)

##Creating Date-time field to be used in the plot
m1$Date <- strptime(paste(m1$Date,m1$Time), "%d/%m/%Y %H:%M:%S")

##generating the plot
with(m1,plot(Date,Global_active_power,type="l",ylab = 'Global Active Power (kilowatts)',xlab =' '))

## saving the plot to a png file of specifed size
dev.copy(png,file = "plot2.png",width =480 , height = 480)
dev.off()