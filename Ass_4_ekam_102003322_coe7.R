#1
seq(1.3,5,by=0.3)
rep(1:4,times=5)
seq(14,0,by=-2)
rep(c(5,12,13,20),each=2)


#2
data(iris)
class(iris)
iris
dim(iris)
levels(iris$Species)


#3
sepal_length <- iris$Sepal.Length
mean(sepal_length)
mean(iris$Sepal.Width)
sd(iris$Sepal.Length)
sd(iris$Sepal.Width)

#b
Calyx.Width<-c()
for(i in iris$Sepal.Length){
  if(i < 5){
    Calyx.Width<-append(Calyx.Width,"short")
  }
  else{
    Calyx.Width<-append(Calyx.Width,"long")
  }
}
Calyx.Width
iris.class<-data.frame(iris,Calyx.Width)
iris.class

#4
str(mtcars)
names(mtcars)
#a
subset(mtcars,cyl>=5)
#b
head(mtcars, 10)
#c
mtcars[grep('^Honda', rownames(mtcars)),]
