#vector
x = c(1,2,3)
x1=1:1000000
length(x1)
x1
##Creating a sequence with a gap of 2
x2 =seq(10,100,2)
x2
?seq
x3 = seq(from=10,to=100, by=3)
x3

#numeric vector----

##creating a random normal. Simulating marks data
marks = rnorm(30,mean=60,sd=10) 
marks

##Shortcut for printing and assigning directly. NOT RECOMMENDED FOR PROJECTS
(marks2 = rnorm(1000,mean=60,sd=10)) 

##Stats on Data Marks
mean(marks)
median(marks)
mode(marks)
sd(marks)
var(marks)
summary(marks)
summary(marks2)

##Understanding Properties of a vector
length(marks)
str(marks)
class(marks)
range(marks)
hist(marks)
plot(density(marks))

hist(marks2)

#character vector-----
names= c("Ram","Shyam","Robin")
names
mean(names)
length(names)
summary(names)

gender=c("M","F","M")
genderF= factor(gender)
summary(genderF)

(grades = c('A','B','C','D','A','D'))
gradesF= factor(grades,ordered=TRUE)
gradesF

##Changing the order of the Grades. Now Grade D is HIGHEST
gradesF1 =factor(grades,ordered=T,levels=c('D','B','A','C'))
gradesF1
summary(gradesF1)
table(gradesF1)
barplot(table(gradesF1))
pie(table(gradesF1))

##Logical
married=c(TRUE,FALSE,T,F,T,F,T)
married
sum(married)
table(married)
class(married)
summary(married)
pie(table(married))

##Subset of marks
marks
##Rounding, Flooring, Truncate,ceiling of data
trunc(marks);round(marks,1);floor(marks);ceiling(marks)
marks1=trunc(marks)
marks1
##Find a value in the Data set. Array no position
marks1[1]
##Subset 
marks1[1:5]
marks1[c(1,5,30)]
marks1[-c(1,5)]
mean(marks1[-c(1,5)])
marks1[marks1>60]
gender2 = sample(c('M','F'),size=100000, replace=T,prob=c(.6,.4))
table(gender2)
prop.table(table(gender2))
pie(table(gender2))
