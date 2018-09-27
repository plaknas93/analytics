
##Ownership Structure
#Cross sectional for 2007
d1=read.csv("./data/struct_2007.csv")
head(d1)
fit1 = lm(Payout_ratio ~ Prom_hld + FI_MF_Banks + FII + trust_comp + Indi,data=d1)
summary(fit1)

#Time Series
d2=read.csv("./data/struct_2007.csv")
head(d2)
fit3 = lm(Payout_ratio ~ Prom_hld + FI_MF_Banks + FII + trust_comp + Indi,data=d2)
summary(fit3)

##Corp Governance
#Timeseries
d1=read.csv(file.choose())
head(d1)
fit4 = lm(Payout_ratio ~ meet + CEO_age + Ind_p + Total,data=d1)
summary(fit4)

#cross sectional
d5=read.csv(file.choose())
head(d5)
fit5 = lm(Payout_ratio ~ meet + CEO_age + Ind_p + Total,data=d1)
summary(fit5)
