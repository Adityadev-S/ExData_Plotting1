m1<-read.table("household_power_consumption.txt",sep = ";",header = TRUE, skip = 66636,nrow = 2880)
m2<-read.table("household_power_consumption.txt",sep = ";",header = TRUE,nrow = 2)
n1<-names(m2)
colnames(m1)<- c(n1)

##Creating Date-time field to be used in the plot
m1$Date <- strptime(paste(m1$Date,m1$Time), "%d/%m/%Y %H:%M:%S")

##generating the plot
with(m1,{plot(Date,Sub_metering_1,type = 'l',ylab = 'Energy sub metering',xlab =' ')
lines(Date,Sub_metering_2,col = 'red')
lines(Date,Sub_metering_3,col = 'blue')})
legend("topright", lwd=1, col = c("black","red","blue"), legend = c("Sub_metering_1  ", "Sub_metering_2  ","Sub_metering_3"),cex=0.4)

## saving the plot to a png file of specifed size
dev.copy(png,file = "plot3.png",width =480 , height = 480)
dev.off()