##Plotting a simple budget Constraint line in R

#Warren's Income is Rs 100. Cost of 1 slice of bread is Rs 1. Cost of 1 oz of wine is Rs 10. Plot his budget constraint

wine_price=10
bread_price=1
income=100

max_wine=income/wine_price
max_bread=income/bread_price

#Plotting the curve 
#Function: 
# wine_price*Qw + bread_price*Qb = income
# Qw = income/wine_price - ((bread_price*Qb)/wine_price
?curve()
curve(income/wine_price - ((bread_price*x)/wine_price),from = 0, to = max_bread,xlab = "Qty of Bread (slice)",ylab = "Qty of Wine (oz)",col="red", xaxs="i", yaxs='i')

#Plotting Demand Curve
#Function: Qd = 180 - 2*P => P = 90 - 0.5*Qd
curve(90 - (0.5*x),from = 0, to = 180,xlab = "Qty",ylab = "Price",col="red", xaxs="i", yaxs='i')

#Plotting Supply Curve
#Function: Qs = -15 + P => P = 15 + Qs
curve(15 + x,from = 0, to = ,xlab = "Qty",ylab = "Price",col="red", xaxs="i", yaxs='i')

#Both Supply and Demand together

##Define variables
x= seq(from= 0, to=180, 10)
x
p1 = 90 - (0.5*x)
p2 = 15 + x
p2

### Method 1
matplot(x, cbind(p1,p2),type="l",col=c("red","green"),lty=c(1,1), xlab = "Quantity", ylab="Price")
        
### Method 2 : ggplot
df= data.frame(x,p1,p2)
library(ggplot2)
ggplot(df, aes(x)) +                    # basic graphical object
    geom_line(aes(y=p1), colour="red") +  # first layer
    geom_line(aes(y=p2), colour="green")  # second layer
