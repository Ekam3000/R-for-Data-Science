#1
A<- c(12,13,14,15,16)
A

#2
sum(A)

#3
prod(A)

#4
max(A)
min(A)

#5
range(A)


#6
mean(A)
var(A)
sd(A)


#7
B<- sort(A,decreasing=FALSE)
B
C<- sort(A,decreasing=TRUE)
C


#8
my_matrix <- matrix(1:12,nrow=3,ncol=4)
my_matrix


#9
rbind(A,B,C)
cbind(A,B,C)


#10
x<-rbind(A,B,C)
x[2:3,]

#11
D<-c(3,6,7,8,9)
y<-cbind(A,B,C,D)
y[,1]
y[,4]




