#1
a<-pbinom(9,12,1/6)
b<-pbinom(6,12,1/6)
print(a-b)

#2
pnorm(84,72,15.2, lower.tail = F)

#3
dpois(0,5)
print(ppois(50,50)-ppois(47,50))

#4
dbinom(3,5,17/250)

#5
x= 1:31
v<-pbinom(x,31,0.447)
t<-dbinom(x,31,0.447)
plot(x,v)
plot(x,t)

print("Mean :")
print(31*0.447)

 print("Variance :")
print(31*0.447*(1-0.447))
print("SD :")
print(sqrt(31*0.447*(1-0.447)))
