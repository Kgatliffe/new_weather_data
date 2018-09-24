glm(formula = as.factor(Question.1) ~ temp_24h_Den + pressure_24h_Den + 
      weather_main_24h_Den_Dummy + humidity_24h_Den + rain_3h_24h_Den, 
    family = binomial(), data = dat.train24)