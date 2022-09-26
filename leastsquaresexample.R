#least squares
linearreg<-lm(cfseal$stomach~cfseal$weight)
print(linearreg)
summary(linearreg)
plot(cfseal$weight,cfseal$stomach,xlim=c(0,100),ylim=c(0,1500),xlab="Seal Weight",ylab="Stomach Weight",main="Seal Weight vs Seal Stomach Weight")
abline(lm(cfseal$stomach~cfseal$weight),cex=1.3,pch=16)

plot(cfseal$weight,cfseal$stomach,xlab="Seal Weight",ylab="Stomach Weight",main="Seal Weight vs Seal Stomach Weight")
abline(lm(cfseal$stomach~cfseal$weight),cex=1.3,pch=16)