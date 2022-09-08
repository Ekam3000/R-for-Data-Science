
# question 1
vect=c(5,10,15,20,25,30)
#num=scan() # in scan we can either input stream of number or just single number
#print(max(vect))
print(paste("the maximum value is :",max(vect))) # paste me hum combination of strings le sakte
#print(min(vect))
print(paste("the maximum value is :",max(vect)))


#question 2
num = as.integer(readline("enter the value of num:"))
#num= as.integer(readline(prompt ="Enter the number"))

#as.numeric
#as.complex
#as.date
fact =1
for(i in 1:num)
{
  fact= fact*i
}
print(fact)


#question 3
num = as.integer(readline("enter the value of num:"))
a=0
b=1
for(i in 1:num)
{
  c=a+b
  print(a)
  a=b
  b=c
  
}

#question 4
num1 = as.integer(readline("enter the value of num1:"))

num2 = as.integer(readline("enter the value of num2:"))

add= function(a,b)
{
  print(a+b)
}
subtract = function(a,b)
{
  print(a-b)
}

multiply= function(a,b)
{
  print(a*b)
}
divide = function(a,b)
{
  if(b==0)
  {
    print(-1)
  }else
  {
    print(a/b)
  }
}
#add(num1,num2)
#subtract(num1,num2)
#multiply(num1,num2)
#divide(num1,num2)
print("select the operator")
print("+: Add")
print("-: Subtract")
print("*: multiply")
print("/: Divide")
choice = readline(prompt="select from +,-,*,/")
result= switch(choice,"+"=add(num1,num2),"-"=subtract(num1,num2),"*"=multiply(num1, num2),"/"=divide(num1,num2))

#question 5
plot(1:10, type ='l', col ="green", main="STRAIGHT LINE")
x=c(4,3,4,4,3,3,2)
mylabel <- c("SE","CAO","ML","Prob","NP","DS","Cyber")
pie(x,mylabel,main="5th SEM")
barplot(x,names.arg=mylabel)
