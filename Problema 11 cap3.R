df=read.csv("Sprays.csv")
df

str(df)

df$M

boxplot(Y~Marca,data=df)

modelo=aov(Y~Marca,data=df)
summary(modelo)

tk=TukeyHSD(modelo)
tk

qqnorm(modelo$residuals)
qqline(modelo$residuals)

shapiro.test(modelo$residuals)

library("car")
leveneTest(Y~Marca,data=df)


plot(modelo$residuals)
abline(h=0)

plot(modelo$fitted.values, modelo$residuals)
abline(h=0)