
t=which(Denver$temp==-273.15)
for (i in 1:length(t))
{
  s<-t[i]
  Denver$temp[s]<-(Denver$temp[s+1]+(Denver$temp[s-1]-Denver$temp[s+1])/2)
}

t=which(Denver$temp_max==-273.15)
for (i in 1:length(t))
{
  s<-t[i]
  Denver$temp_max[s]<-(Denver$temp_max[s+1]+(Denver$temp_max[s-1]-Denver$temp_max[s+1])/2)
}

t=which(Denver$temp_min==-273.15)
for (i in 1:length(t))
{
  s<-t[i]
  Denver$temp_min[s]<-(Denver$temp_min[s+1]+(Denver$temp_min[s-1]-Denver$temp_min[s+1])/2)
}

t=which(Denver$humidity==0)
for (i in 1:length(t))
{
  s<-t[i]
  Denver$humidity[s]<-(Denver$humidity[s+1]+(Denver$humidity[s-1]-Denver$humidity[s+1])/2)
}

t=which(Denver$humidity==0)
for (i in 1:length(t))
{
  s<-t[i]
  Denver$humidity[s]<-(Denver$humidity[s+1]+(Denver$humidity[s-1]-Denver$humidity[s+1])/2)
}

t=which(Denver$pressure==0)
for (i in 1:length(t))
{
  s<-t[i]
  Denver$pressure[s]<-(Denver$pressure[s+1]+(Denver$pressure[s-1]-Denver$pressure[s+1])/2)
}

summary(Denver)
summary(t)

