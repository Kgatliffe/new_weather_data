#Stepwise#

glm(formula = as.factor(Question) ~ temp_24h_Den + pressure_24h_Den + 
      weather_main_24h_Den_Dummy + humidity_24h_Den, family = binomial(), 
    data = dat.train24)

glm(formula = as.factor(Question) ~ pressure_12h_Den + weather_main_12h_Den_Dummy + 
      temp_12h_Den + humidity_12h_Den + weather_main_24h_Den_Dummy + 
      clouds_all_12h_Den, family = binomial(), data = dat.train12)

glm(formula = as.factor(Question) ~ weather_main_6h_Den_Dummy + 
      pressure_6h_Den + temp_6h_Den + humidity_6h_Den + clouds_all_6h_Den + 
      weather_main_24h_Den_Dummy + weather_main_12h_Den_Dummy + 
      wind_speed_6h_Den, family = binomial(), data = dat.train6)

glm(formula = as.factor(Question) ~ weather_main_3h_Den_Dummy + 
      pressure_3h_Den + humidity_3h_Den + temp_3h_Den + clouds_all_3h_Den + 
      weather_main_6h_Den_Dummy + weather_main_12h_Den_Dummy + 
      wind_speed_3h_Den + weather_main_24h_Den_Dummy, family = binomial(), 
    data = dat.train3)

glm(formula = as.factor(Question) ~ weather_main_1h_Den_Dummy + 
      pressure_1h_Den + weather_main_6h_Den_Dummy + temp_1h_Den + 
      humidity_1h_Den + clouds_all_1h_Den + weather_main_12h_Den_Dummy + 
      wind_speed_1h_Den + weather_main_3h_Den_Dummy + weather_main_24h_Den_Dummy, 
    family = binomial(), data = dat.train1)

#Backwards#

glm(formula =as.factor(Question.1) ~ temp_24h_Den + pressure_24h_Den + humidity_24h_Den + 
  weather_main_24h_Den_Dummy, family = binomial(), data = dat.train12)

glm(formula =as.factor(Question.1) ~ temp_12h_Den + pressure_12h_Den + humidity_12h_Den + 
  clouds_all_12h_Den + weather_main_12h_Den_Dummy + weather_main_24h_Den_Dummy, 
  family = binomial(), data = dat.train12)

glm(formula =as.factor(Question.1) ~ temp_6h_Den + pressure_6h_Den + humidity_6h_Den + 
  wind_speed_6h_Den + clouds_all_6h_Den + weather_main_6h_Den_Dummy + 
  weather_main_12h_Den_Dummy + weather_main_24h_Den_Dummy, 
  family = binomial(), data = dat.train12)

glm(formula =as.factor(Question.1) ~ temp_3h_Den + pressure_3h_Den + humidity_3h_Den + 
  wind_speed_3h_Den + clouds_all_3h_Den + weather_main_3h_Den_Dummy + 
  weather_main_6h_Den_Dummy + weather_main_12h_Den_Dummy + 
  weather_main_24h_Den_Dummy, family = binomial(), data = dat.train12)

glm(formula =as.factor(Question.1) ~ temp_1h_Den + pressure_1h_Den + humidity_1h_Den + 
  wind_speed_1h_Den + clouds_all_1h_Den + weather_main_1h_Den_Dummy + 
  weather_main_3h_Den_Dummy + weather_main_6h_Den_Dummy + weather_main_12h_Den_Dummy + 
  weather_main_24h_Den_Dummy, family = binomial(), data = dat.train12)

#Forward#

glm(formula =as.factor(Question.1) ~ temp_24h_Den + pressure_24h_Den + weather_main_24h_Den_Dummy + 
  humidity_24h_Den, family = binomial(), data = dat.train12)

glm(formula =as.factor(Question.1) ~ pressure_12h_Den + weather_main_12h_Den_Dummy + 
  temp_12h_Den + humidity_12h_Den + weather_main_24h_Den_Dummy + 
  clouds_all_12h_Den, family = binomial(), data = dat.train12)

glm(formula =as.factor(Question.1) ~ weather_main_6h_Den_Dummy + pressure_6h_Den + 
  temp_6h_Den + humidity_6h_Den + clouds_all_6h_Den + weather_main_24h_Den_Dummy + 
  weather_main_12h_Den_Dummy + wind_speed_6h_Den, 
  family = binomial(), data = dat.train12)

glm(formula =as.factor(Question.1) ~ weather_main_3h_Den_Dummy + pressure_3h_Den + 
  humidity_3h_Den + temp_3h_Den + clouds_all_3h_Den + weather_main_6h_Den_Dummy + 
  weather_main_12h_Den_Dummy + wind_speed_3h_Den + weather_main_24h_Den_Dummy, 
  family = binomial(), data = dat.train12)

glm(formula =as.factor(Question.1) ~ weather_main_1h_Den_Dummy + pressure_1h_Den + 
  weather_main_6h_Den_Dummy + temp_1h_Den + humidity_1h_Den + 
  clouds_all_1h_Den + weather_main_12h_Den_Dummy + wind_speed_1h_Den + 
  weather_main_3h_Den_Dummy + weather_main_24h_Den_Dummy, 
  family = binomial(), data = dat.train12)
