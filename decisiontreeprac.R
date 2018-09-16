#Logistic Regression : Predict Probability of Selection 

df =  read.csv("https://stats.idre.ucla.edu/stat/data/binary.csv")
library(rpart)
library(rpart.plot)

df$rank=factor(df$rank)
df$admit=factor(df$admit)
dim(df)
dtree3 = rpart(admit~gre+gpa+rank,data=df)

#print tree
xtabs( ~gre+gpa+rank,data=df)
dtree3 = rpart(admit~gre+gpa+rank,data=df)
dtree1
rpart.plot(dtree3,nn=T)

#prune the tree
printcp(dtree3)
ptree3 = prune(dtree3, cp=.023)
rpart.plot(ptree3)

ndata2 = data.frame(gpa=4,rank='2', gre=350)
ndata2
predict(ptree3,newdata = ndata2, type = 'prob')
