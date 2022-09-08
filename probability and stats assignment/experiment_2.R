v<- c("T","F");
sample(v,2,replace=TRUE,c(0.7,0.3))
#> sample(v,2,replace=TRUE,c(0.7,0.3))
#[1] "T" "T"
sample(v,2,replace=TRUE,c(0.5,0.5))
#> sample(v,2,replace=TRUE,c(0.5,0.5))
#[1] "T" "F"
sample(v,2,replace=FALSE,c(0.5,0.5))
#> sample(v,2,replace=FALSE,c(0.5,0.5))
#[1] "F" "T"
sample(v,4,replace=FALSE,c(0.5,0.5))
# cannot take a sample larger than the population when 'replace = FALSE'
sample(v,4,replace=TRUE,c(0.5,0.5))
#> sample(v,4,replace=TRUE,c(0.5,0.5))
#[1] "T" "F" "F" "T"
sample(v,4,replace=TRUE,c(0.8,0.2))
#> sample(v,4,replace=TRUE,c(0.8,0.2))
#[1] "T" "T" "F" "T"

#Q1
q1=c(rep('gold',20), rep('silver',30), rep('bronze', 50))
sample(q1,10) 

q2=c('success', 'failure') 
sample(q2,10, replace=T,prob=c(0.9,0.1)) 


#Q2
birthdays<-function(n){ 
  prob=1 
  #365/365 * 364/365 * 363/365 * 362/365 .......................... *345/365
  for(i in 1:n){ prob=prob*(365-(i-1))/365  
  } 
  # here upto this we have find the probability of no two students have birthday on same day 
  return (1-prob) # probability that two people in the room have the same birthday
}

#50 0.9
#30 0.7
#20 0.4114
#23 0.5072
n=as.integer(readline("Enter value of n: ")) 
print(paste("Probability is: ", birthdays(n)))  

#b
no=1 
probab=0 
while(probab<=0.5){ 
  probab=birthdays(no)
  no=no+1 
} 
paste0("Smallest value for n is: ",no-1)



#q3
pC<-40 
pR<-20 
pCR<-85 
pRC<-(pCR*pR)/pC 
paste0("Probability of rain on cloudy day is: ", pRC)

#q4
#a
head(iris)
#b
str(iris)
#c
range(iris$Sepal.Length)
#d
mean(iris$Sepal.Length)
#e
median(iris$Sepal.Length)
#f
quantile(iris$Petal.Length) 
range(iris$Petal.Length) 
quantile(iris$Sepal.Length) 
range(iris$Sepal.Length) 
quantile(iris$Petal.Width) 
range(iris$Petal.Width) 
quantile(iris$Sepal.Width) 
range(iris$Sepal.Width)
#g,h
sd(iris$Sepal.Length) 
sd(iris$Sepal.Width) 
sd(iris$Petal.Length) 
sd(iris$Petal.Width) 
var(iris$Sepal.Length) 
var(iris$Sepal.Width) 
var(iris$Petal.Length) 
var(iris$Petal.Width)
#i
summary(iris)

#5
mode_func<- function(vec){ 
  uniq_vec<-unique(vec) 
  tb<-tabulate(match(vec, uniq_vec)) 
  print(uniq_vec[tb==max(tb)]) 
}
vec<-c(1,2,3,6,5,2,1,4,2,1,1,6,1,4,2,2,2,2,2,2)
mode_func(vec)
