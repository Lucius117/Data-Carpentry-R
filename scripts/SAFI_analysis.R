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


interviews <- read_csv('data/SAFI_clean.csv',na='NULL')

select(interviews,village,no_membrs,years_liv)
filter(interviews,village=='God')

interviews2 <- filter(interviews,village=='God')
interviews_god <- select(interviews2,no_membrs,years_liv)

interviews_god <- filter(interviews,village=='God')
interviews_god <- select(interviews_god,no_membrs,years_liv)

interviews_god <- select(
  filter(interviews,village=='God'),
  no_membrs,
  years_liv
)

interviews_god <- interviews %>% 
  filter(village=='God') %>% 
  select(no_membrs,years_liv)

interviews_memb_assoc <- interviews %>% 
  filter(memb_assoc=='yes') %>% 
  select(affect_conflicts,liv_count,no_meals)

interviews %>% 
  mutate(people_per_room=no_membrs/rooms)

interviews %>% 
  filter(!is.na(memb_assoc)) %>% 
  mutate(people_per_room)

interviews_total_meals <- interviews %>% 
  mutate(total_meals=no_membrs*no_membrs) %>% 
  filter(total_meals>20) %>% 
  select(village,total_meals)

interviews %>% 
  group_by(village) %>% 
  summarize(mean_no_membrs=mean(no_membrs))

interviews %>% 
  filter(!is.na(memb_assoc)) %>% 
  group_by(village,memb_assoc) %>% 
  summarize(mean_no_membrs=mean(no_membrs),
            min_membrs=min(no_membrs)) %>% 
  arrange(desc(min_membrs))

interviews %>% 
  count(village,sort=TRUE)

interviews %>% 
  count(no_meals)

interviews %>% 
  group_by(village) %>% 
  summarise(
    mean_no_membrs=mean(no_membrs),
    min_no_membrs=min(no_membrs),
    max_no_membrs=max(no_membrs),
    n=n()
  )

interviews %>% 
  mutate(month=month(interview_date),
         day=day(interview_date),
         year=year(interview_date)) %>% 
  group_by(year,month) %>% 
  summarize(max_no_membrs=max(no_membrs))
