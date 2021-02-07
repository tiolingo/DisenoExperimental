Problema 16 cap2

x=c(1.81,1.97,1.93,1.97,1.85,1.99,1.95,1.93,1.85,1.87,1.98,1.93,1.96,2.02,2.07,1.92,1.99,1.93)
n=length(x)
media=mean(x)
std=sd(x)
media
std

tmin=qt(0.005,n-1)
tmax=qt(0.995,n-1)
tmin
tmax

media+tmin*std/sqrt(n)
media+tmax*std/sqrt(n)
tmax*std/sqrt(n)

boxplot(x)
