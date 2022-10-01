#single factor ANOVA
cars<-read.table("cars.txt",header=T)             #reads the txt file "cars.txt" to create data set cars

aovcars<-aov(mpg~car, data=cars)                  #performs ANOVA on the cars dataset on the mpg for each car

summary(aovcars)                                  #provides the summary of values that are used in ANOVA

sapply(split(cars$mpg,cars$car),mean)             #the code to find the average mpg for each car

aovcars$residuals                                 #finds the residuals for each data point in the set
shapiro.test(aovcars$residuals)                   #performs the Shapiro-Wilks Test to see if the data follows a normal distribution
bartlett.test(mpg~car, data=cars)                 #performs the Bartlett's Test