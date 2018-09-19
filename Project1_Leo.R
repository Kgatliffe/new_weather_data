rm(list=ls())
library(ggplot2)
setwd("/Users/dingxuanzhang/Google\ Drive/Probability\ and\ Statistics/Statistics/Machine\ Learning\ and\ Functional\ Data\ Analysis/Machine\ Learning/Project/Project\ 1")
load("/Users/dingxuanzhang/Google\ Drive/Probability\ and\ Statistics/Statistics/Machine\ Learning\ and\ Functional\ Data\ Analysis/Machine\ Learning/Project/Project\ 1/Newdenver.rda")
Denver <- data.frame(Denver)

#install.packages("lubridate")
library(lubridate)

summary(Denver)

##drop all the NA column
na_flag <- apply(is.na(Denver), 2, sum)
Denver <- Denver[,which(na_flag == 0)]
Denver <- Denver[,-3:-6]
Denver <- Denver[,c(-4,-5,-18)]
Denver$temp <- Denver$temp-273.15
Denver$temp_max <- Denver$temp_max-273.15
Denver$temp_min <- Denver$temp_min-273.15
summary(Denver)
typeof(Denver[,2])
Denver2013Sep <- Denver[1:440,]
d <- Denver[,2]
list(year(d)==2014)
DenverXmas <- Denver[which(month(d)==12 & day(d)==18:25),]

##
ggplot(DenverXmas)+geom_point(aes(x=dt_iso, y=temp))
