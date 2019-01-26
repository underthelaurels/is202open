# Is 202 open?
Code for a basic website that tells the user if the room McBryde 202 is open.
(Aka, doesn't currently have a class in it.)

# Notes on the Nature of McBryde 202
McBryde 202 is the place to be for members of the CS class of 2019 subgroup, The Forge. It is our default study space, especially since the CS lounge is almost always crowded and loud. Many members of The Forge are familiar with accidentally walking into 202 when a class is in session, and our website prevents this from happening in the future. Awkwardness must be avoided at all costs. Especially if the only costs involve programming.

# Implementation
We're running our website on an AWS EC2 Instance. You can tell because of the URL. Tbh this is what took the most time. There are so many steps to setting it up properly. Idiotically, we first tried to run a python script through it. Calculations for our "yes" and "no" output are now written in a simple JavaScript file, which is called from 'index.html'. The CSS is just a fun bonus that we wanted to play around with a bit.

# Plans Moving Forward
The current implementation does not automatically update the classroom schedule. Neither of us are familiar with website scraping, so we plan to ask the administrater of http://info.classroomav.vt.edu/RoomSchedule.aspx for an API to work with. If not, entries into the JavaScript file that runs the calculations must be input manually. We also hope to move the class schedule from JavaScript to MySQL. Since we don't know a way to directly get information from the website, there isn't much merit to implementing this strategy at the moment. At least with a MySQL database, we could have classes remove themselves once the current semester is over. But oh well...
