women
cor(women$height,women$weight)
cov(women$height,women$weight)
plot(women$height,women$weight)

##Simple Linear Regression
fit1=lm(weight~height,data=women) ##wt depended on height
summary(fit1)
-87+(3.45*68)
range(women$height)
##weight=-87+3.45*height
fitted(fit1)
names(fit1)
predict(fit1, newdata = data.frame(women[1,],type="response")) #actual vs predicted vale in data set
cbind(women,fitted(fit1),residuals(fit1))

ndata1=data.frame(height=c(62.5,63.5,66.8))
predict(fit1,newdata=ndata1)
cbind(ndata1,predictwt=predict(fit1,newdata=ndata1))

##Multiple Regression
#mtcars : mpg vs wt,hp
names(mtcars)
fit2 = lm(mpg~ wt + hp,data=mtcars)
summary(fit2)

# mpg = +37.22 -3.88*wt -.03*hp

range(mtcars$wt)
range(mtcars$hp)
ndata2= data.frame(wt=c(6,3), hp=c(98,243))
predict(fit2,newdata = ndata2)
cbind(ndata2,predictMPG=predict(fit2,newdata=ndata2))

#mtcars : mpg vs wt,hp
names(mtcars)
fit2a = lm(mpg~ wt + hp + vs + am + gear,data=mtcars)
summary(fit2a)

## mpg = +37.22 -3.88*wt -.03*hp

range(mtcars$wt)
range(mtcars$hp)
ndata2a= data.frame(wt=c(6,3), hp=c(98,243))
predict(fit2a,newdata = ndata2a)
cbind(ndata2a,predictMPG=predict(fit2a,newdata=ndata2a))
