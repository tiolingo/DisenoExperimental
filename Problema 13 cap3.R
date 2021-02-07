A=c(15,18,13,12)
B=c(17,21,11,16)
C=c(23,19,25,22)
D=c(28,32,34,31)
E=c(45,51,57,48)


df=data.frame(A=A,B=B,C=C,D=D,E=E,D=D)
df=stack(df)

names(df)=c("Y","Trat")
df

boxplot(Y~Trat,data=df)

modelo=aov(Y~Trat,data=df)
summary(modelo)

tk=TukeyHSD(modelo)
tk
plot(tk)

1-pf(68.06,4,15)

qqnorm(modelo$residuals)
qqline(modelo$residuals)

shapiro.test(modelo$residuals)

library("car")
leveneTest(Y~Trat,data=df)

plot(modelo$residuals)
plot(modelo$fitted.values,modelo$residuals)
