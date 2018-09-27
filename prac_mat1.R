
##Creating a matrix

#creating vectors
roll_no=c(1,2,3) 
std=c('Ram','Shyam')
cbind(roll_no,std)

#creating matrix
thedf=data.frame(roll_no,std)

thedf
dim(thedf)
nrow(thedf)
ncol(thedf)

thedf2=read.csv(file.choose())
head(thedf2)
dim(thedf2)

class(thedf2)
summary(thedf2)
class(thedf2$Director_Name)
thedf2[1,1]

thedf2[3,2]
thedf2[3]
thedf2[1]
thedf2[,4]

thedf2[c(1,9),c(1,9)]
thedf2[,1]
thedf2[,1,drop=F]
names(thedf2)

#Creating Matrix
mat1=matrix(1:10,nrow=2)
mat1

#Finding specific querries

head(thedf2)

thedf2$Company="Cyient Ltd."


thedf3=read.table("https://www.jaredlander.com/data/Tomato%20First.csv",header=T, sep=",")
head(thedf3)
names(thedf2)
names(thedf3)
head(thedf3)

board=read.table(file.choose(),header=T,sep=",")
head(board)
library(dplyr)

head(board)
board %>% dplyr::count(Ind_class, sort=TRUE) ## %>% is called pipe funct


board2= board %>% filter(Company == "Cyient Ltd." & App_Date == '31-03-13') %>% select(Company,App_Date,Ind_class)
board2 %>%count(Ind_class)


board3= board %>% filter(Company == "Cyient Ltd." & App_Date == '31-03-09' & 
Ind_class=='Independent')
nrow(board3)
