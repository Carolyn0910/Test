# 2. Skript #

# load packages
#library(ggplot2)
.libPaths("/c/Users/Carolyn/AppData/Local/Temp/RtmpMHA8FF/downloaded_packages")
library(tidyverse)

# read in data
dat <- read.csv("data.csv")

colnames(dat) <- c("Season", "Depth_m", "O2_uM", "Add_data")

# create plot of oxygen by depth
O2_plot <- quickplot(data=dat,
                     x=O2_uM, 
                     y=Depth_m, 
                     colour=Season, 
                     main="Saanich Inlet: Seasonal oxygen depth profile")

# save the plot
ggsave("O2_plot.png")