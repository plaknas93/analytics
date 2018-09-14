##Matrix for Practice

#Building a vector
company=paste("C",1:100,sep ='~')
company
R=c("BBB","BB","B","A","AA","AAA")
RF=factor(R,ordered=T,levels =c("B","BB","BBB","A","AA","AAA") )
RF
rating=sample(RF,size=100,replace =T )
rating
table(rating)
mcap=sample(factor(c('small','mid','large'),ordered=T,levels=c('small','mid','large')),size = 100, replace=T)
mcap
table(mcap)
prevqtrprofperf=sample(-5:10,size=100,replace=T)
prevqtrprofperf
credit_info=data.frame(company,mcap,rating,prevqtrprofperf,stringsAsFactors = F)
credit_info

head(credit_info)
tail(credit_info)
summary(credit_info)
str(credit_info)
credit_info$mcap
dim(credit_info)
names(credit_info)
ncol(credit_info)
nrow(credit_info)
credit_info[c(1)]
credit_info[c(1:2),]
credit_info[1,1:3]
head(credit_info)

c1=credit_info[rating=='AAA' & prevqtrprofperf<=0,]
nrow(c1)
head(credit_info)
sort(prevqtrprofperf)
order(prevqtrprofperf) ##Position no when sorted in Descending order
credit_info[order(credit_info$prevqtrprofperf), ]

aggregate(prevqtrprofperf~mcap,data=credit_info,FUN=mean)
aggregate(credit_info$prevqtrprofperf,by=list(credit_info$mcap), FUN=mean)
write.csv(credit_info,"./data/credit_info.csv")
credit_info2=read.csv("./data/credit_info.csv")
head(credit_info2)
credit_info2=credit_info2[,-1]
head(credit_info2)
