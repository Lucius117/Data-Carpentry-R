library(tidyverse)
install.packages('tidyverse')

interviews <- read_csv("data/SAFI_clean.csv", na = "NULL")
interviews
View(interviews)
dim(interviews)
nrow(interviews)
ncol(interviews)
head(interviews)
tail(interviews)
names(interviews)
str(interviews)
summary(interviews)


interviews[1]
1:3
1:5
interviews[1:3, 7]
interviews[3, ]
interviews[1:6,]
interviews[, -1]

interviews_no_id<-interviews[,-1]
interviews_no_id
interviews

interviews_100 <- interviews[100, ]
interviews_100
n_rows <- nrow(interviews)
n_rows
interviews_last <- interviews[n_rows, ]
interviews_last

interviews_last <- tail(interviews, 1)
interviews_last

interviews_middle <- interviews[n_rows / 2, ]
interviews_middle

n_rows/2

interviews_middle <- interviews[ceiling(n_rows / 2), ]
interviews_middle

rooms <- c(2, 1, 1, NA, 4)
mean(rooms)

max(rooms)
mean(rooms, na.rm = TRUE)
max(rooms, na.rm = TRUE)
rooms[!is.na(rooms)]

na.omit(rooms)

interviews_100<-interviews[100,]
n_rows<-nrow(interviews)
interviews_last<-interviews[n_rows,]

interviews_last<-tail(interviews,n=1)

middle<-n_rows/2
interviews[middle,]

interviews_head<-interviews[-(7:n_rows),]

na.omit(rooms)

floor_type <- factor(
  c("earth", "cement", "cement", "earth"),
  levels=c('earth','cement'))


levels(floor_type)[2]<-'brick'
levels(floor_type)

nlevels(floor_type)

as.character(floor_type)

year_fct <- factor(
  c(1990, 1983, 1977, 1998, 1990)
  )

as.numeric(year_fct)
as.numeric(as.character(year_fct))

as.numeric(levels(year_fct))

interviews
affect_conflicts<-interviews$affect_conflicts
affect_conflicts <- as.factor(affect_conflicts)

plot(affect_conflicts)
affect_conflicts[is.na(affect_conflicts)]<-'undertermined'
