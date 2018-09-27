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


