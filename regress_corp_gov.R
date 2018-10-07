#Time Series and Crossectional Analysis
library(dplyr)


d=read.csv("./data/boardstructure.csv")
head(d)
names(d)

#OWNERSHIP STRUCTURE ANALYSIS
#Timeseries analysis for Infosys Ltd. from year 2007 to 2017

d1=filter(d,d$Company=="Infosys Ltd.")
e1=d %>% select(Company,Year,Payout_ratio,Prom_hld, FI_MF_Banks, FII, trust_comp, Indi) %>% filter(d$Company=="Infosys Ltd.")
e1
head(d1)
tail(d1)
nrow(d1)
fit1 = lm(Payout_ratio ~ Prom_hld + FI_MF_Banks + FII + trust_comp + Indi,data=d1)
summary(fit1)

#Cross sectional analysis for all companies for the year 2007
c1=filter(d,Year=='2007')
b1=tbl_df( d %>% select(Company,Year,Payout_ratio,Prom_hld, FI_MF_Banks, FII, trust_comp, Indi) %>% filter(d$Year=="2007"))
b1
head(c1)
tail(c1)
nrow(c1)
fitc1 = lm(Payout_ratio ~ Prom_hld + FI_MF_Banks + FII + trust_comp + Indi,data=b1)
summary(fitc1)

#CG ANALYSIS
#Time Series analysis for Infosys 2007 to 2017
head(d)
names(d)
x1=filter(d,Company=='Infosys Ltd.')
x1
y1=tbl_df( d %>% select(Company,Year,Payout_ratio,CEO_age,Ind_p,fem_p) %>% filter(d$Company=="Infosys Ltd."))
y1
head(y1)
tail(y1)
nrow(y1)
fitx1 = lm(Payout_ratio ~ CEO_age + Ind_p + fem_p ,data=y1)
summary(fitx1)

#Cross sectional analysis for all IT Companies year 2007
head(d)
names(d)
p1=filter(d,Year=='2007')
p1
q1=tbl_df( d %>% select(Company,Year,Payout_ratio,CEO_age,Ind_p,fem_p) %>% filter(d$Year=="2007"))
q1
head(q1)
tail(q1)
nrow(q1)
fitp1 = lm(Payout_ratio ~ CEO_age + Ind_p + fem_p ,data=q1)
summary(fitp1)
###NOTE INCOMPLETE DATA



##Ownership Structure
#Cross sectional for 2007
d2=read.csv("./data/struct_2007.csv")
head(d2)
fit1 = lm(Payout_ratio ~ Prom_hld + FI_MF_Banks + FII + trust_comp + Indi,data=d2)
summary(fit1)



#Time Series
d3=read.csv("./data/struct_comp.csv")
head(d3)
fit3 = lm(Payout_ratio ~ Prom_hld + FI_MF_Banks + FII + trust_comp + Indi,data=d3)
summary(fit3)

##Corp Governance
#Timeseries
d4=read.csv(file.choose())
head(d4)
fit4 = lm(Payout_ratio ~ meet + CEO_age + Ind_p + Total,data=d1)
summary(fit4)

#cross sectional
d5=read.csv(file.choose())
head(d5)
fit5 = lm(Payout_ratio ~ meet + CEO_age + Ind_p + Total,data=d1)
summary(fit5)
