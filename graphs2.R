hist(mtcars$mpg)
hist(mtcars$wt)

##Graphs side by side
par(mfrow=c(1,2))
hist(mtcars$mpg)
hist(mtcars$wt)

##Graphs 1 below other
par(mfrow=c(2,1))
hist(mtcars$mpg)
hist(mtcars$wt)

##4 quarters
par(mfrow=c(2,2))
hist(mtcars$mpg)
hist(mtcars$wt)

##Back to normal
par(mfrow=c(1,1))
hist(mtcars$hp)
