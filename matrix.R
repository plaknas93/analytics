#matrices
?matrix
x=c(1:12)
##Creating Matrix
m1=matrix(data=x,nrow=4,ncol=3,byrow=F,dimnames=NULL)
m1
##Data in a Matrix
marks3=trunc(runif(30,50,90))
trunc(marks3)
marks3
##Arrangment Columnwise by default
m2=matrix(marks3,nrow=6)
m2
##Arranging Data row wise
m3=matrix(marks3,nrow=6,byrow=T)
m4=matrix(marks3,ncol=5,byrow=T)
m4
##Summary
colSums(m4)
rowSums(m4)
sum(m4)
##Identifying specific cells in the matrix
m4[m4>70]
m4[1,]
m4[,2]
m4[3,5]
m4[1:2,3:5]
m4
m4[1:2]


##rollno,name,batch,gender,mark1,marks2
##Analysis of marks genderwise, batchwise etc
rollno=1:30
rollno

name=paste('student',1:30,sep='-') ##paste concatenates student, - and 1:30
name
batch=sample(c(2016,2017,2018),size=30,replace=T)
batch
table(batch)
gender=sample(c('M','F'),size=30,replace=T)
gender
table(gender)
(marks1=trunc(rnorm(30,mean=65,sd=7)))
(marks2=trunc(rnorm(30,mean=65,sd=7)))
df=data.frame(rollno,name,batch,gender,marks1,marks2,stringsAsFactors =F ) ##By default all are created as factors: categorical data
df
str(df)
df$name
df$gender=factor(df$gender)
str(df)
df$batch=factor(df$batch,ordered=T,levels=c('2016','2017','2018'))
str(df)
df

##Analyzing Matrix data
summary(df)
df$rollno=as.character(df$rollno) ##Conv roll no to factor
summary(df)

str(df) ##structure
head(df) ##First 6 rows
tail(df) ##last 6 col
dim(df) ##Dimensions
nrow(df) ##no of row
ncol(df) ##no of col
names(df) ##Names of col
summary(df)
df[2,1:4]
df[1:2,1:4]
dim(df)
df[c(1,3),c(1,3,5)] ##Specific rows and columns
head(df)
df[df$gender=='M',] ##Display only Gender == M
df[df$gender=='M', 3:5] ## display males only 3rd to 5th col
df[df$gender=='M' & df$marks1>70,] ## display males with marks1 score abv 70

length(df)
nrow(df[df$gender=='M',])

##sort
sort(df$marks1)
order(df$marks1) ##position of the ascending sort for each cell
df[order(df$marks1), ]

sort(df$marks1)
rev(sort(df$marks1))
df[order(gender,batch),] ## Ordering by Gender, first 2016 Females than 2017 females and so on
df[order(gender,-batch),] ## Batch in descending order

##Summary/Aggregating

aggregate(df$marks1,by=list(df$batch), FUN=mean)

aggregate(marks1~batch, data=df, FUN=mean) ##marks1 mean by batch displays col

aggregate(cbind(marks1,marks2)~batch, data=df, FUN=mean) ## boths marks 1 and marks 2

df2=aggregate(cbind(marks1,marks2)~batch + gender, data=df, FUN=mean) ## genderwise
df2
df
write.csv(df,"./data/bitsgoa.csv")
df3=read.csv("./data/bitsgoa.csv")
head(df3) ##Prints default serial nos that got exported to csv
df3=df3[,-1] ##Removes X col 
head(df3)

