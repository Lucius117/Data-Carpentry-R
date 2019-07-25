# load required packages
install.packages('tidyverse')
library(tidyverse)


print('Hello,world')

area_hectares<-1.0

respondent_wall_type <- c("muddaub", "burntbricks", "sunbricks")
respondent_wall_type[2]

respondent_wall_type[c(3, 2)]

no_membrs <- c(3, 7, 10, 6)
no_membrs[c(TRUE, FALSE, TRUE, TRUE)]

no_membrs > 5
no_membrs[no_membrs > 5]
no_membrs[no_membrs < 3 | no_membrs > 5]
no_membrs[no_membrs >= 7 & no_membrs == 3]

possessions <- c("car", "bicycle", "radio", "television", "mobile_phone")
possessions[possessions == "car" | possessions == "bicycle"] # returns both car and bicycle


possessions %in% c("car", "bicycle", "motorcycle", "truck", "boat")

possessions[possessions %in% c("car", "bicycle", "motorcycle", "truck", "boat")]
