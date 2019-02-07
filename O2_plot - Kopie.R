library(packrat)

#load packages
library(tidyverse)
# load data
dat <- read.csv("https://raw.githubusercontent.com/EDUCE-UBC/workshops_data_science/master/reproducible_research/data/data.csv")

colnames(dat) <- c("Season", "Depth_m", "O2_uM", "Add_data")

# create plot of oxygen by depth
O2_plot <- quickplot(data=dat,
                     x = O2_uM, 
                     y = Depth_m, 
                     colour=Season,
                     main="Saanich Inlet: Seasonal oxygen depth profile") #title of the plot

# save the plot
ggsave("O2_plot.png")

#source('O2_plot.R') in console shows if it runs




