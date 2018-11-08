set.seed(1234)
random.data <- as.data.frame(matrix(runif(5000), nrow=100))
names(random.data) <- c("y", paste0("x", 1:49))

random.fit <- lm(y ~ . , data=random.data)
#This takes a while to run - be careful
random.fit.step <- step(random.fit)
summary(random.fit.step)
