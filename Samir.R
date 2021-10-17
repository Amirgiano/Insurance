library(tidyverse)
library(dplyr)
library(plotly)
df= read.csv('Insurance data.csv')

df = df %>% mutate(retire= factor(retire,levels = c(0,1), labels= c('No','Yes')))
str(df)

plot= df %>% plot_ly(x=~income,y=~coverage,z=~claim_amount,color=~retire, alpha=0.7, colors = c('#BF382A', '#0C4B8E'))
plot = plot %>% add_markers()
plot

barplot= 

df$incident_date <- as.Date(df$incident_date, "%m/%d/%Y") 
df$fraudulent = factor(df$fraudulent, levels= c(0,1), labels=c('No','Yes'))
df$claim_type = factor(df$claim_type, levels=c(1,2,3,4,5))
str(df)

df %>% ggplot()+
  geom_point(aes(incident_date,log(claim_amount),col=claim_type,alpha=0.8,shape=fraudulent))
  

                     