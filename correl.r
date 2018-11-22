

#Correlation Matrix


library(corrplot)
d=read.csv(file.choose())
head(d)
M=cor(d, use="pairwise.complete.obs")
M
library('corrplot') #package corrplot
corrplot(M, method = "circle") #plot matrix
library(xtable)
print(xtable(M),type='html')
corstars(M, result="html")



