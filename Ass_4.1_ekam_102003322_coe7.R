#1

PatientID<-c(1,2,3,4)
dates<-c('10/15/2009', '11/01/2009', '10/21/2009', '10/28/2009')
AdmDate<-as.Date(dates, '%m/%d/%Y')
AdmDate
Age<-c(25,34,28,52)
Diabetes<-c('Type1', 'Type2', 'Type1', 'Type1')
Status<-c('Poor', 'Improved', 'Excellent', 'Poor')
df<-data.frame(PatientID, AdmDate, Age, Diabetes, Status)
df


#2

# a
sub1<-subset(df, select=c(PatientID, Age))
sub1
# b
sub2<-subset(df, Diabetes=='Type1')
sub2
# c
table(df$Status)
# d
summary(df)
# e
mean(df$Age)
# f
ent=1
while(ent){
  pID=as.integer(readline("Enter Patient ID: "))
  adm=readline("Enter Admission Date: ")
  ag=as.integer(readline("Enter Age: "))
  diab=readline("Type of Diabetes: ")
  stat=readline("Status of patient: ")
  
  df_raw<-data.frame(PatientID=pID, AdmDate=adm, Age=ag, Diabetes=diab, Status=stat)
  df<-rbind(df, df_raw)
  df
  
  ent=as.integer(readline("Enter 1 to add more data else 0: "))
}

#3
MyList<-c('My First List')
Age<-c(12,14,16,20)
mat<-matrix(1:5,nrow=5,ncol=1)
s=c('first', 'second', 'third')
criteria<-list(Age, mat, s)
MyList
criteria
Age

