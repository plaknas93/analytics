#Decision Tree

library(rpart)
library(rpart.plot)

education=factor(c(3,2,2,3,2,2,3,2,2,2))
married=factor(c('S','M','S','M','M','M','S','S','M','S'))
income=c(125,100,70, 120, 95, 60, 220, 85, 75, 90)
buy=factor(c(0,0,0,0,1,0,0,1,0,1))
(data= data.frame(buy, education, married, income))
head(data)

xtabs( ~ buy + education, data=data)

table(data$buy, data$education)
dtree1 = rpart(buy ~ education + married, data=data)
dtree1 ##Problem only for SMALL DATA. See o/p at this point. No  decision tree gets created
dim(data) #Min split is 20 and min bucket is 1/3*min split
dtree1 = rpart(buy ~ education + married , data=data, parms=list(split='gini'),  minsplit=4, minbucket=2,cp=-1)
dtree1 # n is number of data points
rpart.plot(dtree1,nn=T) ## nn indicates node numbers
printcp(dtree1)

head(data)
ndata1 = data.frame(education=factor(c(2,3)), married=factor(c('S','M')), income=c(110,120))
ndata1 #whether this person will buy or not?
predict(dtree1, newdata=ndata1, type='class') #class signifies category 'response' was for numerical. Response 1 indicates BUY
(p1=predict(dtree1, newdata=ndata1, type='prob'))
cbind(ndata1, p1)
