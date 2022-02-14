#install.packages("survival")
library(survival)
View(vets)

head(vets)
vet.time<-vets$V1
vet.cns<-vets$V2
vet.surv<-Surv(vet.time,vet.cns)
print(vet.surv)

mean(vet.time)
sum(vet.cns)
sum(vet.time*vet.cns)
mean(vet.surv)

