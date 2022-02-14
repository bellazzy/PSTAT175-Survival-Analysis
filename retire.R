#install.packages("survival")
library(survival)

setwd("~/Desktop/2019 Fall/PSTAT 175/lab1")
retire <- read.table("retire.txt", header=TRUE,skip=2)

ret.time<-retire$time
ret.death<-retire$death
ret.surv<-Surv(ret.time,ret.death)

retire.fit<-survfit(ret.surv ~ 1)
plot(retire.fit,main="Kaplan-Meier Curves \n for retired people death",
     xlab="time \n (until death in month)",ylab="S(t)")
summary(retire.fit)

