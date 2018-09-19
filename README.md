# new_weather_data

The file is divided into Denver and Crested Butte (I chose Crested Butte for being the snowiest city in the state). I did a quick cleanup changing the Na values to zero in rain and snow. The only source documentation is at: https://openweathermap.org/history-bulk

Things to Do:

Convert Unix UTC times to Denver standard times (I suggest creating a new column of Denver standard time). 

Write three questions and email them to Audrey Wednesday.

Go to Friday office hours (Leo and Lee).

Choose a question to pursue. Should we get Audrey's input first?

I calculate that the records for 3,6,9, and 12 will be found by subtracting,

Observations:

We can stratify the data to randomly select a higher precentages of yes/ no (since our yeses are dwarfed by our nos) in our test set (re Erin).

We can easily create columns for daily average, maximum, minimum, 75 percentile, deltas, etc. Other summary data might be trickier.

Either logit or ridge/lasso would be great with this data set.

Wind direction is not indicative when converted to rectangular coordinates. Might be a good idea to try it as categorical (N, NE, E, SE, S, etc) but not a priority. 

Unix time is the number of seconds since January 01 1970 in UTC time. UTC has no daylight savings time. The current Colorado time zone is UTC-6.

I calculate that the records for 3, 6, 9, 12, and 24 hours will be found by subtracting,

delta 3: 10800,  delta 6: 21600, delta 9: 32400, delta 12: 43200, delta 24 86400.
