itinerary
=========

## Intro
One of my hobbies is attempting to visit the highest point in every state.  This is called [highpointing](http://highpointers.org/).  In the HP community a common task is attemptting various records (eg, most in 24 hours, or fastest time to visit all states).  My fellow highpointer and I made frequent jokes about planning trips.  I made this site mainly as practice at Ruby on Rails and as a joke to my friend.

[http://hp-itinerary.herokuapp.com/create](http://hp-itinerary.herokuapp.com/create)

## Use
It should be pretty easy to figure out, but I'll go over the details here.

You enter state abbreviations in the top box, in the order they will be traveled.  Use any separator(space, comma, semicolon, etc).  Click on the dots on the map (red for HPs, green for cities) to add them to the end of the list.  Cities are abbreviated with 3 letter airport codes.  You can use full names, but only if there are no spaces in the name.  There are currently 5 built in trips with buttons to add them to the box.  These include two of my trips (NE, SE).

After entering states and cities in order, you can click 'create' to be taken to the itinerary page.

Clear will clear out the box, and reverse will reverse the order of the points in it.

## Options
There are some options below the main box, all can be left as their defaults.

Daily start/end time is the time of the day you will begin or stop hiking or driving (use either 24 hour time or 'p' for pm hours).  For example if you want your days to start at 4am and end at 9pm, you would enter 4 in the start box, and either 21, 9p, or '9 pm' in the end box.  If you enter a start time after the end time it will just swap them.

Driving/Hiking time scale is what to multiply the default data by.  The driving times come from Google directions, which I find to be slightly slow, so I might use 0.9 there.  The hiking times aren't great, they just assume 2 mph average hiking speed.  I compared those times to my hikes and they are reasonably close.

Overhead time is the amount of minutes to add to every hike.  Consider this to be the time taken to get out of the car and stop at summit for picture.  Somewhat confusingly it will be doubled for most hikes, because it is considered one way.

## Display an itinerary
The display page should also be pretty self-explanatory.  It lists the day, with the day count and actual date.  The code can handle any starting date, but there is currently no place to enter one other than today, mainly because I didn't feel like parsing dates in javascript.  There are two types of task, drive or hike.  For each it lists the start and end time (in 24 hour format), the duration (in decimal hours), and distance (miles).  There is also a link.  For drives it's to Google Directions, and for hikes it's a Google search for the peak and [summitpost.org](http://summitpost.org/), which should take you directly to the page for most.

Note here that (RT) means round trip, and that is what most hikes will be.  The exception will be if the HP is either the starting or ending terminus.

Also note that it does seem to handle multi day drives.  Although, I'd be careful to double check them.

At the end is total distance and time for the drive and hike.  There is no overall Google Directions link because the syntax of the URL was more annoying than I felt like dealing with right now.

You can link directly to the URL given for an itinerary:
[http://hp-itinerary.herokuapp.com/display/PHL;CT;RI;MA;NH;ME;VT;NY;NJ;PHL](http://hp-itinerary.herokuapp.com/display/PHL;CT;RI;MA;NH;ME;VT;NY;NJ;PHL)

## Bugs
Probably the biggest negative is that it does not support Alaska and Hawaii.   You can't drive to Hawaii, and probably wouldn't to Alaska, so they don't really lend themselves to pregenerated itineraries.  I thought about adding some base time like 12 hours for each to represent a flight, but then I needed to account for time to nearest airport, which is pretty significant for some of the HPs.
