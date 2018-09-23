rm(list=ls())
#install.packages("dplyr")
library(dplyr)

setwd("/Users/dingxuanzhang/Google\ Drive/Probability\ and\ Statistics/Statistics/Machine\ Learning\ and\ Functional\ Data\ Analysis/Machine\ Learning/Project/Project\ 1")
load("/Users/dingxuanzhang/Google\ Drive/Probability\ and\ Statistics/Statistics/Machine\ Learning\ and\ Functional\ Data\ Analysis/Machine\ Learning/Project/FinalDat.rda")

## create wind direction variable
directions <-c("N","NNE","NE","ENE","E","ESE","SE","SSE","S","SSW","SW","WSW","W","WNW","NW","NNW","SN")
deg <- c(0,11.25,33.75,56.25,78.75,101.25,123.75,146.25,168.75,191.25,213.75,236.25,258.75,281.25,303.75,326.25,348.75,360)
FinalDat$wind_dir <- cut(FinalDat$wind_deg, deg, labels = directions,right = FALSE)
FinalDat$wind_dir_1h_Den <- cut(FinalDat$wind_deg_1h_Den, deg, labels = directions, right = FALSE)
FinalDat$wind_dir_3h_Den <- cut(FinalDat$wind_deg_3h_Den, deg, labels = directions, right = FALSE)
FinalDat$wind_dir_6h_Den <- cut(FinalDat$wind_deg_6h_Den, deg, labels = directions, right = FALSE)
FinalDat$wind_dir_12h_Den <- cut(FinalDat$wind_deg_12h_Den, deg, labels = directions, right = FALSE)
FinalDat$wind_dir_24h_Den <- cut(FinalDat$wind_deg_24h_Den, deg, labels = directions, right = FALSE)

#change the label SN to N
FinalDat$wind_dir[FinalDat$wind_dir=="SN"] <- c("N")
FinalDat$wind_dir_1h_Den[FinalDat$wind_dir_1h_Den=="SN"] <- c("N")
FinalDat$wind_dir_3h_Den[FinalDat$wind_dir_3h_Den=="SN"] <- c("N")
FinalDat$wind_dir_6h_Den[FinalDat$wind_dir_6h_Den=="SN"] <- c("N")
FinalDat$wind_dir_12h_Den[FinalDat$wind_dir_12h_Den=="SN"] <- c("N")
FinalDat$wind_dir_24h_Den[FinalDat$wind_dir_24h_Den=="SN"] <- c("N")

#creating weather main indicator
FinalDat$weather_main_1h_Den_Dummy <- ifelse(FinalDat$weather_main_1h_Den==3 | FinalDat$weather_main_1h_Den==5 |FinalDat$weather_main_1h_Den== 7 | FinalDat$weather_main_1h_Den==8 | FinalDat$weather_main_1h_Den== 10 |FinalDat$weather_main_1h_Den== 11| FinalDat$weather_main_1h_Den==12, 1, 0)
FinalDat$weather_main_3h_Den_Dummy <- ifelse(FinalDat$weather_main_3h_Den==3 | FinalDat$weather_main_3h_Den==5 |FinalDat$weather_main_3h_Den== 7 | FinalDat$weather_main_3h_Den==8 | FinalDat$weather_main_3h_Den== 10 |FinalDat$weather_main_3h_Den== 11| FinalDat$weather_main_3h_Den==12, 1, 0)
FinalDat$weather_main_6h_Den_Dummy <- ifelse(FinalDat$weather_main_6h_Den==3 | FinalDat$weather_main_6h_Den==5 |FinalDat$weather_main_6h_Den== 7 | FinalDat$weather_main_6h_Den==8 | FinalDat$weather_main_6h_Den== 10 |FinalDat$weather_main_6h_Den== 11| FinalDat$weather_main_6h_Den==12, 1, 0)
FinalDat$weather_main_12h_Den_Dummy <- ifelse(FinalDat$weather_main_12h_Den==3 | FinalDat$weather_main_12h_Den==5 |FinalDat$weather_main_12h_Den== 7 | FinalDat$weather_main_12h_Den==8 | FinalDat$weather_main_12h_Den== 10 |FinalDat$weather_main_12h_Den== 11| FinalDat$weather_main_12h_Den==12, 1, 0)
FinalDat$weather_main_24h_Den_Dummy <- ifelse(FinalDat$weather_main_24h_Den==3 | FinalDat$weather_main_24h_Den==5 |FinalDat$weather_main_24h_Den== 7 | FinalDat$weather_main_24h_Den==8 | FinalDat$weather_main_24h_Den== 10 |FinalDat$weather_main_24h_Den== 11| FinalDat$weather_main_24h_Den==12, 1, 0)
#fix Dataset
#fix(FinalDat)

## Graphics
#install.packages("tidyverse", dependencies = T)
library(tidyverse)
names(FinalDat)

str(FinalDat$weather_main_1h_Den_Dummy)
