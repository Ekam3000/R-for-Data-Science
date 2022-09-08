#1

x<-c(0,1,2,3,4)
px<-c(0.41,0.37,0.16,0.05,0.01)

sum(x*px)
weighted.mean(x,px)
c(x%*%px) # matrix multiplication hoga..px initially a row matrix , %*% will convert px to a column matrix


#2

ft<-function(t){t*(0.1*exp(-0.1*t))}
integrate(ft,0,Inf) #0 lower limit # inf upper limit 


#3

x<-c(0,1,2,3)
px<-c(0.1,0.2,0.2,0.5)

ft2<-function(x)
{
  -18+12*x+(3-x)*2
}
ev=sum(x*px)
ft2(ev)


#4

#first moment
ft_first<-function(x){
  x*(0.5*exp(-abs(x)))
}
first<-integrate(ft_first,1,10)
first
#second moment
ft_second<-function(x){
  (x**2)*(0.5*exp(-abs(x)))
}
second<-integrate(ft_second,1,10)
second

#mean
meanx<-first$value
print(meanx)

#variance
var<-second$value-(meanx**2)
var


#5
ft5<-function(x)
{
  sqrt(x)*(3/4)*((1/4)^(sqrt(x)-1))
}

y<-c(ft5(1),ft5(4),ft5(9),ft5(16),ft5(25))
first<-sum(y)
first

ft5(3^2)*3


ft6<-function(x)
{
  (sqrt(x)*sqrt(x))*(3/4)*((1/4)^(sqrt(x)-1))
}
y1<-c(ft6(1),ft6(4),ft6(9),ft6(16),ft6(25))
second<-sum(y1)
second

var<-second-(first^2)
var


