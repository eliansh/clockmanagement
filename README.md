# README

ruby 2.7.2p137 
rails 6.1.0
yarn 1.22.5
npm 6.14.9

Clock Management Application:

I used devise https://github.com/heartcombo/devise for implementing the teacher authentication.
The teacher can:
- create a new profile/ sign up
- modify/update the profile
- delete the profile
- log in/sign out
- the log in and sign up are only possible for the teachers that are not already signed in
- the sign out and edit profile is only possible for the teachers that are already signed in
once the teacher logged in to the Clock Management Application
- they can create new trackings (clock in or clock out)
- they can modify trackings (clock in or clock out)
- they can show the trackings (view the information)
- they only have access to their own trackings
- they cannot modify other teachers trackings
- if they attempt to modify/delete a record while they are not logged in they will be redirected to log in page
- they can delete trackings (clock in or clock out entries)
- they can view the list of their trackings

the database schema is very simple has two table teachers and trackings
each teacher has many trackings and each tracking belongs to a teacher
the foreign key on trackings table is teacher_id
the primary key of teachers table is id and is the id

if I work another day on this application I'd:
- add more validations on the data inserted by the user
- add date picker on the view for selecting time and date
- modify the data format for storing time in db
- modify the time/date to be shown in clients timezone instead of utc
- modify the db schema for each clock in I'd consider a clock out so each tracking would have both clock in/clock out events so I could only let the teacher to insert valid data (ex. I'd check if the associated clock in time is less than clock out or if there is already a clock in for the clock out event ..)

if I work another day on this application I'd:
- still work on improving the design
- add more checks and validations
- add more features to the application such as:
 -- calculating the duration of each tracking
 -- add a description section to db and to the forms so the user can assign a description to the tracking event
 -- add a feature so the user can insert a new event only by clicking a button, lets press a button which will take the now time and automatically creates a new event for the user
 -- improve the db schema and model and remove the unesessary fields from the view
