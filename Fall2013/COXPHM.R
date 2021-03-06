rm(list=ls())
library(survival)


low.fat<-c(140,177,50,65,86,153,181,191,77,84,87,56,66,73,199,140,200,200
,200,200,200,200,200,200,200,200,200,200,200,200)
length(low.fat)

s1<-c(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)

group.1=rep(1,length(low.fat))

saturated.fat<-c(124,58,56,68,79,89,107,86,142,110,96,142,86,75,117,98,105,126,43,
46,81,133,165,170,200,200,200,200,200,200)



s2<-c(rep(1,23),0,0,0,0,0,0,0)

group.2=rep(2,length(saturated.fat))

unsaturated.fat<-c(112,68,84,109,153,143,60,70,98,164,63,63,77,91,91,66,70,
77,63,66,66,94,101,105,108,112,115,126,161,178)



s3<-c(rep(1,length(unsaturated.fat)))

group.3=rep(3,length(unsaturated.fat))

time<-c(low.fat,saturated.fat,unsaturated.fat)

status<-c(s1,s2,s3)

group=c(group.1,group.2,group.3)

datatable3.3=data.frame(time,status,group)

 COXHAZARD<- coxph(Surv(time, status) ~ group,data=datatable3.3)
summary(COXHAZARD)
plot(survfit(COXHAZARD),xlab='time',ylab='group')