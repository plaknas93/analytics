library(foreign)
mydata <- read.dta(file.choose()) 

fit = lm(lwage~ married + educ + expersq,data=mydata)
summary(fit)

library(plm)
pmodel <- plm(lwage ~ married + educ + expersq, data=mydata, na.action=na.omit, model="random", effect='twoways')

summary(pmodel)
