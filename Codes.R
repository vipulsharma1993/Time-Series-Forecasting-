#setwd(choose.dir())
tsdata<- read.csv(choose.files())
View(tsdata)
?ts
myts<- ts(tsdata$Total,start = c(1996,1),end = c(2005,4),frequency = 4)
View(myts)
plot(myts)
# plot shows upward trend and a multiplicative type of range

?decompose
dposed<- decompose(myts,"multiplicative")
?forecast

plot(dposed)

library(forecast)
require(forecast)

vals<- ets(myts)
accuracy(vals$fitted,myts)

forecast(vals,4)
plot(forecast(vals,4))

####### END ########
