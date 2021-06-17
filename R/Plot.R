library(tidyverse)
library(googlesheets4)
gs4_deauth()
Germination <- read_sheet("1V9cyJaz49f2Vg3YAuSOsSO3zJtVKD5CuwIYTAWJxQDs")
#Germination <- read_csv("R_Graphing/Germination_Data.csv")

ggplot(data = Germination, mapping = aes(x = Day, y = Percent_Germination)) +
  #geom_line(mapping=aes(color=Species, linetype=Treated),size=1.5) + 
  geom_line(mapping=aes(linetype=Treated),size=1.5) + 
  geom_point()+
  scale_y_continuous(breaks=seq(0,100,10),labels=seq(0,100,10))+
  scale_x_continuous(breaks=seq(2,9,1),labels=seq(2,9,1))+
facet_wrap(~Species,nrow=1)+
  theme_bw()+
  theme(axis.title = element_text(size = 26, face = 'bold'),
        axis.text = element_text(size = 22, face = 'bold', color = 'black'),
        axis.text.x = element_text(size = 26, face = 'bold', color = 'black'),
        plot.title = element_text(size = 28, face = 'bold', margin = margin(0, 0, 10, 0)),
        panel.border = element_blank(),
        axis.line = element_line(size = 1, color = 'black'),
        axis.ticks = element_line(size = 1, color = 'black'),
        axis.ticks.length = unit(8, 'pt'),
        plot.margin = margin(0.5, 0.5, 0.5, 0.5, 'cm'),
        panel.grid.major.x = element_blank(),
        panel.grid.minor.x = element_blank(),
        panel.grid.major.y = element_line(size=0.5,color='dark grey'),
        panel.grid.minor.y = element_line(size=0.5, color='dark grey'),
        #legend.position = 'none',
        strip.background = element_blank(),
        strip.placement = "outside",
        strip.text = element_text(size=18, face='bold'))
#Saved as 1100x700

