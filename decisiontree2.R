
marry=sample(c('Yes',"No"), size=100, replace=T)
selfGender=sample(c('M',"F"), size=100, replace=T)
selfAge=ceiling(runif(100, 23,30))
selfEdn=sample(c(1,2,3,4), size=100, replace=T, prob=c(.1,.3,.4,.2))
spouseAge=ceiling(rnorm(100, mean=26,sd=5))
spouseEdn=sample(c(1,2,3,4), size=100, replace=T, prob=c(.1,.3,.4,.2))
spouseSiblings=sample(c(0,1,2,3), size=100, replace=T, prob=c(.2,.3,.3,.2))
spouseCity=sample(c('Rural',"Urban"), size=100, replace=T)
spouseSalary= ceiling(runif(100, 0,100000))

df = data.frame(marry, selfGender, selfAge, selfEdn, spouseAge, spouseEdn, spouseSiblings, spouseCity, spouseSalary )

head(df)

library(rpart)

dtree1 = rpart(marry ~ . , data=df) #shortcut for all
dtree1
library(rpart.plot)
rpart.plot(dtree1, cex=.8, nn=T)

df[spouseEdn < 4 & spouseCity == 'Rural' & selfAge=='Yes',c('spouseSalary','spouseAge', 'marry')]
table(df1$marry)

dtree2 = rpart(marry ~ . , data=df, cp=-1)
dtree2
rpart.plot(dtree2,cex=.8, nn=T)
#Larger tree has a greater prob of error hence prune the the tree
printcp(dtree2) # command give cp and xerror for diff cp. select cp with lowest xerror(called cross validation error)
ptree2 = prune(dtree2, cp=.0204) #cp value tells you the no of splits. It prunes (reduces the size of) the tree
rpart.plot(ptree2)

#Predict
ndata1 = data.frame(selfGender='M',selfAge=27,selfEdn=3,spouseAge=29,spouseEdn=4,spouseSiblings=4,spouseCity='Rural',spouseSalary=45000)
head(df1)
ndata1
predict(dtree1,newdata = ndata1, type =)
