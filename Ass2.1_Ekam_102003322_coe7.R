install.packages("swirl")
packageVersion("swirl")
library(swirl)
rm(list=ls())

#1
A<-c(23,34,56,3,0,0)
B<-c("c","b","a")
print(A)
print(B)

#2
n<-as.integer(readline("Enter n"))
seq(1,n,0.6)

m<-as.integer(readline("Enter m"))
n<-as.integer(readline("Enter n"))
seq(m,n,0.6)

#3
seq.int(from = 1,to=50,length.out=10)

#4
p<-c(3,4,5)
for (i in 1:5)
  print(p)

#5
runif(8)

#6
C<-c(2, 3, 4, 5, 6, 7)
print(A+C)     

#7
D<-c(6,7)
print(A+D)

#8
for (i in C){
  print(sqrt(i))
}

#9
length(A)
length(B)
length(C)

