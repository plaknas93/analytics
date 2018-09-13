#working dplyr

library(dplyr)
women%% head(n=5)

head(women,n=5)

mtcars
head(mtcars)
names(mtcares)
mtcars %>% group_by(gear) %>% summarise(mean(mpg),max(mpg))
mtcars %>% group_by(gear) %>% summarise(mean(mpg),max(mpg),min(hp))
mtcars %>% group_by(gear) %>% summarise_all(mean)

##Mileage more than 25
mtcars
head(mtcars)
mtcars %>% filter(mpg>25) %>% select(mpg,gear)

mtcars %>% group_by(gear) %>% summarise_if(is.numeric,mean)

##average mpg of cars with disp more than 150 
head(mtcars)
mtcars %>% filter(disp>150) %>% summarise(mean(mpg)) 

##
head(mtcars)
plot(mtcars$disp,mtcars$hp)
##Counting all cars with displ >150
mtcars %>% filter(dip>150)
