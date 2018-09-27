#Calc the prob of getting 2 White balls among 10 with p=20%
#F(x)
x=c(1:10)
y=dbinom(x,10,.2) 
cbind(x,y)
plot(x,y,type='h')

#Calc the prob for each no and plot the distribution?
pbinom(3,10,.2)    
x=seq(1,)


##POISSON DISTRIBUTION
#The no of lobster ordered in a restaurant on a given day is known to followa Poisson dist

ppois(16,12,lower=F)

#Problem:
#Plot std normal curve from -4 to +4
a=curve(dnorm(x),-4,+4)
#Plot Uniform dist for x, varying from2 to 8 
b=curve(dunif(x),2,8)
#Plot logistic curve of varying 3 to 9

#Assume X~ N(4,9) Calc P(2<X<=6)

#For abv calc P(|X|>2)

#To find the val that a given % of a population falls abv or below, or the range of values within which a given % of a population lies, use inverse cdf for the appropriate dist

#
alpha=c(0.2,.1,.05,.001)
zstar=qnorm(1-(alpha/2))
zstar
2*(1-pnorm(zstar))

data=read.csv(file.choose())
head(data)
tail(data)
x_bar=mean(data$Pill)
x_bar
std_error= (sd(data$Pill)/(nrow(data)^0.5))
std_error
a=0.05
z_star=qnorm()
Pop_mean= x_bar+
    
t.test(data$Pill)    
