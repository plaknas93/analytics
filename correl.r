

#Correlation Matrix


library(corrplot)
d=read.csv(file.choose())
head(d)
M=cor(d, use="pairwise.complete.obs")
M
z=write.csv(M)
z
library('corrplot') #package corrplot
corrplot(M, method = "number",type = 'lower') #plot matrix
library(xtable)
print(xtable(M),type='html')
corstars(M, result="html")



