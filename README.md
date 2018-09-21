# new_weather_data

The file is divided into Denver and Crested Butte (I chose Crested Butte for being the snowiest city in the state). I did a quick cleanup changing the Na values to zero in rain and snow. The description of variables is:

Parameters:

coord

coord.lon City geo location, longitude

coord.lat City geo location, latitude

weather (more info Weather condition codes)

weather.id Weather condition id

weather.main Group of weather parameters (Rain, Snow, Extreme etc.)

weather.description Weather condition within the group

weather.icon Weather icon id

base Internal parameter

main

main.temp Temperature. The temperature is provided only in Kelvins

main.pressure Atmospheric pressure (on the sea level, if there is no sea_level or grnd_level data), hPa

main.humidity Humidity, %

main.temp_min Minimum temperature at the moment. This is deviation from temperature that is possible for large cities and megalopolises geographically expanded (use these parameter optionally). The temperature is provided only in Kelvins.

main.temp_max Maximum temperature at the moment. This is deviation from temperature that is possible for large cities and megalopolises geographically expanded (use these parameter optionally). The temperature is provided only in Kelvins.

main.sea_level Atmospheric pressure on the sea level, hPa

main.grnd_level Atmospheric pressure on the ground level, hPa

wind wind.speed Wind speed. Unit: meter/sec.

wind.deg Wind direction, degrees (meteorological)

clouds clouds.all Cloudiness, %

rain rain.3h Rain volume for the last 3 hours

snow snow.3h Snow volume for the last 3 hours

dt Time of data calculation, unix, UTC

id City ID

name City name

cod Internal parameter


Things Done:

Removed empty and uneeded columns - Leo
Replaced NAs with zeros in rain/snow accumulation - Kat
Converted temp to Celsius - Leo

Things Being Done:

Write script to model on prior values - Lee

Go to Friday office hours (Leo? and Kat).

Checking for invalid records - Kat

Things to Do:

Logistical model code

Convert Unix UTC times to MST (UTC -7) in a separate column

Create training and test sets.

Questions:

Do we need any day long summary data (max, min, mean etc)?

Observations:

We can stratify the data to randomly select a higher precentages of yes/ no (since our yeses are dwarfed by our nos) in our test set (re Erin).

We can easily create columns for daily average, maximum, minimum, 75 percentile, deltas, etc. Other summary data might be trickier.

Either logit or ridge/lasso would be great with this data set.

Wind direction is not indicative when converted to rectangular coordinates. Might be a good idea to try it as categorical (N, NE, E, SE, S, etc) but not a priority. 

Unix time is the number of seconds since January 01 1970 in UTC time. UTC has no daylight savings time. The current Colorado time zone is UTC-6.

I calculate that the records for 3, 6, 9, 12, and 24 hours will be found by subtracting,

delta 3: 10800,  

delta 6: 21600, 

delta 9: 32400, 

delta 12: 43200, 

delta 24 86400.
