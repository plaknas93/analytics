
companylist=read.csv(file.choose())
head(companylist)

library(dplyr)    
listDec1=filter(companylist, Size.decile == "Decile 1")
head(listDec1)

##Decile 1 Sample
Dec1_comp=read.csv(file.choose())
Dec1_comp_names_all=Dec1_comp$Company.Name
Dec1_comp_names_all
661*.3

s_dec1=sample(Dec1_comp_names_all,196)
s_dec1
write.csv(s_dec1, file = "Dec1_sample.csv",row.names=F)


##Decile 2 Sample
Dec2_comp=read.csv(file.choose())
Dec2_comp_names_all=Dec2_comp$Company.Name
Dec2_comp_names_all
446*.3

s_dec2=sample(Dec2_comp_names_all,134)
s_dec2
head(s_dec2)
write.csv(s_dec2, file = "Dec2_sample.csv",row.names=F)

##Decile 3 Sample
Dec3_comp=read.csv(file.choose())
Dec3_comp_names_all=data.frame(Dec3_comp$Company.Name,Dec3_comp$Main.product.service.group)
Dec3_comp_names_all
head(Dec3_comp_names_all)
nrow(Dec3_comp_names_all)
343*.3

s_dec3=sample(Dec3_comp_names_all$Dec3_comp.Company.Name,103)
s_dec3
head(s_dec3)
write.csv(s_dec3, file = "Dec3_sample.csv",row.names=F)


###Final List of companies
info=read.csv(file.choose())
head(info)
names(info)
nrow(info)

library(dplyr)

##decile 1
d1=filter(info,  info$decile=='Decile 1')
d1
names(d1)
nrow(d1)
nrow(d1)*.3
samp_d1=sample(d1$Company,196)
samp_d1

##decile 2
d2=filter(info,  info$decile=='Decile 2')
d2
names(d2)
nrow(d2)
x=ceiling(nrow(d2)*.3)
samp_d2=sample(d2$Company,ceiling((nrow(d2)*.3)))
samp_d2

##decile 3
d3=filter(info,  info$decile=='Decile 3')
d3
names(d3)
nrow(d3)
x=nrow(d3)*.3
x
samp_d3=sample(d3$Company,ceiling(x))
samp_d3


##decile 4
d4=filter(info,  info$decile=='Decile 4')
d4
names(d4)
nrow(d4)
(x=nrow(d4)*.3)
samp_d4=sample(d4$Company,ceiling(x))
samp_d4

##decile 5
d5=filter(info,  info$decile=='Decile 5')
d5
names(d5)
nrow(d5)
nrow(d5)*.3
samp_d5=sample(d5$Company,ceiling((nrow(d5)*.3)))
samp_d5

##decile 6
d6=filter(info,  info$decile=='Decile 6')
d6
names(d6)
nrow(d6)
nrow(d6)*.3
samp_d6=sample(d6$Company,ceiling((nrow(d6)*.3)))
samp_d6

##decile 7
d7=filter(info,  info$decile=='Decile 7')
d7
names(d7)
nrow(d7)
nrow(d7)*.3
samp_d7=sample(d7$Company,ceiling((nrow(d7)*.3)))
samp_d7

##decile 8
d8=filter(info,  info$decile=='Decile 8')
d8
names(d8)
nrow(d8)
nrow(d8)*.3
samp_d8=sample(d7$Company,ceiling(nrow(d8)*.3))
samp_d8

##decile 9
d9=filter(info,  info$decile=='Decile 9')
d9
names(d9)
nrow(d9)
nrow(d9)*.3
samp_d9=sample(d9$Company,ceiling(nrow(d9)*.3))
samp_d9

##decile 10
d10=filter(info,  info$decile=='Decile 10')
d10
names(d10)
nrow(d10)
nrow(d10)*.3
samp_d10=sample(d10$Company,ceiling(nrow(d10)*.3))
samp_d10

samp= samp_d1+samp_d2+samp_d3+samp_d4+samp_d5+samp_d6+samp_d7+samp_d8+samp_d9+samp_d10

samp= c(as.character(samp_d1), as.character(samp_d2),as.character(samp_d3),as.character(samp_d4),as.character(samp_d5),as.character(samp_d6),as.character(samp_d7),as.character(samp_d8),as.character(samp_d9),as.character(samp_d10))

samp

write.csv(samp, file = "sample.csv",row.names=F)

length(samp)
