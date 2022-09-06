#question 1
folder <- 'D:/users 1/downloads/college/DS/LAB'
df <- read.csv(file.choose(folder),header =1)
df
head(df,10)
print(colnames(df))


#question 2
colnames(df) <- c("year", "job", "date", "category", "guest_name")
head(df)



install.packages("tidyverse")
library("tidyverse")
#question 3
select(df,year,date,guest_name)
#question 4
select(df,job:guest_name)
#question 5
filter(df,actor=="ABC")
#question 6
arrange(df,desc(date))
#question 7
mutate(df,experience=date)


#q1
MYURL='https://raw.githubusercontent.com/fivethirtyeight/data/master/daily-show-guests/daily_show_guests.csv'
C=read.csv(MYURL)
C
