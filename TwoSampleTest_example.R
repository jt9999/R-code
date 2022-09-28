robin<-split(cuckoos$length, cuckoos$species)$robin             #obtains the lengths of all the Robins taken in a sample
wren<-split(cuckoos$length, cuckoos$species)$wren               #obtains the lengths of all the Wrens taken in a sample

robin       #prints out the values in the robin variable (length of the robins)
wren        #prints out the values in the wren variable (length of the wrens)

#two sample t-test between the robin lengths and wren lengths to test if the mean of the two lengths are equal
t.test(robin,wren,alternative = "two.sided",mu=0,paired=FALSE,var.equal=FALSE,conf.level=0.95)