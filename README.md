# new_weather_data

Updating with my latest thoughts. I will clean this up soon. 


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

Hey!

So I was just being so military to break through the malaise and get us going in a clear direction. I totally expect that things will evolve with your findings. This is still a group project!  If you encounter problems please alert the group as soon as possible. I will be around all day today (except for class and office hours) but I will primarily be working on Linear Programming until my LP model is working, bleh.


Some observations/ findings this morning:

-> So Unix time is the number of seconds since January 01 1970 in UTC time. UTC has no daylight savings time. The current Colorado time zone is UTC-6.

I calculate that the records for 3,6,9, and 12 will be found by subtracting,

delta 3: 10800 
delta 6: 21600
delta 9: 32400
delta 12: 43200

https://www.unixtimestamp.com/

-> Inches of snowfall or rainfall may not be as good an output as the group categorical value snow or rain.

-> We have a much larger set of no snow (or no rain) than snow or rain. Is there an allowable data selection technique that would allow us to randomly select higher for our proposed outcome? I feel like there is but I’m drawing a blank. I’m going to see if Erin has an answer.

-> Audrey can’t meet when I’m done with work Friday, and as the only Friday Stat tutor I’m not able to leave for her office hours. 

Thanks!

Kathleen 

If our y is snow/ no snow (or precipitation / no precipitation ... we might lump snow and rain together) then we can run a logistic model which I think might be much better than linear regression.

K

re: Erin: we can stratify the data to randomly select a higher precentages of yes/ no (since our yeses are dwarfed by our nos).
