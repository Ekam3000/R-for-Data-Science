x=c(5,9,2,14,-4)
x[1]
x[c(2,4)]
x[2:length(x)]
x[7:5]
sum(x)
mean(x)
seq(from, to ,by)
seq(2,6,0.4)
seq(from=2,to=6,by=0.4)
seq(from=-1, to=1, length=6) # problem # inbetween distance between element ye kudh print kare ga.
rep(5,3)
rep(-1:3,each=2)
x[-3] # excluding index 3
x[-c(1,4)]
x=c(1,2,3)
y=c(2,2,2)
x+y
x-y
x*y
x/y
a=c(1,2,3)
b=c(2,3) # problem
a+b
a-b
a*b
a/b
# logical operations
## <=, <, >=,>,!=,==
x=c(5,9,2,14,-4)
y=c("Hello","How do you do")
# to built a matrix
#[1 2 3 4
  
#  5 6 7 8
  
 # 9 10 11 12]
x=c(1,5,9,2,6,10,3,7,11,4,8,12)
A= matrix(x,3,4)
A
A[2,3] #given index of element
A[2:3,] # row 2 and row 3
A[,2:3] # 2nd column and 3rd column
A[1:2 , 2:3] # 1st second row , 2nd 3rd column 
A[2:3,c(1,4)] # 2nd 3 rd row , element 
# if there is no continity between elements then we will use vectors
diag(3)
diag(1:3)
y=c(1,2,3,4,5,6,7,8,9,10,11,12)
B=matrix(y,3,4)
B
A%*%B
det(B)
t(B)
solve(B)
diag(B)
cbind(A,B)
rbind(A,B)
#list
x=list(1:3,"Hello",TRUE,list(1:2,5))
x[[3]]
x[[4]][[1]]
books =data.frame(author =c("Ross","robort","ekam"),year=c(2000,2002,2005),publishers=c("asus","classmate","R.D"))

# even or odd
num= as.integer(readline("enter the num:"))
iseven = function(a){
  if(a %% 2==0){
    print("even")
  }else{
    print("odd")
  }
}
iseven(num)


# factorial
num= as.integer(readline("enter the num:"))
fact=1;
for(i in 1:num){
  fact=fact*i
}
print(fact)

## is prime or not
num= as.integer(readline("enter the num:"))
flag=1
for(i in 2:(num-1)){
  if(num==2)
  {
    break
  }
  if((num%%i)==0){
    print("not prime")
    flag=0
    break
  }
  
}
if(flag==1){
  print("prime")
}

plot(1,3)
 plot(1:10)
 plot(1,3)
  x= c(1,5,2)
y=c(3,6,-1)
 plot(x,y)
 plot(c(1,5,2),c(3,6,-1))
 plot(x,y,col="red")
 plot(x,y,type="l")
plot(1,3,cex=2)
 x1=c(5,7,8,7,2,2,9)
 y1=c(99,86,87,111,103,87,67)
 x2=c(2,3,8,1,15,8,12)
  y2=c(100,105,84,105,90,99,90)
plot(x1,y1,main="observation of cars",xlab="car age",ylab="car speed",col="red")

#barplot()
#pie()

