# README
Technologies

Ruby on Rails
Action Cable
Geocoder
httparty
materialize
redis
cloudinary
postgreSQL
Heroku

API's

setlistfm
google maps

Links

Heroku
https://secret-caverns-45572.herokuapp.com/

Features
-User authentication
-Instant messaging via Action Cable using Redis as database.
-Geolocation, distance between members.
-Ability to search for concerts worldwide using setlistfm api.
-Ability to add attended concerts
-Can connect with other users if attended same concert.

User stories

-As a user I would like to update my profile with all the gigs that I have attended.
-As a user I would like to see the locations of these gigs on a map.
-As a user I would like to meet other people that have attended the same gig as me.
-As a user I would like to message other users that attended the same gig.
-As a user I would like to see the proximity of other users to me.

Where next

-Action cable message notifications and user presence.
-Ability to meet with users for future gigs.

How to get it setup locally

-Clone the repo from github to your computer.
-cd into the repo
-Open in text editor, active redis gem.
-Run bundle
-Run rails server
-Go to localhost 3000.
