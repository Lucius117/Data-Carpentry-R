# load required packages
install.packages('tidyverse')
install.packages('lintr')

library(lintr)
library(tidyverse)

print('Hello,world')

area_hectares<-1.0
(area_hectares<-1.0)

2.47*area_hectares

area_acres <- 2.47*area_hectares
area_hectares <- 50

no_membrs <- c(3,7,10,6)
respondent_wall_type <- c("muddaub", "burntbricks", "sunbricks")

length(no_membrs)
length(respondent_wall_type)
class(no_membrs)
class(respondent_wall_type)
str(no_membrs)
str(respondent_wall_type)

possessions<-c('bicycle','radio','television')
possessions <- c(possessions,'mobile_phone')
possessions <- c('car',possessions)

typeof(possessions)
class(possessions)

num_char <- c(1,2,3,'a')
class(num_char)

num_logical <- c(1,2,3,TRUE)
class(num_logical)

char_logical <- c('a','b','c',TRUE)
class(char_logical)

trick <- c(1,2,3,'4')
class(trick)

num_logical <- c(1,2,3,TRUE)
char_logical <- c('a','b','c',TRUE)
combined_logical <- c(num_logical,char_logical)
class(combined_logical)

respondent_wall_type <- c('muddaub','burntbricks','sunbricks')
respondent_wall_type[2]
respondent_wall_type[c(3,2)]
more_respondent_wall_type <- respondent_wall_type[c(1,2,3,2,1,3)]
more_respondent_wall_type

no_membrs <- c(3,7,10,6)
no_membrs[c(TRUE,FALSE,TRUE,TRUE)]

no_membrs>5
no_membrs[no_membrs>5]
no_membrs[no_membrs<3|no_membrs>5]
no_membrs[no_membrs>=7&no_membrs==3]

possessions <- c('car','bicycle','radio','television','mobile_phone')
possessions[possessions=='car'|possessions=='bicycle']
possessions %in% c('car','bicycle','motorcycle','truck','boat')
possessions[possessions %in% c('car','bicycle','motorcycle','truck','boat')]

rooms <- c(2,1,1,NA,4)
mean(rooms)
mean(rooms,na.rm = TRUE)
max(rooms)
max(rooms,na.rm=TRUE)

rooms[!is.na(rooms)]
na.omit(rooms)
rooms[complete.cases(rooms)]

rooms <- c(1,2,1,1,NA,3,1,3,2,1,1,8,3,1,NA,1)
rooms_no_na <- rooms[!is.na(rooms)]
rooms_no_na <- na.omit(rooms)
rooms_no_na <- rooms[complete.cases(rooms)]
median(rooms,na.rm=TRUE)
rooms_above_2 <- rooms_no_na[rooms_no_na>2]
length(rooms_above_2)
                     