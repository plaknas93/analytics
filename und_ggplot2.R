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

## Grammar of Graphics
### It consists of (1) DATA-> Basically the data set (2) AESTTHETICS -> Scale over which the data has to be plotted (3) GEOMETRY -> Visual element of the data e.g. boxplot,scatter plot etc   (4) Facet -> Grouping of data

# Bivariate Analysis with the help of a SCATTER PLOT using ggplot

## Step 1: Selecting Data
ggplot(data=iris)
## Step 2: Mapping data to aesthetics
ggplot(data=iris,aes(y=iris$Sepal.Length,x=iris$Petal.Length))
## Step 3: Selecting the Geometry ( In this case Scatter plot hence geom_point())
ggplot(data=iris,aes(y=iris$Sepal.Length,x=iris$Petal.Length)) + geom_point()
 
##Playing with AESTHETICS
ggplot(data=iris,aes(y=iris$Sepal.Length,x=iris$Petal.Length, col=iris$Species)) + geom_point()

ggplot(data=iris,aes(y=iris$Sepal.Length,x=iris$Petal.Length, shape=iris$Species)) + geom_point()

ggplot(data=iris,aes(y=iris$Sepal.Length,x=iris$Petal.Length, col=iris$Species,shape=iris$Species),xlab='Petal Length',ylab='Sepal Length',main='Sepal length vs Petal length') + geom_point()

mydata=read.csv(file.choose())
mydata
head(mydata) 

###Splitting Date into year month and day
year=substr(mydata$Mon,start=5,stop=6)
year
month=substr(mydata$Mon,start=1,stop=3)
ret=Inf
for(i in 1:464)
{
    ret[i+1]=((mydata$Close[i+1]-mydata$Close[i])/mydata$Close[i])*100
}
ret=ceiling(ret)
ret
mydata=data.frame(year,month,ret)
head(mydata)

View(mydata)

##Playing with Geometry
#Histogram
gplot(data=mydata,aes(x=ret)) + geom_histogram()
ggplot(data=mydata,aes(x=ret)) + geom_histogram(bins=50,fill='palegreen4')
ggplot(data=mydata,aes(x=ret)) + geom_histogram(bins=50,fill='palegreen4',col='green')

#Mapping fill to aes
ggplot(data=mydata,aes(x=ret,fill=month)) + geom_histogram()
##Observation: No month stands out in terms of skewed returns 
ggplot(data=mydata,aes(x=ret,fill=year)) + geom_histogram()

#Observations for Iris set
head(iris)
nrow(iris)
ggplot(data=iris,aes(x=Sepal.Length)) + geom_histogram()
ggplot(data=iris,aes(x=Sepal.Length,fill=Species)) + geom_histogram()
#Observation: Setosa on the lower side and virginca on the higher side of sepal length
ggplot(data=iris,aes(x=Sepal.Length,fill=Species)) + geom_histogram(position='fill')
#observation: probability of species being Viginca increases with increase in Sepal length 

#Barplot (used to see distribution of categorical variables )
ggplot(data=iris,aes(x=Species)) + geom_bar()
mtcars
head(mtcars)
nrow(mtcars)
ggplot(data=mtcars,aes(x=gear)) + geom_bar()
ggplot(data=mtcars,aes(x=gear,fill=vs)) + geom_bar()

#Frequency Polygon
ggplot(data=mydata,aes(x=ret)) + geom_freqpoly()

##Practice with House.csv
house=read.csv(file.choose())
head(house)
nrow(house)
names(house)

#Plotting scatterplot TotalRooms vs SalesPrice
ggplot(data=house,aes(x=house$TotRmsAbvGrd,y=house$SalePrice))+geom_point()

#Plotting histogram for SalesPrice
ggplot(data=house,aes(x=SalePrice))+geom_histogram()

##Modifying the histogram
ggplot(data=house,aes(x=SalePrice,fill=house$GarageType))+geom_histogram()
ggplot(data=house,aes(x=SalePrice))+geom_freqpoly()

##Practice Simple Supply and Demand Curves
Q=c(seq(0,100,10))
Ps=15+Q
S=data.frame(Q,Ps)
S
Pd=90-0.5*Q
D=data.frame(Q,Pd)
D
SD=data.frame(Q,Ps,Pd)
SD
#Supply Curve
ggplot(data=S,aes(x=Q,y=Ps))+geom_line()
#Demand Curve
ggplot(data=S,aes(x=Q,y=Pd))+geom_line()
#Supply Demand and Equilibrium
ggplot(data=S,aes(x=Q))+geom_line(aes(y=Ps,colour='Supply Curve'))+geom_line(aes(y=Pd,colour='Demand Curve'))+geom_point(x=50,y=65,colour='dark green',size=4)+labs(x='Quantity',y='Price',title='Supply Demand Equilibrium')

                                                                             