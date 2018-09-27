x=5L
class(x)
y=5.5
class(y)
z=x*y
z

string1="Punjab"
string2="Sindh"

nchar(string1)
nchar(string2)

vec1=c("M","F")
vec1
fac1=factor(vec1,ordered = F)
fac1
class(fac1)
class(vec1)
string1==string2
"char"=="help"

##Vector assignment
new_id=c(1:30)
new_id
new_vec=trunc(rnorm(30,mean = 5, sd = 2 ))
new_vec          
cbind(new_id,new_vec)
plot(new_id,new_vec)
hist(new_vec)

##Vector seq

vec_seq= c(seq(1,100,3))
vec_seq
sqrt(vec_seq)
length(vec_seq)
(new_id+vec_seq)


n=c("A","B","C",'D',"E","F")
n
n[1:5]
n[1]
n[3]
n[243]

ndata=c(vec_seq,112,103,NA )
ndata
?mean
mean(ndata,trim=3,na.rm = T)
is.na(ndata)
anyNA(ndata)
any(new_id>0)
new_id>0

x <- c(5,5,5,10,10,10,20,20,20,20)
x
sum(x)
length(x)
sum(x)/length(x)
xm <- mean(x)
xm
c(xm, mean(x, trim = 0.1))
