#pie chart
x<-c(10,20,40,100)
labels<-c("Los Angeles","New York","Seattle","Miami")

piepercent<-round(100*x/sum(x), 1)

png(file="wheretouristsfrom.png")

pie(x,labels=piepercent, main = "Cities Tourists are From in San Francisco(Survey)", col = rainbow(length(x)))
legend("topright", labels, cex=0.8, fill=rainbow(length(x)))

dev.off()

#bar chart
x<-c(10,20,40,100)
labels<-c("Los Angeles","New York","Seattle","Miami")

barplot(x, names.arg = labels, xlab="City", ylab="Number of People", col="green", main="Cities Tourists are from in San Francisco (survey)")

#boxplot
input<-mtcars[,c('mpg','cyl')]
print(head(input))

png(file="boxplot1.png")

boxplot(mpg~cyl, data=mtcars, xlab="Number of cylinders", ylab="Miles per gallon",main="Mileage Data")

dev.off()

#histogram
dataa<-c(1,2,3,4,5,5,1,1,2,6)
hist(dataa,10, xlab="Number",main="Results of Dice Rolls", col="green")

#line chart
miletime<-c(15,15,14,12,11,8)
mean(miletime)
plot(miletime,type="o",col="black",xlab="Month",ylab="Mile Time (rounded to nearest min)", main="Mile Time Over 6 Months")

#scatter plot
input<-mtcars[,c('wt','mpg')]
print(head(input))

plot(x= input$wt, y = input$mpg, xlab="Weight", ylab="Miles per Gallon", xlim=c(2.5,5),ylim=c(15,30), main="Weight vs Mileage")