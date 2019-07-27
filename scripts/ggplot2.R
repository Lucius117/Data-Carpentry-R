library(tidyverse)
library(ggplot2)

ggplot(data = interviews_plotting,
       aes(x = no_membrs, y = number_items))+
  geom_point()

ggplot(data = interviews_plotting,
       aes(x = no_membrs, y = number_items))+
  geom_jitter(alpha=0.4,color='blue')

ggplot(data = interviews_plotting, 
       aes(x = respondent_wall_type, 
           y = liv_count,
           color=memb_assoc))+
  geom_jitter(alpha=0.5,
              color='tomato',
              width = 0.2)+
  geom_boxplot(alpha=0)

ggplot(data = interviews_plotting, aes(x = respondent_wall_type)) +
  geom_bar()

ggplot(data = interviews_plotting, aes(x = respondent_wall_type)) +
  geom_bar(aes(fill = village))

ggplot(data = interviews_plotting, 
       aes(x = respondent_wall_type)) +
  geom_bar(aes(fill = village), 
           position = "dodge")+
  labs(x='Wall Type',y='Count')



