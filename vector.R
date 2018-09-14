#vector
x = c(1,2,3)
x1=1:1000000
length(x1)
x1
x
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


g = trunc(marks2)
g
length(g)
min(g)
max(g)
range(g)
h=c(26:91)
h
hist(g)
length(h)
hh <- hist(g, breaks = 10, density = 10,
          col = "lightgray", xlab = "Accuracy", main = "Overall") 
hh=hist(g)
hh
xfit <- seq(min(g), max(g), length = 10000) 
xfit
yfit <- dnorm(xfit, mean = mean(g), sd = sd(g)) 
yfit
yfit <- yfit * diff(hh$mids[1:2]) * length(g) 

lines(xfit, yfit, col = "black", lwd = 2)

#character vector-----
names= c("Ram","Shyam","Robin")
names
mean(names)
length(names)
summary(names)

gender=c("M","F","M")
genderF= factor(gender)
summary(genderF)
genderF

(grades = c('A','B','C','D','A','D'))
gradesF= factor(grades,ordered=T)
gradesF

##Changing the order of the Grades. Now Grade D is HIGHEST
gradesF1 =factor(grades,ordered=T,levels=c('D','C','B','A'))
gradesF1
summary(gradesF1)
table(gradesF1)
barplot(table(gradesF1))
pie(table(gradesF1))

##Logical
married=c(TRUE,FALSE,T,F,T,F,T)
Employee=c("Ramprakas Singh","Vishal Yadav","Swati Kumari","Nayan Gupta","Jyoti Kumar","Manas Joshi","Paras Dholakia")
married
name
sum(married)
table(married)
?table
Marital_status=data.frame(Employee,married)
Marital_status
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
