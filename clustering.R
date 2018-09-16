## Clustering

age = ceiling(rnorm(3000,mean=22,sd=2))
age
df = data.frame(age)
km = kmeans(df, center=3)
km$iter
km$centers

marks = ceiling(rnorm(3000,mean=65,sd=10))

df=data.frame(age,marks)
head(df)
km = kmeans(df,center=4)
km
km$betweenss
km$iter
km$centers
km$tot.withinss
km$withinss


