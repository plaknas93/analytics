library(ggplot2)



iris
View(iris)
names(iris)  #Returns column headers
table(iris$Species) # returns specific unique data points in the column and their count

#UDERSTANDING BASE GRAPHICS

#Bivariate Analysis with the help of a SCATTER PLOT
plot(iris$Sepal.Length ~ iris$Petal.Length,ylab='Sepal Length',xlab='Petal Length', main='Sepal length vs Petal length', col = 'blue',pch=15) #Rel btwn sepal length and petal 

#Univariate Analysis with the help of a HISTOGRAM
hist(iris$Sepal.Width,main="Disribution of Sepal widths",xlab='Sepal width',col='aquamarine3')

#Boxplot: How a continuous variable change with respect to a categorical variable
boxplot(iris$Sepal.Length~iris$Species,xlab='Species',ylab='Sepal Length', main = 'Sepal lengths of Different Species',col='burlywood')
##Observation: (1)Virginca flowers tend to have a higher Sepal length (mean roughly 6.5)   (2)Versicolor flowers tend to have a Sepal length of mean roughly 6 & (3) Setosa have the lowest sepal length ar around 5

#Problems of base graphics (1) Too trivial and unlikely to impress international journals or presentations (2) They are simple images and are not interactive as such


## UNDERSTANGING ggplot2
## gg stands for "Grammar of Graphics" 

