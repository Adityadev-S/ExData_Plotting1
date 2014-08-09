##subsetting required data
m1<-read.table("household_power_consumption.txt",sep = ";",header = TRUE, skip = 66636,nrow = 2880)

## re-naming the column headers of data subset m1
m2<-read.table("household_power_consumption.txt",sep = ";",header = TRUE,nrow = 2)
n1<-names(m2)
colnames(m1)<- c(n1)

## creation of histogram to match specs
hist(m1$Global_active_power,col="red",cex.axis = 0.5, xlab = 'Global Active Power (kilowatts)', main ="Global Active Power")

## saving the plot to a png file of specifed size
dev.copy(png,file = "plot1.png",width =480 , height = 480)
dev.off()
