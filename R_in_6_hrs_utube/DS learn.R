#1
print('Hello R Program')

#2
18+4
18-4
18*4
10/2
4.5/2
2**3
2^3
8%/%3
14%%4
-8%/%3
-8/3
8%/%-3
8/-3
TRUE+TRUE
TRUE+FALSE
FALSE+FALSE

#3
x<-10
typeof(x)
mode(x)
storage.mode(x)
class(x)

#4
x<-10
class(x)
is.integer(x)
x<-as.integer(5)
class(x)
is.integer(x)

x<-3+4i
class(x)

x<-TRUE
class(x)

x<-'Jack'
class(x)
is.character(x)
x<-as.character(4)
class(x)

#5
x<-10
x=10
assign('x',10)
pi
letters
LETTERS
month.name
month.abb

#6
#x<-10

#7
x<-10
y<-20

x<y
x<=y
x>y
x>=y
x==y
x!=y

x<-'Hello'
y<-'World'

x<y
x<=y
x>y
x>=y
x==y
x!=y

#8
x<-TRUE
y<-FALSE
x&y
x&&y
x|y
x||y
!x
!y

10&10
10&0
10|0
!10
!0

#9
x<-1:10
x
x<-10:1
x
x<-1:10*2
x
x<-5
1:x
1:x-1
1:(x-1)
x<-seq(1,5)
x
x<-seq(5)
x
x<-seq(1,10,2)
x
x<-seq(1,10,length=4)
x
x<-seq(10,0,-2)
x

#10
#vector coercion
x<- c(10,'John',20,30,75)
x # we will get a vector of same data type .. in this a character data class

x<- c(10,TRUE) #when the vector contain element of the type number
x # true is given value as 1

x<- c('john',TRUE)
x # now the value TRUE will be written as string 'TRUE'

# explicitly converting one data type to another
x<- 0:5 #x is of type numeric data type
x
class(x)
as.logical(x) # x becomes logical now
as.character(x) #converted a integer vector into a character  vector

x<- c('John','jack','Bob')
class(x)
as.character(x) # all NA will be printed
as.logical(x) # all NA will be printed

#logical vectors
# the result of applying relational operators always produces a logical value.. so they are commonly known as logical operators
x <- c(10,45,30,50,35)
x
y<- x>30
y
y<- x>30 & x<40
y

x <- c(10,45,30,50,35)
y<-  c(20,15,25,65,5)
x<y
x>30
which(x>30)  # will give the indexes that makes the condition true
x[which(x>30)] # will give the elements


# factors 
# used to represent categorical data
#treated as integer vector, having a label
#factors are self describing
#for ex -> 
# male (rather than 0)
#females (rather than 1)
# created using a factor() function

x<- factor(c('Male','Female','Male','Male','Female'))
x
table(x)


# Mathematical functions in R
x <- c(4.258,-3.853,5.457,7.504)
abs(x) 
ceiling(x)
floor(x)
round(x,2) # every value of x is rounded to two decimal places
trunc(x) # the trunc function will simply remove the . decimal place values
x <- c(16,36,30,81,25)
sqrt(x) # the sqrt function will always return the floating point numbers
exp(x)
log(x) # this computes natural logarithm
log(x,base=2)
log2(x)# same result as above
log(x,base =10)
log10(x)

x <- c(4,3,6)
factorial(x)

# random numbers in R
x <- rnorm(10) # 10 random numbers with mean 0 and sd 1
x
x <- rnorm(10,mean=20, sd =1)
x


# matrix
# matrices are 2-dimentional vectors
# dimentional attributes is of length 2
#i.e they have rows and columns
# matrix contains elements of same type
# matrix are created using matrix() function
# attributes
#.nrow : number of rows
#.ncol: logical value (default is false)
# .byrow : logical value( default is false)
m <- matrix(nrow=2, ncol=3)
m
dim(m)
m <- matrix(c(1,2,3,4,5,6))
m#  matrix created col wise
m <- matrix(c(1,2,3,4,5,6),nrow=2, ncol=3)
m #  matrix created col wise
m <- matrix(c(1,2,3,4,5,6),nrow=2, ncol=3,byrow =TRUE)
# converting vector to matrix
m <- c(1,2,3,4,5,6)
m
dim(m)<- c(2,3)
m

m<- matrix(1:6,nrow =2, ncol =3)
m
dim(m)
nrow(m)
ncol(m)
length(m)

# matrix diag()
m <- matrix(4,3,3)
m
m <- diag(1,3,3) # diag matrix with 3 rows and 3 cols
m
m <- diag(5,3,3)
m
m <- diag(1:3) # dont need to provide rows and cols
m
# to extract the diag matrix
diag(m)
m <- matrix(4,3,3)
diag(m)

# matrix naming Rows and Columns
m<- matrix(c(2,3,4,0,1,2,-1,-3,5),nrow=3,ncol=3,byrow=TRUE)
m
rownames(m) <- c(1,2,3)
colnames(m)<- c('A','B','C')
m

#matrix indexing
A <- matrix(c(2,3,4,0,1,2,-1,-2,5,8,6,-3),nrow=4,ncol=3,byrow=TRUE)
A
A[1,2]
A[3,] # result in accessing the entire 3rd row
A[,2]
A[-3,] # 3rd row will not be accessed
A[2,3]=9;
A
A[1:3,1:2]
A[1:3,-2]
A[-3,2:3]
A[,c(1,3)] # 1st and 3rd col
# deleting matrix rows, or column
A =A[,-2]
A
A= A[-3,-1]
A
A <- matrix(c(2,3,4,0,1,2,-1,-2,5,8,6,-3),nrow=4,ncol=3,byrow=TRUE)
# accessing the diagonal matrix, since A is not a square matrix, so 2 1 5 will be captured
diag(A)
# accessing elements beyond the number of rows or column index
A[5,5]=10
A

# rbind and cbind()
A <- matrix(c(2,3,4,0,1,2,-1,-2,5),nrow=3,ncol=3,byrow=TRUE)
A
B<-rbind(A,c(10,11,12))
B
B<- matrix(c(10,11,12),nrow=1,ncol=3,byrow=TRUE)
B
C<-rbind(A,B)
C
# similar for cbind

#error producing code
A <- matrix(c(2,3,4,0,1,2,-1,-2,5),nrow=3,ncol=3,byrow=TRUE)
A
B<- matrix(c(10,11,12,13),nrow=1,ncol=4,byrow=TRUE)
B
C<- rbind(A,B)

# matrix operations
A <- matrix(c(1,2,3,4,5,6,8,9,1),nrow=3,ncol=3,byrow=TRUE)
B <- matrix(c(3,1,2,4,2,1,5,1,2),nrow=3,ncol=3,byrow=TRUE)
A
B
A+B
A%*% B # matrix multiplication
A/B
t(A)
solve(A) #return the in verse of the square matrix if its invertible

#matrix specific functions
A<- matrix(1:9,3,3)
A
rowSums(A)
colSums(A)
rowMeans(A) # the mean of every row is calculayted and displayed
apply(A,1,sum) # 1 means row sum , sum of the rows are computed
apply(A,2,sum) #2 means col sum


#lists
#.Lists : are also collecting of data and another kind of data storage
# can contain elements of any type of R object
#elements of list not need be of same type
#list can be created using list() function
#the elements of the lists are of the type vector

rollno <- c(101,102,103)
snames<- c('John','Bob','Alice')
marks <- c(78.28,59.45,63.85)
students <- list(rollno,snames,marks)
students
students[1] # using single square bracket will return a list
students[[1]] # using double square brackets will return the elements of the list
students[[1]][2]

#list subset operator
rollno <- c(101,102,103)
snames<- c('John','Bob','Alice')
marks <- c(78.28,59.45,63.85)
students <- list('id'=rollno,'name'=snames,'scores'=marks)
students$id
students[c(1,3)]
students[c('id','scores')]


#list concatination
rollno <- c(101,102,103)
snames<- c('John','Bob','Alice')
marks <- c(78.28,59.45,63.85)
students <- list(rollno,snames,marks)
#concatination
age <- list(c(19,20,18))
students <- c(students, age)
students

#dataframes
#dataframes: are objects in R and used to store tabular data
#dataframes are just like objects
#components of lists must be vectors , but in dataframes columns may possibly be of different types
#list can be vectors of differnt lengths , but data frame must have all vectors of same length
#data frame can be created using data.frame() function
# data can be imported from various files types
#read.table()-> input data into dataframe using text files
#read.csv()-> import data from comma seperated files

# dataframe is an important data structure in R 
#specially for statistics,
#basic structure of a dataframe is that there is one
#observation per row,i.e it contains rows and each column represent a variable or an attribute
#or a measure or characteristics of observation


# creating  dataframe
id <- c(101,102,103)
name <- c('Bob','Alice','John')
marks<- c(78.25,59.45,63.85)
students <- data.frame(rollno,snames,marks)
students
#in this each data vector is treated as column in dataframe and corresponding elements as rows

# diff data list and dataframes
slist <- list(id,name,marks)
#each vector is treated as column in dataframe, whereas 
#each vector is treated as row in list
# in real life rading dtaa from dataframe is easy => compared to list

#dataframe indexing
id <- c(101,102,103)
name <- c('Bob','Alice','John')
marks<- C(78.25,59.45,63.85)
students <- data.frame(rollno,snames,marks)
students[2,]
students[2:3,]
students[,1]
students[2:3,1:2]
students[-2,-3]
students[2] # single index in dataframe represent column
students[c(1,3),c(2:3)]
students[[3]][1]
students$marks
students$marks[3]
students[[3]][2]<- 2400
students$marks[3]


# dataframe subset function
# subset function return a subset of dataframe which meets conditions
id <- c(101,102,103)
name <- c('Bob','Alice','John')
marks<- c(78.25,59.45,63.85)
students <- data.frame(rollno,snames,marks)
students
report <- subset(students, marks> 60)
report
report <- subset(students, marks> 60 & id <103)
report
report <- subset(students, marks> 60,select=c(name))
report
report <- subset(students, marks> 60,select=c(name,marks))
report
# to use sequences
report <- subset(students, marks> 60,select=name:marks)
report
report <- subset(students, marks> 60,select=-name)
report
#in this firstly condition is satisfied , then we have to choose which we have   to print if third condition is given

# dataframes rbind() and cbind()
0

report

id <- c ( 101 , 102 , 103 )
name <- c ( ' Bob ' , ' Alice ' , ' John ' )
marks <- c ( 78.25,59.45,63.85 )
students <- data.frame ( id , name , marks )
students
students <- rbind ( students , data.frame ( id = 104 , name = ' Jack ' , marks = 45.85 ) )
students
name <- c ( ' Bob ' , ' Alice ' , ' John ' )
marks <-c ( 78.25 , 59.45,63.85 )
students <- data.frame ( id , name , marks )
students
students <- cbind ( students , age = c ( 18,24,19))
students

#dataframe edit() function
id <- c ( 101 , 102 , 103 )
name <- c ( ' Bob ' , ' Alice ' , ' John ' )
marks <- c ( 78.25,59.45,63.85 )
students <- data.frame ( id , name , marks )
students
studentstable <- edit(students)
studentstable

#missing value
x <-c ( 10,4 , NA , 7,15 )
x
is.na ( x )
is.nan ( x )
x <-c ( 10,4 , NA , 7,NaN )
x
is.na ( x )
is.nan ( x )

x <-c ( 10,4 , NA , 7 , NA )
x
y <- is.na ( x )
y
x [ ! y ]

#missing value from data frame
id <-c ( 101 , 102 , 103 , 104 , 105 )
temperature <- c ( 25.8,34.2 , NA , 27.4,20.5 )
wind <- c ( 78 , 59 , 63,40,68 )
humidity <-c ( 25,45,85 , NA , 61 )
weather <- data.frame ( id , temperature , wind , humidity )
weather
weatherNA <- complete.cases ( weather )
weatherNA
weather [ weatherNA , ]

# data frames-> importing data from text files
#• Data is imported into dataframes using :
 # • read.table ( )
#read.table ( ) arguments :
 # file : name of the file ( mandatory argument )
#• header : logical value ( default is false )
#sep : separator ( default is space )
#• nrows : number of rows ( default is entire file )
#skip : number of rows to skip ( default is zero )
mydata <- read.table ( 'data.txt' )
mydata
mydata<-read.table ( 'data.txt' , header = TRUE )
mydata
mydata <- read.table ( 'data.txt' , header = TRUE , nrows = 5 )
mydata
mydata <- read.table ( 'data.txt' , header = TRUE , skip = 3 )
mydata

mydata<-read.table ( 'datadollar.txt' , header = TRUE )
mydata
mydata <- read.table('datadollar.txt',header=TRUE,sep='$')
mydata

#importing data from csv files
#*Data is imported into dataframes using:
#*read.csv()
mydata <- read.csv('sample.csv')
mydata

mydata <- readRDS('chicago.rds')
mydata

# importing data from internet
url.show( "http://softlect.in/datasets/sbuxPrices.csv")
mydata <- read.table('http://softlect.in/datasets/sbuxPrices.csv',sep=',',head=TRUE)
mydata

#importing data from clipboard

mydata <- read.table('clipboard') 
#after this line press ctrl+c
mydata

mydata <- read.table('clipboard',head=TRUE) 
#after this line press ctrl+c , now the first row is considered as header for column names
mydata

# now open csv file, as a file.. a csv file will be opened in rstudio as comma separated file
mydata <- read.table('clipboard',sep=',',head=TRUE) 
mydata

#exporting data to csv files
id <- c ( 101 , 102 , 103 )
name <- c ( ' Bob ' , ' Alice ' , ' John ' )
marks <- c ( 78.25,59.45,63.85 )
students <- data.frame ( id , name , marks )
students
write.csv(students,file='output.csv')

#dplyr -> provides intutive functionality for working with data tables
# the data frame is an important data structures in R for statistics, the basic structure for data frame is that they are observations for row and each column represents a variables/ measures 
# it simplyfies existing functionality in R
# the dplyr functions are very fast compared to the useful functions provided for data frames
# this package has functions that performs most common functions for data manipulation

# install the dylyr package
library(dplyr) # to load the package

# the select function 

mydata <- read.csv('murders.csv')
mydata
dim(mydata)
str(mydata) # will represent the structure of the mydata object
mydata[c(1,4,6)] # to display column 1, 4,6
mydata[c(state,population,murders)] # the names of the columns cannot be used within the c functions for data frames

# using select functions we can do this
names(mydata)
mysubdata <- select(mydata,state:population)
mysubdata
#or
mysubdata <- select(mydata,state,population,murders,gunmurders)
mysubdata

mysubdata <- select(mydata, -abb) #except abb column 
mysubdata

mysubdata <- select(mydata, -(abb:region)) #from abb column to region column
mysubdata
mysubdata <- select(mydata,-c(abb, region, population, gunownership) )
mysubdata

#filter function
library(dplyr)
mydata <- read.csv('murders.csv')
names (mydata)
mysubdata <- filter(mydata,murders>100)
mysubdata
mysubdatamurders <- select(mysubdata, state,murders) #mysubdatamurders , which satisfy the conditions murders > 100
mysubdatamurders 

#more complex condition
mysubdata <- filter(mydata,murders>100 & population < 10000000)
mysubdata
mysubdatamurders <- select(mysubdata, state,population,murders) #mysubdatamurders , which satisfy the conditions 
mysubdatamurders 

#arrange function 
library(dplyr)
mydata <- read.csv('murders.csv')
names(mydata)
mysubdata <- arrange(mydata,murders) # will arrange in ascending order
mysubdata
mysubdatamurders <- select(mysubdata, state,murders) 
mysubdatamurders 

# head function'
head(mysubdatamurders,5)
tail(mysubdatamurders,5)

#decreasing order desc()
mysubdata <- arrange(mydata,desc(murders)) # will arrange in ascending order
mysubdata
mysubdatamurders <- select(mysubdata, state,murders) 
mysubdatamurders 

#rename function
library(dplyr)
mydata <- read.csv('murders.csv')
names (mydata)
#mydata <- rename(mydata, abbrivation=abb) # the lhs represents the new name and right hand side represents old name
mydata <- rename(mydata, abbrivation=abb,homocide=murders) # for changing multiple column names
names (mydata)
mysubdata <- select(mydata, state, abbrivation,homocide)
mysubdata

# mutate function
library(dplyr)
mydata <- read.csv('murders.csv')
names (mydata)
mysubdata <- mutate(mydata,ratio=murders/population) # adding additional one column name
names(mysubdata) # will print ratio as the new column name
mysubdatamurders <- select(mysubdata, state,population,murders,ratio) 
mysubdatamurders 

#transmute print only the newly genrated column
library(dplyr)
mydata <- read.csv('murders.csv')
names (mydata)
mysubdata <- transmute(mydata,state=state ,ratio=murders/population)
names(transmute)
mysubdata


# group_by()  function
library(dplyr)
mydata <- read.csv('murders.csv')
names(mydata)
mysubdata <- group_by(mydata,region) # groups of 4 regions will be created 
mysubdata
summarize(mysubdata,sum(murders))
summarize(mysubdata,max(murders))
summarize(mysubdata,mean(murders))
summarize(mysubdata,median(murders))

#pipe operator
#%>%
library(dplyr)
mydata <- read.csv('murders.csv')
names (mydata)
mysubdata <- arrange(mydata,murders)
mysubdatamurders <- select(mysubdata, state,murders)
mysubdatamurders

# the pipeline function can be used to pass the result of one operation to the other
# it works on sequence of operations from left to right

arrange(mydata,murders) %>% select(state,murders)
arrange(mydata,murders) %>% select(state,murders) %>% head(3)
  

#data visualization in R
library(dplyr)
mydata <- read.csv('murders.csv')
mysubdata <- select(mydata, state, population,murders) # we will only use state , population and murders to demostrate plotting
barplot(mysubdata$population,
        xlab= 'states',
        ylab='population',
        main='States Vs Population',names.arg = mysubdata$state,col='blue') #plotting vertical graphs, its argument is always a numeric
#names.arg -> providing labels for each bar on the x-axis

barplot(mysubdata$murders,
        xlab= 'states',
        ylab='murders',
        main='States Vs murders',names.arg = mysubdata$state,col='blue') #plotting vertical graphs, its argument is always a numeric


#top five countries with highest murders
library(dplyr) =
mydata <- read.csv('murders.csv')
nysubdatasort <- arrange(mydata,desc(murders))
mysubdata <- select(mysubdatasort, state,population,murders)
nyhighdata <- head(mysubdata, 5)
barplot(myhighdata$murders ,
xlab='states',
ylab='murders',
main='States Vs Murders',
names.arg = myhighdataSstate,
col='blue')

#horizontal
library(dplyr)
mydata <- read.csv('murdersmini.csv')
myseldata <- select (mydata,state,murders)
barplot(myseldata$murders, horiz=TRUE,  xlab='Murders',ylab='States',main='States Vs Murders',col='blue',names.arg = myseldata$state)

#histogram

library(dplyr)
mydata <- read.csv('GeStock.csv')
mysubdata <- select (mydata,Date, Price)
hist(mysubdata$Price,
  xlab='stock Price',
main='stocks Data',
col='blue',
border='red',
breaks = 20) # y lebels breaks at 20 units







