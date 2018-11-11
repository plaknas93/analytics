##Theory of a firm

## (1) Total average and marginal revenue

#UNDER PERFECT COMPETITION
qty=c(0:10)
price=100
tr=expression(qty*price)
tot_rev=eval(tr,list(qty=qty))
avg_rev=tot_rev/qty
mar_rev= (price*qty)/qty

info=data.frame(qty,price,tot_rev,avg_rev,mar_rev)
info
#Ploting the demand curve
plot(info$qty,info$price, type = 'line',main = 'Demand Curve for a Seller in Perfect Competition',xlab = 'Quantity',ylab="MR,AR,Price", xaxs='i',yaxs='i')
#Outcome: Horizontal curve implying elastic demand

#Ploting Qty vs tot_rev
plot(info$qty,info$tot_rev,type='line',xaxs='i',yaxs='i')


#UNDER IMPERFECT COMPETITION
qty2=c(0:10)
qty2
(price2=c(100:90))
tr2=expression(x*price2)
tot_rev2=eval(tr2,list(x=qty2))
tot_rev2
(avg_rev2=tot_rev2/qty2)
mr2=D(tr2,'x')
mr2
mar_rev2=NaN
for (i in 1:10)
{    
mar_rev2[i+1]=(tot_rev2[i+1]-tot_rev2[i]) / (qty2[i+1]-qty2[i])
}
mar_rev2
length(mar_rev2)
info2=data.frame(qty2,price2,tot_rev2,avg_rev2,mar_rev2)
info2
#Ploting the demand curve
plot(info2$qty2,info2$price2, type = 'line',main = 'Demand Curve for a Seller in Imperfect Competition',xlab = 'Quantity',ylab="MR,AR,Price", xaxs='i',yaxs='i')
#Outcome: Horizontal curve implying elastic demand

#Ploting Qty vs tot_rev
plot(info2$qty2,info2$tot_rev2,type='line',xaxs='i',yaxs='i')

#Plotting qty vs mar_rev,Avg_rev

mar_rev2[1]=NA
mar_rev2
plot(info2$qty2,info2$avg_rev2,type='line',col='red',xaxs='i',yaxs='i',xlab = 'Quantity',ylab='Avg Rev ,Price, Mar Rev')
lines(info2$qty2,info2$mar_rev2,col="green")
?legend
legend(6, 98, legend=c("Average Revenue", "Marginal Revenue"),col=c("red", "green"), lty= 1:1, cex=0.8)

library(ggplot2)
library(ggrepel)
library(dplyr)
ggplot(info2,aes(x=qty2,y=avg_rev2))+ geom_point() + labs(title="Scatterplot", x="Quantity", y="Price")
       #,type='line',col='red',xaxs='i',yaxs='i',xlab = 'Quantity',ylab='Avg Rev ,Price, Mar Rev')
lines(info2$qty2,info2$mar_rev2,col="green")


## (2) Factors of Production

# Q = F(K,L) where K is capital and L is Labor

Labor= c(0,10,20,30,40,50,60,70,80,90,100)
Qt =   c(0,10,20,30,40,45,50,55,60,55,50)

prod=data.frame(Labor,Qt)
prod

plot(x = Labor,y=Qt,type = 'line',xaxs='i',yaxs='i')
polygon(cbind(c(min(Labor),Labor, max(Labor)), c(min(Qt),Qt, min(Qt))), col="red")

## Total, Average, Marginal, Fixed, and Variables Costs

TFC=100
Q=c(0:10)
length(Q)
TVC=c(0,50,75,125,210,300,450,650,900,1200,1550)
length(TVC)
TC=TFC+TVC
AFC=TFC/Q
AVC=TVC/Q
ATC=TC/Q
MC=c(0,50,25,50,85,90,150,200,250,300,350)
length(MC)
P=200
A=seq(100,200,10)
A
length(A)
AR=rev(A)
AR
Rev=P*Q
Tot_Prof=Rev-TC
MR=Inf
for (i in 1:10)
{    
    MR[i+1]=(Rev[i+1]-Rev[i])
}
length(MR)
MR
info3=data.frame(Q,TFC,AFC,TVC,AVC,TC,ATC,MC,Rev,Tot_Prof,P,MR)
info3
head(info3)
##Plotting Total Costs
plot(info3$Q,info3$TC,type='l',main = 'TC,TVC, & TFC for Info3',col='violet',xaxs='i',yaxs='i',xlab = 'Quantity',ylab='Cost',frame.plot = T)
lines(info3$Q,info3$TFC,col='red',lty='dotdash')
lines(info3$Q,info3$TVC,col='blue',lty='dotted')
legend(1, 1500, legend=c('Total Cost',"Total Fixed Cost", "Total Variable Cost"),col=c("violet", "red",'blue'), lty= 1, cex=0.8)

##Plotting Total Revenue v Total Cost
plot(info3$Q,info3$Rev,type='line',col='green',xaxs='i',yaxs='i',main='Total Revenue & Total Cost for Info3',xlab = 'Quantity',ylab='Total Revenue, Total Cost')
lines(info3$Q,info3$TC,lty='dotted',col='red')
legend(0.5, 1900, legend=c('Total Revenue',"Total Cost"),col=c('green','red'), lty= 1, cex=0.8)



##Plotting Average Costs
info3
plot(info3$Q,info3$AFC,type='l',main = 'ATC,AVC,AFC, & MC for Info3',col='violet',xaxs='i',yaxs='i',xlab = 'Quantity',ylab='Cost',frame.plot = T)
lines(info3$Q,info3$ATC,col='red',lty='dotdash')
lines(info3$Q,info3$AVC,col='blue',lty='dotted')
lines(info3$Q,info3$MC,col='green')
lines(info3$Q,info3$MR,col='orange')
legend(6, 60, legend=c('Avg Fixed Cost',"Avg Fixed Cost", "Avg Var Cost",'Marginal Cost'),col=c("violet", "red",'blue','green'), lty= 1, cex=0.8)

library(ggplot2)
?ggplot
ggplot(data = info3) 
##Code for naming points on a Graph    
#attach(mtcars)
#plot(wt, mpg, main="Milage vs. Car Weight", 
#     xlab="Weight", ylab="Mileage", pch=18, col="blue")
#text(wt, mpg, row.names(mtcars), cex=0.5, pos=4, col="red")


## A Firm's breakeven points using TR & TC under Perfect Competition
Q=c(seq(from=0, to=100, by=10))
length(Q)
P=c(seq(from=10000, to=7500,by=-250))
length(P)
TR=P*Q
TC=c(100000,170000,240000,300000,360000,420000,480000,550000,640000,710000,800000)
length(TC)
Profit=TR-TC
info4= data.frame(Q,P,TR,TC,Profit)
info4
max(Profit)
plot(Q,TR,type='line',main='A Firm\'s breakeven points using TR & TC under Perfect Competition',col='green',xaxs='i',yaxs='i',xlab='Quantity',ylab = 'Total Revenue , Total Cost')
lines(Q,TC,col='red',lty='dotted')
points(Q[7],TR[7],pch=3,col='Blue')
points(x[y=60],y[y=60],pch='dotted',col='blue')
abline(h=60,v=0)


##Profit Maximization
info
info3
##Exhibit 23: Profit Maximization using Total Revenue & Total Cost under PERFECT COMPETITION
info5=data.frame(Q=info$qty,P=info$price,TR=info$tot_rev,TC=info3$TC,Prof=(info$tot_rev-info3$TC),MR=info3$MR,MC=info3$MC)
info5
plot(info5$Q,info5$TR,type='n',xaxs='i',yaxs='i',xlab = 'Qty',ylab='TR,TC',col='green',main = 'Profit Maximization using Total Revenue & Total Cost under PERFECT COMPETITION')
lines(info5$Q,info5$TR,col='green')
lines(info5$Q,info5$TC,col='red')

##Exhibit 24: Profit Maximization using MC & MR under PERFECT COMPETITION

plot(info5$Q,info5$MC,type='n',xaxs='i',yaxs='i',xlab = 'Qty',ylab='MR,MC',col='green',main = 'Profit Maximization using MR & MC under PERFECT COMPETITION')
lines(info5$Q,info5$MR,col='green')
lines(info5$Q,info5$MC,col='red')
legend(6.35,100,legend = c('Marginal Revenue','Marginal Cost'),col = c('green','red'),lty = 1:1,cex=0.8,box.lty=0)


####Exhibit 25: Profit Maximization under IMPERFECT COMPETITION

Q=c(0:10)
P=c(seq(1000,950,-5))
TR=P*Q
TR
cbind(TR)
TC=c(550,1000,1500,2100,2800,3600,4600,5800,7200,8800,10800)
Profit=TR-TC

MR=Inf
for(i in 1:10)
{
    MR[i+1]=TR[i+1]-TR[i]
}
MR

MC=Inf
for(i in 1:10)
{
    MC[i+1]=TC[i+1]-TC[i]
}
MC
ATC=TC/Q
AVC=(TC-550)/Q

info6=data.frame(Q,P,TR,TC,Profit,MR,MC,ATC,AVC)
info6

## TR minus TC METHOD
plot(info6$Q,info6$TC,type='n',xaxs='i',yaxs='i',xlab = 'Qty',ylab='TR,TC',col='green',main = 'Profit Maximization using TR & TC under IMPERFECT COMPETITION')
lines(info6$Q,info6$TR,col='green')
lines(info6$Q,info6$TC,col='red')
legend(6.35,4000,legend = c('Total Revenue','Total Cost'),col = c('green','red'),lty = 1:1,cex=0.8,box.lty=0)

## MR = MC METHOD
plot(info6$Q,info6$MC,type='n',xaxs='i',yaxs='i',xlab = 'Qty',ylab='MR,MC',col='green',main = 'Profit Maximization using MR & MC under IMPERFECT COMPETITION')
lines(info6$Q,info6$MR,col='green')
lines(info6$Q,info6$MC,col='red')
legend(0.25,1900,legend = c('Marginal Revenue','Marginal Cost'),col = c('green','red'),lty = 1:1,cex=0.8,box.lty=0)

info6
y=c(seq(100,1100,100))
y
length(y)
plot(info6$Q,y,type='n',xaxs='i',yaxs='i',xlab = 'Qty',ylab='MR,MC',col='green',main = 'SR Supply Curve, Breakeven pt & Shutdown pt under IMPERFECT COMPETITION')
lines(info6$Q,info6$AVC,col='blue',lty='dotted')
lines(info6$Q,info6$ATC,col='dark red',lty='longdash')
lines(info6$Q,info6$MC,col='red')
legend(6.5,700,legend = c('Avg Total Cost','Marginal Cost','Avg Var Cost'),col = c('dark red','red','blue'),lty = c(2,1,3),cex=0.8,box.lty=0)

##Productivity

#Calculation of Total, Average and Marginal Productivity

m=c(seq(0,7,1))
tp=c(0,1000,2500,4500,6400,7400,7500,7000)
ap=tp/m
cbind(m,tp)
mp=NaN

for(i in 1:7)
{
    mp[i+1]=tp[i+1]-tp[i]
}

mp

info7=data.frame(m,tp,ap,mp)
info7
length(m)
y=seq(-500,2400,400)
length(y)
y
plot(info7$m,info7$mp,type='n',xlab = 'Input: Machines', ylab = 'Productivity: AP & MP',xlim = c(0,10),ylim=c(-500,2500))
lines(info7$m,info7$ap,col='blue',lty='dotted')
lines(info7$m,info7$mp,col='red')
legend(x = 6,y=2500,legend=c("Average Productivity","Marginal Productivity"),col=c('blue','red'),lty = c(2,1),cex=0.8)

#Using ggplot
library(ggplot2)

ggplot(data=info7,aes(x=m))+geom_line(aes(y=ap,colour='Average Productivity'))+geom_line(aes(y=mp,colour='Marginal Productivity'))+labs(x='Machines',y='Avg Prod, Marg Prod',title='Productivity : Marginal & Avergae')


ggplot(data=info7,aes(x=m))+geom_line(aes(y=ap,colour='Average Productivity'))+geom_line(aes(y=mp,colour='Marginal Productivity'))+labs(x='Machines',y='Productivity',title='Productivity : Total, Average & Margina')+geom_line(aes(y=tp,colour='Total Productivity'))



