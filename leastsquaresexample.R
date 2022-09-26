linearreg<-lm(cfseal$stomach~cfseal$weight)     #This is the code for the relationship model between seal weight(x) and seal stomahc weight(y)
print(linearreg)                                #Prints out the coefficients for the y=mx+b formula
summary(linearreg)                              #Prints out a summary of useful values based on the relationship model

#the two lines below creates a scatter plot of the seal weight(x) vs. seal stomach weight(y) and an ab-line that best fits the data
plot(cfseal$weight,cfseal$stomach,xlim=c(0,100),ylim=c(0,1500),xlab="Seal Weight",ylab="Stomach Weight",main="Seal Weight vs Seal Stomach Weight")
abline(lm(cfseal$stomach~cfseal$weight),cex=1.3,pch=16)

#the lines below creates the same scatter plot, but it is more zoomed out to include all the data points
plot(cfseal$weight,cfseal$stomach,xlab="Seal Weight",ylab="Stomach Weight",main="Seal Weight vs Seal Stomach Weight")
abline(lm(cfseal$stomach~cfseal$weight),cex=1.3,pch=16)