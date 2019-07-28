library(tidyverse)
library(tibble)
library(lubridate)

interviews <- read_csv('data/SAFI_clean.csv',na='NULL')

dim(interviews)
nrow(interviews)
ncol(interviews)

head(interviews)
tail(interviews)

names(interviews)

str(interviews)
summary(interviews)

# Create
friends_data <- data_frame(
  name = c("Nicolas", "Thierry", "Bernard", "Jerome"),
  age = c(27, 25, 29, 26),
  height = c(180, 170, 185, 169),
  married = c(TRUE, FALSE, TRUE, TRUE)
)

data('iris')
class(iris)
head(iris,6)
my_data <- as_data_frame(iris)

options(tibbe.print_max=Inf)

interviews[1,1] # as a vector
interviews[1,6] # as a vector
interviews[,1] # as a vector
interviews[1] # as a data.frame
interviews[1:3,7] # as a vector
interviews[3,] # as a data.frame
head_interviews <- interviews[1:6,]
1:10
10:1
interviews[,-1]
interviews[-c(7:131),]
interviews['village'] # as a data frame
interviews[,'village'] # as a data frame
interviews[['village']] # as a vector
interviews$village # as a vector

interviews_100 <- interviews[100,]
interviews_last <- interviews[nrow(interviews),]
tail(interviews)
interviews_middle <- interviews[round(nrow(interviews)/2),]
interviews_middle <- interviews[ceiling(nrow(interviews)/2),]
interviews_head <- interviews[-(7:nrow(interviews)),]

respondent_wall_type <- factor(c('earth','cement','cement','earth'))

levels(respondent_wall_type)
nlevels(respondent_wall_type)
respondent_wall_type <- factor(respondent_wall_type,levels=c('earth','cement'))
levels(respondent_wall_type)
levels(respondent_wall_type)[2] <- 'brick'
levels(respondent_wall_type)

respondent_wall_type
as.character(respondent_wall_type)
as.numeric(respondent_wall_type)

year_fct <- factor(c(1990,1983,1977,1998,1990))
as.numeric(year_fct)
as.character((year_fct))
as.numeric(as.character(year_fct))

year_fct
levels(year_fct)
as.numeric((levels(year_fct)))
as.numeric(levels(year_fct))[year_fct]

affect_conflicts <- interviews$affect_conflicts
affect_conflicts <- as.factor(affect_conflicts)
plot(affect_conflicts)

affect_conflicts <- interviews$affect_conflicts
affect_conflicts[is.na(affect_conflicts)] <- 'undetermined'
affect_conflicts <- as.factor((affect_conflicts))
plot(affect_conflicts)

affect_conflicts <- interviews$affect_conflicts
affect_conflicts[is.na(affect_conflicts)] <- 'undetermined'
affect_conflicts <- factor(affect_conflicts,levels = c('never','once','more_once','frequently','undetermined'))
levels(affect_conflicts)[3] <- 'more than once'
plot(affect_conflicts)

levels(affect_conflicts)

dates <- interviews$interview_date
str(dates)
interviews$day <- day(dates)
interviews$month <- month(dates)
interviews$year <- year(dates)
