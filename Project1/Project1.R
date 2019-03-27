rm(list=ls())
library(car)
mendata=read.csv('bodyfatmen.csv') # read the data

# the full model
model <- lm (density ~ age + weight + height + neck + 
               chest + abdomen + hip + thigh + knee + 
               ankle + biceps + forearm + wrist, data = mendata)
summary(model)
#------------------------------

# model adequency check
par(mfrow=c(2,2))
plot(model)


par(mfrow=c(1,1))
res_std=rstandard(model)
hist(res_std)

qqnorm(res_std)

plot(model$fitted.values, rstudent(model))

par(mfrow=c(2,2))
plot(mendata$age,model$residuals)
plot(mendata$weight,model$residuals)
plot(mendata$height,model$residuals)
plot(mendata$neck,model$residuals)
plot(mendata$chest,model$residuals)
plot(mendata$abdomen,model$residuals)
plot(mendata$hip,model$residuals)
plot(mendata$thigh,model$residuals)
par(mfrow=c(3,2))
plot(mendata$knee,model$residuals)
plot(mendata$ankle,model$residuals)
plot(mendata$biceps,model$residuals)
plot(mendata$forearm,model$residuals)
plot(mendata$wrist,model$residuals)
#------------------------------

model1 <- lm (density^-4 ~ age + weight + height + neck + 
                +                  chest + abdomen + hip + thigh + knee + 
                +                  ankle + biceps + forearm + wrist, data = mendata)
