'''Is 202 open? Lets find out'''
import datetime
import cgi

#create list of classes in 202 - list of touples?
#touple - (weekday, startTime, endTime, lastDay)
classes = [(1, datetime.time(hour=10, minute=10), datetime.time(hour=12, minute=45), datetime.date(2019, 5, 8)),
(1, datetime.time(hour=13, minute=25), datetime.time(hour=14, minute=15), datetime.date(2019, 5, 8)),
(3, datetime.time(hour=10, minute=10), datetime.time(hour=12, minute=45), datetime.date(2019, 5, 8)),
(3, datetime.time(hour=13, minute=25), datetime.time(hour=14, minute=15), datetime.date(2019, 5, 8))]

def is202Open():
    #store current DotW/Time
    currDotW = datetime.datetime.today().weekday()
    currTime = datetime.datetime.now().time()

    #loop through the list of classes
    for cl in classes:
        #if the current date is after the last day of classes
        if datetime.datetime.now().date() > cl[3]:
            #remove the class from the list/continue
            continue

        #if the current day of the week is the class day of the week
        if currDotW == cl[0]:
            #is the curr time in between the start and stop time?
            if currTime >= cl[1] and currTime <= cl[2]:
                return "no"

    #end of the loop, return "yes"
    return "yes"

#calling CGI stuff in python
print("Content-Type: text/html")
print()
print("<title>Is MCB 202 open?</title>")
print("<H>" + is202Open() + "</H>")
