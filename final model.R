glm(formula = as.factor(Question.1) ~ temp_24h_Den + pressure_24h_Den + 
      weather_main_24h_Den_Dummy + humidity_24h_Den + rain_3h_24h_Den, 
    family = binomial(), data = dat.train24)

glm(formula = as.factor(Question.1) ~ pressure_12h_Den + weather_main_12h_Den_Dummy + 
      temp_12h_Den + humidity_12h_Den + weather_main_24h_Den_Dummy + 
      rain_3h_12h_Den + clouds_all_12h_Den + rain_1h_12h_Den, family = binomial(), 
    data = dat.train12, control = list(maxit = 50))