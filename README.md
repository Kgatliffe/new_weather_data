# new_weather_data

So I have divided the file into Denver and Crested Butte (I chose Crested Butte for being the snowiest city in the state). I did a quick cleanup changing the Na values to zero in rain and snow. My initial regression implies rain may be better than snow, and Denver may be better than Crested Butte. 

Things to Do:

Yes Lee, the time variable is awful. The dt and dt_iso though are units of time and we might be able to do something with them. dt is "Time of data calculation, unix, UTC" and dt_iso is "Date and time in UTC format."

Write three questions and email them to Audrey tomorrow evening.

Go to Friday office hours (I am working but may try to take off, we need to touch base with Audrey).

My Plan:

So my idea is to set up a model for one of the cities where we predict inches of either rain or snow based on previous conditions. I’m thinking we look at conditions at -3 hours, -6 hours, -9 hours, -12 hours. It’s also possible that we can regress deltas … the temperature does tend to drop sharply before a snow storm and humidity should increase before a rainstorm (since what is a rainstorm but 100% humidity?).

I want to hear your thoughts though. Look at the data and think what we can do. Audrey said it’s ok if our project isn’t particularly significant as long as we do the math right.

Thanks! I need to die now. 

Nobody owes me anything monetarily, don’t worry about that. 

Good night! 

Kathleen

P.S. they didn’t give me any documentation per se (they didn’t even list the city names or lat and lon!) but you can go to 

https://openweathermap.org/history-bulk

for information. 
