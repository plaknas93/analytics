#Missing values
#create, detect missing values

y = c(1, 2, 3, NA)
is.na(y)
library(VIM)
x <- c(1, 2, NA, 3)
y <- sum(x,na.rm=T)
z <- sum(x)
x
y
z
mreturns=read.csv(file.choose())
?read.csv
df=read.csv('./data/returns2.csv',row.names = NULL)
head(df)
