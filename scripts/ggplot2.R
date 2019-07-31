library(tidyverse)
library(ggplot2)

interviews_plotting <- read_csv('data_output/interviews_plotting.csv')

ggplot(data=interviews_plotting,
       aes(x=no_membrs,y=number_items))+
  geom_point(alpha=0.5)

ggplot(data=interviews_plotting,
       aes(x=no_membrs,y=number_items))+
  geom_jitter(aes(color=village),
              alpha=0.5)

ggplot(data=interviews_plotting,
       aes(x=village,y=rooms))+
  geom_jitter(aes(color=respondent_wall_type))

ggplot(data=interviews_plotting,
       aes(x=respondent_wall_type,y=rooms))+
  geom_violin(alpha=0)+
  geom_jitter(alpha=0.5,color='tomato')

ggplot(data=interviews_plotting,
       aes(x=respondent_wall_type,y=liv_count))+
  geom_boxplot(alpha=0)+
  geom_jitter(aes(color=memb_assoc),
              alpha=0.5)

ggplot(data=interviews_plotting,
       aes(x=respondent_wall_type))+
  geom_bar(aes(fill=village),
           position = 'dodge')

percent_wall_type <- interviews_plotting %>% 
  filter(respondent_wall_type!='cement') %>% 
  count(village,respondent_wall_type) %>% 
  group_by(village) %>% 
  mutate(percent=n/sum(n)) %>% 
  ungroup()

ggplot(data=percent_wall_type,
       aes(x=respondent_wall_type,y=percent))+
  geom_bar(stat='identity',
           position='dodge')+
  ylab('Percent')+
  xlab('Wall Type')+
  ggtitle('Proportion of wall type by village')+
  facet_wrap(~ village)+
  theme_bw()+
  theme(panel.grid=element_blank())

percent_memb_assoc <- interviews_plotting %>% 
  filter(!is.na(memb_assoc)) %>% 
  count(village,memb_assoc) %>% 
  group_by(village) %>% 
  mutate(percent=n/sum(n)) %>% 
  ungroup()

ggplot(percent_memb_assoc,
       aes(x=village,y=percent,fill=memb_assoc))+
  geom_bar(stat = 'identity',
           position = 'dodge')

percent_items <- interviews_plotting %>% 
  gather(items,items_owned_logical,bicycle:no_listed_items) %>% 
  filter(items_owned_logical) %>% 
  count(items,village) %>% 
  # add a column with the number of people in each village
  mutate(people_in_village=
           case_when(village=='Chirodzo'~39,
                     village=='God'~43,
                     village=='Ruaca'~49)) %>%
  mutate(percent=n/people_in_village)

ggplot(percent_items,
       aes(x=village,y=percent))+
  geom_bar(stat='identity',
           position='dodge')+
  facet_wrap(~ items)+
  labs(title='Percent of respondents in each village who owned tach item',
       x='Village',
       y='Percent of Respondents')+
  theme_bw()+
  theme()





  





