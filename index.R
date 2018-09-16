# Linear regression

df=read.csv('./data/sensexVdjiax.csv')
head(df)
cor(df$djiax_ret,df$sensex_ret)
cov(df$djiax_ret,df$sensex_ret)
plot(df$djiax_ret,df$sensex_ret)
abline(lm(sensex_ret ~ djiax_ret, data=df), col='red')

fit4=lm(sensex_ret ~ djiax_ret, data=df) ##Regression model
summary(fit4)

#Prediction
range(df$djiax_ret)  #values to be within this range
(ndata = data.frame(djiax_ret = c(-5, +2)))
predicted_sen_ret = predict(fit4, newdata = ndata)
cbind(ndata, predicted_sen_ret)

df5=read.csv('./data/denco.csv')
head(df5)
